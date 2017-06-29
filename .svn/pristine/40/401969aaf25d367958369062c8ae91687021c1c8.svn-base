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
public class MyStory extends MaterialListUtil implements ValueObject {

    @AttributeOverride(name = "description",column = @Column(name = "myStoryDescription"))
    @Column(length=2048)
    String description;

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @CollectionTable(name = "mystory_material", joinColumns = @JoinColumn(name = "studentProfileId"))
    @OrderBy("seq")
    List<Material> materials = Collections.emptyList();

    public List<Material> getMaterials() {
        return materials;
    }

    public void setMaterials(List<Material> materials) {
        this.materials = materials;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
