package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.school.model.profile.MyCurriculum;
import cv.focus.core.domain.school.model.profile.MySchool;
import cv.focus.core.interfaces.student.dto.MaterialDTO;

import java.util.ArrayList;
import java.util.List;


public class MyCurriculumDTO {
    private String description;
    private List<MaterialDTO> materials;

    public MyCurriculumDTO(MyCurriculum myCurriculum) {
        if(myCurriculum != null){
            description = myCurriculum.getMyCurriculumDesc();
            if (myCurriculum.getMaterials() != null && myCurriculum.getMaterials().size() > 0) {
                materials = new ArrayList<>(myCurriculum.getMaterials().size());
                for (Material material : myCurriculum.getMaterials()) {
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
