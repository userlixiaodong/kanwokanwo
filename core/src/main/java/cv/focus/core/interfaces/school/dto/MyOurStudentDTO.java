package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.school.model.profile.MyOurStudent;
import cv.focus.core.domain.school.model.profile.MySchool;
import cv.focus.core.interfaces.student.dto.MaterialDTO;

import java.util.ArrayList;
import java.util.List;


public class MyOurStudentDTO {
    private String description;
    private List<MaterialDTO> materials;

    public MyOurStudentDTO(MyOurStudent myOurStudent) {
        if(myOurStudent != null){
            description = myOurStudent.getMyOurStudentDesc();
            if (myOurStudent.getMaterials() != null && myOurStudent.getMaterials().size() > 0) {
                materials = new ArrayList<>(myOurStudent.getMaterials().size());
                for (Material material : myOurStudent.getMaterials()) {
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
