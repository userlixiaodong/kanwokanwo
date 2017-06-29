package cv.focus.core.domain.material;

import javax.persistence.Entity;

/**
 * Created by song on 16/1/23.
 */
@Entity
public final class Video extends Material{
    private String transCodeJobId;
    private String videoPreviewImg;

    public Video(){
        super();
        this.setType(MaterialType.VIDEO);
    }

    public Video(String previewImgUrl, String materialSrc, MaterialStatus status, String transCodeJobId) {
        super(materialSrc, status, MaterialType.VIDEO);
        this.videoPreviewImg = previewImgUrl;
        this.transCodeJobId = transCodeJobId;
    }


    public String getTransCodeJobId() {
        return transCodeJobId;
    }

    public void setTransCodeJobId(String transCodeJobId) {
        this.transCodeJobId = transCodeJobId;
    }

    public String getVideoPreviewImg() {
        return videoPreviewImg;
    }

    public void setVideoPreviewImg(String videoPreviewImg) {
        this.videoPreviewImg = videoPreviewImg;
    }
}
