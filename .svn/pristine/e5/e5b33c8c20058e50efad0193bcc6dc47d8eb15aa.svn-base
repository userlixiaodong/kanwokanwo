package cv.focus.core.domain.student.model.profile;

import cv.focus.core.domain.shared.ValueObject;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialListUtil;

import javax.persistence.*;
import java.util.Collections;
import java.util.List;

/**
 * 作品集
 * Created by song on 16/2/23.
 */
public class Portfolio extends MaterialListUtil implements ValueObject {

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @CollectionTable(name = "portfolio_material", joinColumns = @JoinColumn(name = "studentProfileId"))
    @OrderBy("seq")
    List<Material> materials = Collections.emptyList();

    public List<Material> getMaterials() {
        return materials;
    }

    public void setMaterials(List<Material> materials) {
        this.materials = materials;
    }


    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
