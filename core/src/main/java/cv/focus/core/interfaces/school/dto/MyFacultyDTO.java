package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.school.model.profile.MyFaculty;
import cv.focus.core.domain.school.model.profile.MySchool;
import cv.focus.core.interfaces.student.dto.MaterialDTO;

import java.util.ArrayList;
import java.util.List;


public class MyFacultyDTO {
    private String description;
    private List<MaterialDTO> materials;

    public MyFacultyDTO(MyFaculty myFaculty) {
        if(myFaculty != null){
            description = myFaculty.getMyFacultyDesc();
            if (myFaculty.getMaterials() != null && myFaculty.getMaterials().size() > 0) {
                materials = new ArrayList<>(myFaculty.getMaterials().size());
                for (Material material : myFaculty.getMaterials()) {
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
