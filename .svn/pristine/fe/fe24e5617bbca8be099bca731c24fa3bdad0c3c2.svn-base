package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.school.model.profile.MyHonor;
import cv.focus.core.domain.school.model.profile.MySchool;
import cv.focus.core.interfaces.student.dto.MaterialDTO;

import java.util.ArrayList;
import java.util.List;


public class MyHonorDTO {
    private String description;
    private List<MaterialDTO> materials;

    public MyHonorDTO(MyHonor myHonor) {
        if(myHonor != null){
            description = myHonor.getMyHonorDesc();
            if (myHonor.getMaterials() != null && myHonor.getMaterials().size() > 0) {
                materials = new ArrayList<>(myHonor.getMaterials().size());
                for (Material material : myHonor.getMaterials()) {
                    materials.add(new MaterialDTO(material));
                }
            }
        }
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<MaterialDTO> getMaterials() {
        return materials;
    }

    public void setMaterials(List<MaterialDTO> materials) {
        this.materials = materials;
    }
}
