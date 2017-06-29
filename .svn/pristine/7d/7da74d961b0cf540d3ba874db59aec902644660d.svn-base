package cv.focus.core.domain.school.model.profile;

import cv.focus.core.domain.shared.ValueObject;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialListUtil;

import javax.persistence.AttributeOverride;
import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import java.util.Collections;
import java.util.List;

/**
 * MySchool
 *
 * @author liuruichao
 * Created on 2016-04-02 12:39
 */
public class MySchool extends MaterialListUtil implements ValueObject {
    @AttributeOverride(name = "mySchoolDesc",column = @Column(name = "mySchoolDesc"))
    @Column(length=2048)
    private String mySchoolDesc;

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @CollectionTable(name = "myschool_material", joinColumns = @JoinColumn(name = "admissionOfficerProfileId"))
    @OrderBy("seq")
    private List<Material> materials = Collections.emptyList();

    public String getMySchoolDesc() {
        return mySchoolDesc;
    }

    public void setMySchoolDesc(String mySchoolDesc) {
        this.mySchoolDesc = mySchoolDesc;
    }

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
