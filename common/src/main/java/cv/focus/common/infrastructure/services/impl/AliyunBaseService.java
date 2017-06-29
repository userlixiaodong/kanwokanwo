package cv.focus.common.infrastructure.services.impl;

import com.aliyun.api.AliyunClient;
import com.aliyun.api.DefaultAliyunClient;
import com.aliyun.oss.OSSClient;
import com.focusedu.utils.lang.PropertiesUtil;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

import java.util.Properties;
import java.util.UUID;

/**
 * AliyunBaseService
 *
 * @author liuruichao
 * Created on 2016-02-24 10:43
 */
public abstract class AliyunBaseService {
    protected String ossEndpoint;
    protected final String accessKeyId;
    protected final String accessKeySecret;
    protected String ossBucket;
    protected String ossPrivacyBucket;
    protected int ossPrivacyTimeout;
    protected OSSClient privacyOssClient;
    private String privacyOssDomain;
    protected String ossDomain;
    protected OSSClient ossClient;
    protected final String mtsPipelineId;
    protected final String mtsOutPutBucket;
    protected final String mtsVideoTemplateId;
    protected final String mtsServerUrl;
    protected final AliyunClient aliyunClient;
    protected final String uploadFileTempPath;

    public AliyunBaseService() {
        Properties properties = PropertiesUtil.getProperties("aliyunconfig.properties");
        // public
        ossEndpoint = properties.getProperty("oss.endpoint");
        accessKeyId = properties.getProperty("accessKeyId");
        accessKeySecret = properties.getProperty("accessKeySecret");
        ossBucket = properties.getProperty("oss.bucket");
        ossDomain = "//" + ossBucket + "." + ossEndpoint;
        ossClient = new OSSClient(ossEndpoint, accessKeyId, accessKeySecret);
        mtsPipelineId = properties.getProperty("mts.pipelineId");
        mtsOutPutBucket = properties.getProperty("mts.outPutBucket");
        mtsVideoTemplateId = properties.getProperty("mts.videoTemplateId");
        mtsServerUrl = properties.getProperty("mts.mtsServerUrl");
        aliyunClient = new DefaultAliyunClient(mtsServerUrl, accessKeyId, accessKeySecret);
        uploadFileTempPath = properties.getProperty("uploadFileTempPath");
        // privacy
        ossPrivacyBucket = properties.getProperty("oss.privacy.bucket");
        ossPrivacyTimeout = Integer.valueOf(properties.getProperty("oss.privacy.timeout"));
        privacyOssClient = new OSSClient(ossEndpoint, accessKeyId, accessKeySecret);
        privacyOssDomain= "//" + ossPrivacyBucket + "." + ossEndpoint;
    }

    /**
     * 生成存储唯一标识
     * @param fileName 文件名称
     * @return
     */
    protected String generateKey(String fileName) {
        Validate.notNull(fileName);

        StringBuilder sbu = new StringBuilder();
        String extension = FilenameUtils.getExtension(fileName);

        // prefix
        sbu.append(FilenameUtils.removeExtension(fileName));
        // nanotime
        sbu.append(System.nanoTime());
        // suffix
        if (!extension.equals("")) {
            sbu.append(".").append(extension);
        }

        return sbu.toString();
    }

    /**
     * 生成存储文件外网url
     * @param key
     * @return
     */
    protected String generatePublicUrl(String key, boolean isPrivacy) {
        if (isPrivacy) {
            return privacyOssDomain.replace("oss-cn-hangzhou-internal.aliyuncs.com", "oss-cn-hangzhou.aliyuncs.com") + "/" + key;
        }
        return ossDomain.replace("oss-cn-hangzhou-internal.aliyuncs.com", "oss-cn-hangzhou.aliyuncs.com") + "/" + key;
    }

    protected String filterFileName(String fileName) {
        return fileName.replaceAll("[^\\w\\.]", "").toLowerCase();
    }
}
