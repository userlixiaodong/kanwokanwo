package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialStatus;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.domain.material.Video;

/**
 * MaterialDTO
 *
 * @author liuruichao
 *         Created on 2016-03-04 16:23
 */
public class MaterialDTO {
    private String materialId;
    private MaterialType type;
    private String title;
    private String materialSrc;
    private MaterialStatus status;
    private String videoPreviewImg;
    private int seq;
    private Integer imgWidth;
    private Integer imgHeight;

    public MaterialDTO() {
    }

    public MaterialDTO(Material material) {
        materialId = material.getMaterialId().getMaterialId();
        type = material.getType();
        title = material.getTitle();
        materialSrc = material.getMaterialSrc();
        status = material.getStatus();
        if(material instanceof Video){
            Video v = (Video) material;
            videoPreviewImg = v.getVideoPreviewImg();
        }
        seq = material.getSeq();
        imgWidth = material.getImgWidth();
        imgHeight = material.getImgHeight();
    }

    public String getMaterialId() {
        return materialId;
    }

    public void setMaterialId(String materialId) {
        this.materialId = materialId;
    }

    public MaterialType getType() {
        return type;
    }

    public void setType(MaterialType type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMaterialSrc() {
        return materialSrc;
    }

    public void setMaterialSrc(String materialSrc) {
        this.materialSrc = materialSrc;
    }

    public MaterialStatus getStatus() {
        return status;
    }

    public void setStatus(MaterialStatus status) {
        this.status = status;
    }

    public String getVideoPreviewImg() {
        return videoPreviewImg;
    }

    public void setVideoPreviewImg(String videoPreviewImg) {
        this.videoPreviewImg = videoPreviewImg;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public Integer getImgWidth() {
        return imgWidth;
    }

    public void setImgWidth(Integer imgWidth) {
        this.imgWidth = imgWidth;
    }

    public Integer getImgHeight() {
        return imgHeight;
    }

    public void setImgHeight(Integer imgHeight) {
        this.imgHeight = imgHeight;
    }
}
