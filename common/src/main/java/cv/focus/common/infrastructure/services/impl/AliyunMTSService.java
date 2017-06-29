package cv.focus.common.infrastructure.services.impl;

import com.aliyun.api.mts.mts20140618.request.SubmitJobsRequest;
import com.aliyun.api.mts.mts20140618.request.SubmitSnapshotJobRequest;
import com.aliyun.api.mts.mts20140618.response.SubmitJobsResponse;
import com.aliyun.api.mts.mts20140618.response.SubmitSnapshotJobResponse;
import com.taobao.api.ApiException;
import cv.focus.common.infrastructure.services.TranscodeService;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.Validate;
import org.apache.log4j.Logger;
import org.bytedeco.javacpp.BytePointer;
import org.bytedeco.javacpp.Pointer;
import org.bytedeco.javacpp.PointerPointer;
import org.bytedeco.javacpp.avformat;
import org.springframework.stereotype.Service;

import java.net.URLEncoder;

import static org.bytedeco.javacpp.avformat.AVFormatContext.AVFMT_FLAG_CUSTOM_IO;
import static org.bytedeco.javacpp.avformat.av_find_input_format;
import static org.bytedeco.javacpp.avformat.av_register_all;
import static org.bytedeco.javacpp.avformat.avformat_alloc_context;
import static org.bytedeco.javacpp.avformat.avformat_open_input;
import static org.bytedeco.javacpp.avformat.avio_alloc_context;
import static org.bytedeco.javacpp.avutil.av_malloc;

/**
 * 阿里云MTS转码服务
 * 
 * @author liuruichao
 * Created on 2016-02-23 14:08
 */
@Service
public class AliyunMTSService extends AliyunBaseService implements TranscodeService {
    private final Logger logger = Logger.getLogger(AliyunMTSService.class);

    @Override
    public VideoTransCodeDTO submitTranscodeJob(String url, final byte[] fileData, boolean isPrivacy) {
        Validate.notBlank(url);

        String mtsInPutBucket = null;
        if (isPrivacy) {
            mtsInPutBucket = ossPrivacyBucket;
        } else {
            mtsInPutBucket = ossBucket;
        }
        // 视频转码
        String outputOSSObjectKey = "videos/" + generateKey(FilenameUtils.getBaseName(url) + ".mp4");
        SubmitJobsRequest request = new SubmitJobsRequest();
        request.setInput("{" +
                "\"Bucket\":\"" + mtsInPutBucket + "\"," +
                "\"Location\":\"oss-cn-hangzhou\"," +
                "\"Object\":\"" + URLEncoder.encode(url) + "\"" +
                "}");
        request.setOutputBucket(mtsInPutBucket);
        request.setOutputs("[{" +
                "\"OutputObject\":\"" + outputOSSObjectKey + "\"," +
                "\"TemplateId\":\"" + mtsVideoTemplateId + "\"," +
                //"\"WaterMarks\":[{" +
                //"\"InputFile\":{" +
                "\"Bucket\":\"" + mtsInPutBucket + "\"," +
                //"\"Location\":\"oss-cn-hangzhou\"," +
                //"\"Object\":\"example-logo.png\"" +
                //"}," +
                //"\"WaterMarkTemplateId\":\"88c6ca184c0e47098a5b665e2a126797\"" +
                //"}]," +
                "}]");
        request.setPipelineId(mtsPipelineId);
        try {
            SubmitJobsResponse response = aliyunClient.execute(request);
            if (!response.isSuccess()) {
                throw new RuntimeException("SubmitJobsRequest failed");
            }
            String transCodeJobId = response.getJobResultList().get(0).getJob().getJobId();

            // 生成视频预览图片
            long time = 7000;
            try {
                long videoSeconds = getVideoSeconds(fileData);
                logger.info("video seconds: " + videoSeconds);
                if (videoSeconds <= 7) {
                    time = 1000;
                }
            } catch (Exception e) {
                logger.error("get video duration error: ", e);
                time = 1000;
            }
            SubmitSnapshotJobRequest snapshotJobRequest = new SubmitSnapshotJobRequest();
            String previewImgKey = "images/" + generateKey(FilenameUtils.getBaseName(url) + ".jpg");
            snapshotJobRequest.setInput("{" +
                    "\"Bucket\":\"" + mtsInPutBucket + "\"," +
                    "\"Location\":\"oss-cn-hangzhou\"," +
                    "\"Object\":\"" + URLEncoder.encode(url) + "\"" +
                    "}");
            snapshotJobRequest.setSnapshotConfig("{" +
                    "\"OutputFile\": {" +
                    "\"Bucket\": \"" + mtsInPutBucket + "\"," +
                    "\"Location\": \"oss-cn-hangzhou\"," +
                    "\"Object\": \"" + previewImgKey + "\"" +
                    "}," +
                    "\"Time\": \"" + time + "\"" +
                    "}");
            SubmitSnapshotJobResponse snapshotJobResponse = aliyunClient.execute(snapshotJobRequest);
            if (!snapshotJobResponse.isSuccess()) {
                throw new RuntimeException("SubmitSnapshotJobRequest failed");
            }
            return new VideoTransCodeDTO(generatePublicUrl(outputOSSObjectKey, isPrivacy),
                    transCodeJobId, generatePublicUrl(previewImgKey, isPrivacy));
        } catch (ApiException e) {
            logger.error("AliyunMTSService.submitTranscodeJob()", e);
        }
        return null;
    }

    private long getVideoSeconds(final byte[] fileData) {
        av_register_all();

        avformat.Read_packet_Pointer_BytePointer_int reader = new avformat.Read_packet_Pointer_BytePointer_int() {
            @Override
            public int call(Pointer pointer, BytePointer buf, int bufSize) {
                buf.position(0);
                buf.put(fileData);
                return fileData.length;
            }
        };

        avformat.Seek_Pointer_long_int seeker = new avformat.Seek_Pointer_long_int() {
            @Override
            public long call(Pointer pointer, long offset, int whence) {
                return fileData.length;
            }
        };

        int inputBufferSize = fileData.length;
        BytePointer inputBuffer = new BytePointer(av_malloc(inputBufferSize));

        avformat.AVIOContext ioContext = avio_alloc_context(inputBuffer, inputBufferSize, 0, null, reader, null, seeker);

        avformat.AVInputFormat format = av_find_input_format(inputBuffer);
        avformat.AVFormatContext formatContext = avformat_alloc_context();
        formatContext.iformat(format);
        formatContext.flags(formatContext.flags() | AVFMT_FLAG_CUSTOM_IO);
        formatContext.pb(ioContext);

        avformat_open_input(formatContext, "", format, null);
        avformat.avformat_find_stream_info(formatContext, (PointerPointer) null);
        long seconds = formatContext.duration() / 1000000;
        avformat.avformat_close_input(formatContext);
        return seconds;
    }
}
