package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.school.model.profile.MySchool;
import cv.focus.core.domain.material.Material;
import cv.focus.core.interfaces.student.dto.MaterialDTO;

import java.util.ArrayList;
import java.util.List;

/**
 * MySchoolDTO
 * 
 * @author liuruichao
 * Created on 2016-04-04 14:32
 */
public class MySchoolDTO {
    private String description;
    private List<MaterialDTO> materials;

    public MySchoolDTO(MySchool mySchool) {
        if(mySchool != null){
            description = mySchool.getMySchoolDesc();
            if (mySchool.getMaterials() != null && mySchool.getMaterials().size() > 0) {
                materials = new ArrayList<>(mySchool.getMaterials().size());
                for (Material material : mySchool.getMaterials()) {
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
