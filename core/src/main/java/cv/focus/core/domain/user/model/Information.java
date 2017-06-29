package cv.focus.core.domain.user.model;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 * Information
 * 
 * @author liuruichao
 * Created on 2016-05-22 14:21
 */
@Entity
@Table
public class Information implements cv.focus.core.domain.shared.Entity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer informationId;

    @Column(length = 2048)
    private String text;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "userId", nullable = false)
    private User user;

    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @CollectionTable(name = "information_material", joinColumns = @JoinColumn(name = "informationId"))
    @OrderBy("seq")
    private List<Material> materials;

    private Integer favorCount; // 赞

    private InformationStatus status;

    private Date createTime = new Date();

    public Information() {
    }

    public Information(String text, User user, List<Material> materials, Integer favorCount, InformationStatus status) {
        this.text = text;
        this.user = user;
        this.materials = materials;
        this.favorCount = favorCount;
        this.status = status;
    }

    public Integer getInformationId() {
        return informationId;
    }

    public void setInformationId(Integer informationId) {
        this.informationId = informationId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Material> getMaterials() {
        return materials;
    }

    public void setMaterials(List<Material> materials) {
        this.materials = materials;
    }

    public Integer getFavorCount() {
        return favorCount;
    }

    public void setFavorCount(Integer favorCount) {
        this.favorCount = favorCount;
    }

    public InformationStatus getStatus() {
        return status;
    }

    public void setStatus(InformationStatus status) {
        this.status = status;
    }

    public void plusFavor() {
        ++favorCount;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }

    public void minusFavor() {
        --favorCount;
    }
}
