package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.student.model.profile.Honor;
import java.util.ArrayList;
import java.util.List;

/**
 * RewardDTO
 * 
 * @author liuruichao
 * Created on 2016-03-04 16:29
 */
public class HonorDTO {
    private String description;
    private List<MaterialDTO> materials;

    public HonorDTO(Honor honor) {
        if(honor != null){
            description = honor.getDescription();
            if (honor.getMaterials() != null && honor.getMaterials().size() > 0) {
                materials = new ArrayList<>(honor.getMaterials().size());
                for (Material material : honor.getMaterials()) {
                    materials.add(new MaterialDTO(material));
                }
            }
        }
    }

    public String getDescription() {
        return description;
    }

    public List<MaterialDTO> getMaterials() {
        return materials;
    }
}
