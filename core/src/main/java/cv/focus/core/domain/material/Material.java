package cv.focus.core.domain.material;

import javax.persistence.*;
import java.io.Serializable;
import java.util.UUID;

/**
 * Created by song on 16/1/23.
 * 值对象 层超模型 private domainId
 */
@Entity
@Table
@Inheritance(strategy= InheritanceType.SINGLE_TABLE)
public class Material implements Serializable, cv.focus.core.domain.shared.Entity {

    @Id
    @Embedded
    private MaterialId materialId;
    private MaterialType type;
    private String title;
    private String materialSrc;
    private MaterialStatus status;
    private int seq;
    private Integer imgWidth; // 图片宽度
    private Integer imgHeight; // 图片高度

    public MaterialId getMaterialId() {
        return materialId;
    }

    public void setMaterialId(MaterialId materialId) {
        this.materialId = materialId;
    }

    public Material() {
        this.materialId = new MaterialId(UUID.randomUUID().toString());
    }

    public Material(String materialSrc, MaterialStatus status, MaterialType type) {
        /**
         * material.setVideoPreviewImg(previewImgUrl);
        material.setMaterialSrc(url);
        material.setStatus(status);
        material.setType(type);
        material.setTransCodeJobId(transCodeJobId);
         */
        this.materialId = new MaterialId(UUID.randomUUID().toString());
        this.materialSrc = materialSrc;
        this.status = status;
        this.type = type;

    }

    public Material(MaterialId materialId) {
        this.materialId = materialId;
    }

    public Material(MaterialType type, String src, String title) {
        this.type = type;
        this.materialSrc = src;
        this.title = title;
        this.materialId = new MaterialId(UUID.randomUUID().toString());
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

    public void setImgHeight(int imgHeight) {
        this.imgHeight = imgHeight;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
