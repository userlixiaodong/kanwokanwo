package cv.focus.core.domain.student.model.profile;

import cv.focus.core.domain.shared.ValueObject;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialListUtil;

import javax.persistence.*;
import java.util.Collections;
import java.util.List;

/**
 * Created by song on 16/1/21.
 */
public class Honor extends MaterialListUtil implements ValueObject {

    @AttributeOverride(name = "honorDescription",column = @Column(name = "honorDescription"))
    @Column(length=2048)
    String honorDescription;

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @CollectionTable(name = "honor_material", joinColumns = @JoinColumn(name = "studentProfileId"))
    @OrderBy("seq")
    List<Material> materials = Collections.emptyList();

    public List<Material> getMaterials() {
        return materials;
    }

    public void setMaterials(List<Material> materials) {
        this.materials = materials;
    }

    public String getDescription() {
        return honorDescription;
    }

    public void setDescription(String description) {
        this.honorDescription = description;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
