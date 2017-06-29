package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.school.model.profile.MyAcademic;
import cv.focus.core.interfaces.student.dto.MaterialDTO;

import java.util.ArrayList;
import java.util.List;

/**
 * MyAcaddemicDTO
 * 
 * @author liuruichao
 * Created on 2016-06-02 16:18
 */
public class MyAcademicDTO {
    private String description;
    private List<MaterialDTO> materials;

    public MyAcademicDTO(MyAcademic myAcademic) {
        if(myAcademic != null){
            description = myAcademic.getMyAcademicDesc();
            if (myAcademic.getMaterials() != null && myAcademic.getMaterials().size() > 0) {
                materials = new ArrayList<>(myAcademic.getMaterials().size());
                for (Material material : myAcademic.getMaterials()) {
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
