package cv.focus.common.infrastructure.services.impl;

import com.aliyun.oss.model.ObjectMetadata;
import cv.focus.common.infrastructure.services.StorageService;
import cv.focus.common.infrastructure.services.TranscodeService;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.Validate;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Date;

/**
 * 阿里云OSS存储服务
 *
 * @author liuruichao
 * Created on 2016-01-27 17:09
 */
@Service
public class AliyunOSSStorageService extends AliyunBaseService implements StorageService {
    private final Logger logger = Logger.getLogger(AliyunOSSStorageService.class);
    @Resource
    private TranscodeService transcodeService = new AliyunMTSService();

    @Override
    public String putFile(String fileName, InputStream fileInputStream, boolean isPrivacy) throws IOException {
        return putFile(fileName, IOUtils.toByteArray(fileInputStream), isPrivacy);
    }

    @Override
    public String putFile(String fileName, File file, boolean isPrivacy) throws IOException {
        return putFile(fileName, new FileInputStream(file), isPrivacy);
    }

    @Override
    public String putFile(String fileName, byte[] fileData, boolean isPrivacy) {
        // 未知文件放在files文件夹下
        return put("files/" + filterFileName(fileName), fileData, null, isPrivacy);
    }

    @Override
    public VideoTransCodeDTO putVideo(String fileName, byte[] fileData, boolean isPrivacy) {
        try {
            // 进行视频转码,转码前的视频,文件都放在videosource文件夹下
            String preFix = "videosource/";
            fileName = filterFileName(fileName);
            String ossPath = preFix + fileName;
            String transCodeBeforeUrl = put(ossPath, fileData, null, isPrivacy);
            // 转码目前不需要带鉴权(不知道是不是aliyun的问题)
            //if (isPrivacy) {
            //    transCodeBeforeUrl = generatePrivacyUrl(preFix + transCodeBeforeUrl.substring(transCodeBeforeUrl.lastIndexOf("/") + 1));
            //}

            // 取出随机后的osspath
            return transcodeService
                    .submitTranscodeJob(preFix + transCodeBeforeUrl.substring(transCodeBeforeUrl.lastIndexOf("/") + 1), fileData, isPrivacy);
        } catch (Exception e) {
            logger.error("AliyunOSSStorageService.putVideo()", e);
        }
        return null;
    }

    @Override
    public VideoTransCodeDTO putVideo(String fileName, File file, boolean isPrivacy) throws IOException {
        return putVideo(fileName, new FileInputStream(file), isPrivacy);
    }

    @Override
    public VideoTransCodeDTO putVideo(String fileName, InputStream fileInputStream, boolean isPrivacy) throws IOException {
        return putVideo(fileName, IOUtils.toByteArray(fileInputStream), isPrivacy);
    }

    @Override
    public String putImage(String fileName, InputStream fileInputStream, boolean isPrivacy) throws IOException {
        return putImage(fileName, IOUtils.toByteArray(fileInputStream), isPrivacy);
    }

    @Override
    public String putImage(String fileName, File file, boolean isPrivacy) throws IOException {
        return putImage(fileName, new FileInputStream(file), isPrivacy);
    }

    @Override
    public String putImage(String fileName, byte[] fileData, boolean isPrivacy) {
        // 图片存放在images文件夹下
        return put("images/" + filterFileName(fileName), fileData, null, isPrivacy);
    }

    @Override
    public boolean delFile(String fileName, boolean isPrivacy) {
        if (isPrivacy) {
            privacyOssClient.deleteObject(ossPrivacyBucket, fileName.replace("//focusedu.oss-cn-hangzhou.aliyuncs.com/", ""));
        } else {
            ossClient.deleteObject(ossBucket, fileName.replace("//kanwo-interview.oss-cn-hangzhou.aliyuncs.com/", ""));
        }
        return true;
    }

    @Override
    public String generatePrivacyUrl(String fileName) {
        Date curDate = new Date();
        URL url = privacyOssClient.generatePresignedUrl(ossPrivacyBucket, fileName, DateUtils.addSeconds(curDate, ossPrivacyTimeout));
        return url.toString().replace("oss-cn-hangzhou-internal.aliyuncs.com", "oss-cn-hangzhou.aliyuncs.com");
    }

    @Override
    public String generatePrivacyUrlByUrl(String url) {
        return generatePrivacyUrl("videos" + url.substring(url.lastIndexOf("/")));
    }

    /**
     * 上传文件
     * @param fileName
     * @param fileData
     * @param metaData
     * @return
     */
    private String put(String fileName, byte[] fileData, ObjectMetadata metaData, boolean isPrivacy) {
        Validate.notNull(fileName);
        Validate.notNull(fileData);

        String key = generateKey(fileName);
        if (isPrivacy) {
            privacyOssClient.putObject(ossPrivacyBucket, key, new ByteArrayInputStream(fileData), metaData);
        } else {
            ossClient.putObject(ossBucket, key, new ByteArrayInputStream(fileData), metaData);
        }
        return generatePublicUrl(key, isPrivacy);
    }
}