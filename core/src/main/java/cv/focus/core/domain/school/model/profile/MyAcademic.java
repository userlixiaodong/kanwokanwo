package cv.focus.core.domain.school.model.profile;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialListUtil;
import cv.focus.core.domain.shared.ValueObject;

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
 * MyAcaddemic
 * 
 * @author liuruichao
 * Created on 2016-06-02 16:09
 */
public class MyAcademic extends MaterialListUtil implements ValueObject  {

    @AttributeOverride(name = "myAcademicDesc",column = @Column(name = "myAcademicDesc"))
    @Column(length=2048)
    private String myAcademicDesc;

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @CollectionTable(name = "myacademic_material", joinColumns = @JoinColumn(name = "admissionProfileId"))
    @OrderBy("seq")
    private List<Material> materials = Collections.emptyList();

    public MyAcademic() {
    }

    public String getMyAcademicDesc() {
        return myAcademicDesc;
    }

    public void setMyAcademicDesc(String myAcademicDesc) {
        this.myAcademicDesc = myAcademicDesc;
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
