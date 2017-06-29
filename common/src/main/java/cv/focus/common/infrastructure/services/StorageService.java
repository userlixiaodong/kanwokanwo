package cv.focus.common.infrastructure.services;

import com.aliyun.oss.model.ObjectMetadata;
import cv.focus.common.infrastructure.services.impl.VideoTransCodeDTO;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/**
 * 文件存储/对象存储/图片存储
 *
 * @author liuruichao
 * Created on 2016-01-27 17:07
 */
public interface StorageService {
    /**
     * 上传文件
     * @param fileName 存储名称(可以不唯一)
     * @param fileInputStream 文件输入流
     * @return 该视频网址
     */
    String putFile(String fileName, InputStream fileInputStream, boolean isPrivacy) throws IOException;

    /**
     * 上传文件
     * @param fileName 存储名称(可以不唯一)
     * @param file 文件
     * @return 该视频网址
     */
    String putFile(String fileName, File file, boolean isPrivacy) throws IOException;

    /**
     * 上传文件
     * @param fileName 存储名称(可以不唯一)
     * @param fileData 文件数据,byte数组
     * @return 该视频网址
     */
    String putFile(String fileName, byte[] fileData, boolean isPrivacy);

    /**
     * 上传视频(会自动转码,转换为MP4格式)
     * @param fileName 存储名称(可以不唯一)
     * @param fileData 视频文件数据,byteshuzu
     * @return 该视频网址
     */
    VideoTransCodeDTO putVideo(String fileName, byte[] fileData, boolean isPrivacy);

    /**
     * 上传视频(会自动转码,转换为MP4格式)
     * @param fileName 存储名称(可以不唯一)
     * @param file 视频文件
     * @return 该视频网址
     */
    VideoTransCodeDTO putVideo(String fileName, File file, boolean isPrivacy) throws IOException;

    /**
     * 上传视频(会自动转码,转换为MP4格式)
     * @param fileName 存储名称(可以不唯一)
     * @param fileInputStream 视频文件输入流
     * @return 该视频网址
     */
    VideoTransCodeDTO putVideo(String fileName, InputStream fileInputStream, boolean isPrivacy) throws IOException;

    /**
     * 上传图片
     * @param fileName 存储名称(可以不唯一)
     * @param fileInputStream 图片输入流
     * @return 该图片网址
     */
    String putImage(String fileName, InputStream fileInputStream, boolean isPrivacy) throws IOException;

    /**
     * 上传图片
     * @param fileName 存储名称(可以不唯一)
     * @param file 图片文件
     * @return 该图片网址
     */
    String putImage(String fileName, File file, boolean isPrivacy) throws IOException;

    /**
     * 上传图片
     * @param fileName 存储名称(可以不唯一)
     * @param fileData 图片文件数据
     * @return 该图片网址
     */
    String putImage(String fileName, byte[] fileData, boolean isPrivacy);

    boolean delFile(String fileName, boolean isPrivacy);

    String generatePrivacyUrl(String fileName);

    String generatePrivacyUrlByUrl(String url);
}