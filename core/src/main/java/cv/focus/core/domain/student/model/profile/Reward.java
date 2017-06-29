package cv.focus.core.domain.student.model.profile;

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
 * 获奖记录
 * 
 * @author liuruichao
 * Created on 2016-03-02 11:23
 */
public class Reward extends MaterialListUtil implements ValueObject  {
    @AttributeOverride(name = "rewardDescription",column = @Column(name = "myRewardDescription",length=2048))
    private String rewardDesc;

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @CollectionTable(name = "reward_material", joinColumns = @JoinColumn(name = "studentProfileId"))
    @OrderBy("seq")
    private List<Material> materials = Collections.emptyList();

    public String getRewardDesc() {
        return rewardDesc;
    }

    public void setRewardDesc(String rewardDesc) {
        this.rewardDesc = rewardDesc;
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
