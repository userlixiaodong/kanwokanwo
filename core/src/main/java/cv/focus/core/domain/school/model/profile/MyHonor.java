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
 * 学校特色及荣誉
 * 
 * @author liuruichao
 * Created on 2016-05-22 13:33
 */
public class MyHonor extends MaterialListUtil implements ValueObject  {

    @AttributeOverride(name = "myHonorDesc",column = @Column(name = "myHonorDesc"))
    @Column(length=2048)
    private String myHonorDesc;

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @CollectionTable(name = "myhonor_material", joinColumns = @JoinColumn(name = "admissionProfileId"))
    @OrderBy("seq")
    private List<Material> materials = Collections.emptyList();

    public MyHonor() {
    }

    public String getMyHonorDesc() {
        return myHonorDesc;
    }

    public void setMyHonorDesc(String myHonorDesc) {
        this.myHonorDesc = myHonorDesc;
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
