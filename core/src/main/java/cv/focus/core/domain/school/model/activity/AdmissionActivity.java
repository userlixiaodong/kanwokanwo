package cv.focus.core.domain.school.model.activity;

import cv.focus.core.domain.school.model.profile.AdmissionProfileId;
import cv.focus.core.domain.shared.Entity;
import cv.focus.core.domain.material.Material;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * 招生官活动实体
 *
 * @author liuruichao
 * Created on 2016-04-02 12:46
 */
@javax.persistence.Entity
@Table
public class AdmissionActivity implements Entity {
    @Id
    @Embedded
    private AdmissionActivityId admissionActivityId;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "activity")
    private List<AdmissionActivityTag> activityTagList;
    @Embedded
    private AdmissionProfileId admissionProfileId;
    private String title;
    @Column(length = 2048)
    private String description;
    private Date startDate;
    private Date endDate;
    private Integer seq;
    @OneToMany(fetch = FetchType.EAGER, orphanRemoval = true, cascade = javax.persistence.CascadeType.ALL)
    @CollectionTable(name = "admission_activity_material", joinColumns = @JoinColumn(name = "activityId"))
    @OrderBy("seq")
    private List<Material> materials = Collections.emptyList();

    public AdmissionActivity() {
    }

    public AdmissionActivity(AdmissionProfileId admissionProfileId, String title, Date startDate, Date endDate, int seq) {
        this.admissionActivityId = new AdmissionActivityId();
        this.admissionProfileId = admissionProfileId;
        this.title = title;
        this.startDate = startDate;
        this.endDate = endDate;
        this.seq = seq;
    }

    //打个标签
    public void addTag(List<AdmissionActivityTag> activityTags) {
        if (this.activityTagList == null) {
            activityTagList = new ArrayList<>();
        }
        this.activityTagList.clear();
        if (activityTags != null) {
            for (AdmissionActivityTag tag: activityTags) {
                tag.setActivity(this);
                tag.setDomainId(UUID.randomUUID().toString());
            }
        }
        this.activityTagList.addAll(activityTags);
    }

    public void updateActivity(String title, Date startDate, Date endDate, List<AdmissionActivityTag> activityTags, String description) {
        if (startDate != null) {
            this.startDate = startDate;
        }
        if (endDate != null) {
            this.endDate = endDate;
        }
        if (activityTags != null) {
            addTag(activityTags);
        }
        if (title != null) {
            this.title = title;
        }
        if (description != null) {
            this.description = description;
        }


    }

    public AdmissionActivityId getAdmissionActivityId() {
        return admissionActivityId;
    }

    public void setAdmissionActivityId(AdmissionActivityId admissionActivityId) {
        this.admissionActivityId = admissionActivityId;
    }

    public List<AdmissionActivityTag> getActivityTagList() {
        return activityTagList;
    }

    public void setActivityTagList(List<AdmissionActivityTag> activityTagList) {
        this.activityTagList = activityTagList;
    }

    public AdmissionProfileId getAdmissionProfileId() {
        return admissionProfileId;
    }

    public void setAdmissionProfileId(AdmissionProfileId admissionProfileId) {
        this.admissionProfileId = admissionProfileId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public List<Material> getMaterials() {
        return materials;
    }

    public void setMaterials(List<Material> materials) {
        this.materials = materials;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
