package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.student.model.profile.MyStory;

import java.util.ArrayList;
import java.util.List;

/**
 * MyStoryDTO
 * 
 * @author liuruichao
 * Created on 2016-03-04 16:29
 */
public class MyStoryDTO {
    private String description;
    private List<MaterialDTO> materials;

    public MyStoryDTO(MyStory myStory) {
        if(myStory != null){
            description = myStory.getDescription();
            if (myStory.getMaterials() != null && myStory.getMaterials().size() > 0) {
                materials = new ArrayList<>(myStory.getMaterials().size());
                for (Material material : myStory.getMaterials()) {
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
