package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.school.model.profile.MyAssociation;
import cv.focus.core.domain.school.model.profile.MySchool;
import cv.focus.core.interfaces.student.dto.MaterialDTO;

import java.util.ArrayList;
import java.util.List;

public class MyAssociationDTO {
    private String description;
    private List<MaterialDTO> materials;

    public MyAssociationDTO(MyAssociation myAssociation) {
        if(myAssociation != null){
            description = myAssociation.getMyAssociationDesc();
            if (myAssociation.getMaterials() != null && myAssociation.getMaterials().size() > 0) {
                materials = new ArrayList<>(myAssociation.getMaterials().size());
                for (Material material : myAssociation.getMaterials()) {
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
