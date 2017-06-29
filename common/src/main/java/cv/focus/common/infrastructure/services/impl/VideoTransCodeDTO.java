package cv.focus.common.infrastructure.services.impl;

/**
 * VideoDTO
 * 
 * @author liuruichao
 * Created on 2016-02-24 14:29
 */
public class VideoTransCodeDTO {
    private String url;
    private String transCodeJobId;
    private String previewImgUrl;

    public VideoTransCodeDTO(String url, String transCodeJobId, String previewImgUrl) {
        this.url = url;
        this.transCodeJobId = transCodeJobId;
        this.previewImgUrl = previewImgUrl;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTransCodeJobId() {
        return transCodeJobId;
    }

    public void setTransCodeJobId(String transCodeJobId) {
        this.transCodeJobId = transCodeJobId;
    }

    public String getPreviewImgUrl() {
        return previewImgUrl;
    }

    public void setPreviewImgUrl(String previewImgUrl) {
        this.previewImgUrl = previewImgUrl;
    }
}
