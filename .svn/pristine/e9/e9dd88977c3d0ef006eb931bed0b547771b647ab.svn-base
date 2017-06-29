package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.student.model.profile.Portfolio;

import java.util.ArrayList;
import java.util.List;

/**
 * PortfolioDTO
 * 
 * @author liuruichao
 * Created on 2016-03-04 16:29
 */
public class PortfolioDTO {
    private List<MaterialDTO> materials;

    public PortfolioDTO(Portfolio portfolio) {
        if(portfolio != null){
            if (portfolio.getMaterials() != null && portfolio.getMaterials().size() > 0) {
                materials = new ArrayList<>(portfolio.getMaterials().size());
                for (Material material : portfolio.getMaterials()) {
                    materials.add(new MaterialDTO(material));
                }
            }
        }
    }
    public List<MaterialDTO> getMaterials() {
        return materials;
    }

    public void setMaterials(List<MaterialDTO> materials) {
        this.materials = materials;
    }
}
