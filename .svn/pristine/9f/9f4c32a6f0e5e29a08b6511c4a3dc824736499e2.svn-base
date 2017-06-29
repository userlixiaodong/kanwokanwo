package cv.focus.core.domain.material;

import cv.focus.core.domain.shared.ValueObject;

/**
 * Created by szj on 2016/2/26.
 */
public class MaterialId implements ValueObject{

    String materialId;

    public MaterialId(String materialId) {
        this.materialId = materialId;
    }

    public MaterialId() {
    }

    public String getMaterialId() {
        return materialId;
    }

    public void setMaterialId(String materialId) {
        this.materialId = materialId;
    }

    @Override
    public String toString(){
        return getMaterialId();
    }

    @Override
    public boolean sameValueAs(Object other) {
        MaterialId materialId = (MaterialId) other;
        return materialId.getMaterialId().equals(this.materialId);
    }
}
