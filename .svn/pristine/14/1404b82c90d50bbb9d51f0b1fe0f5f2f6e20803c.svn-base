package cv.focus.common.infrastructure.services;

import cv.focus.common.infrastructure.services.impl.VideoTransCodeDTO;

/**
 * 视频转码服务
 * 
 * @author liuruichao
 * Created on 2016-02-23 14:06
 */
public interface TranscodeService {
    /**
     * 视频转码为MP4格式
     * @param url 文件url 例 http://tupian.focusedu.cn/doc/tpo1.doc
     *            1.阿里云MTS只需要输入OSS Object名称即可
     *              例如:http://lrchztest.oss-cn-hangzhou.aliyuncs.com/testvideo 只需要输入testvideo
     *                  http://lrchztest.oss-cn-hangzhou.aliyuncs.com/videos/testvideo 需要输入videos/testvideo
     *
     * @param fileData 文件二进制数据
     * @return
     */
    VideoTransCodeDTO submitTranscodeJob(String url, final byte[] fileData, boolean isPrivacy);
}
