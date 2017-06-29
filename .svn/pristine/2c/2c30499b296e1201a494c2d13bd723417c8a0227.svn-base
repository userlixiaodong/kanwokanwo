package cv.focus.core.domain.student.model.activity;

import cv.focus.core.domain.shared.Entity;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.student.model.profile.StudentProfileId;

import javax.persistence.*;
import java.util.*;

/**
 * Created by song on 16/1/21.
 */

@javax.persistence.Entity
@Table
public class Activity implements Entity {

    @Id
    @Embedded
    ActivityId activityId;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "activity")
    List<ActivityTag> activityTagList;

    @Embedded
    StudentProfileId studentProfileId;

    String title;

    @Column(length=2048)
    String description;

    Date startDate;

    Date endDate;

    Integer seq;

    @OneToMany(fetch = FetchType.EAGER, orphanRemoval = true, cascade = javax.persistence.CascadeType.ALL)
    @CollectionTable(name = "activity_material", joinColumns = @JoinColumn(name = "activityId"))
    @OrderBy("seq")
    List<Material> materials = Collections.emptyList();

    private Date createTime; // 活动创建时间

    public List<Material> getMaterials() {
        return materials;
    }

    public void setMaterials(List<Material> materials) {
        this.materials = materials;
    }


    public Activity() {

    }


    public Activity(ActivityId activityId, StudentProfileId studentProfileId, String title, Date startDate, Date endDate, int seq) {
        this.activityId = activityId;
        this.studentProfileId = studentProfileId;
        this.title = title;
        this.startDate = startDate;
        this.endDate = endDate;
        this.seq = seq;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public ActivityId getActivityId() {
        return activityId;
    }

    public void setStudentProfileId(StudentProfileId studentProfileId) {
        this.studentProfileId = studentProfileId;
    }

    public void setActivityId(ActivityId activityId) {
        this.activityId = activityId;
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

    public List<ActivityTag> getActivityTagList() {
        return this.activityTagList;
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

    public void clearTags() {
        this.activityTagList.clear();
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    //打个标签
    public void addTag(List<ActivityTag> activityTags) {
        if (this.activityTagList == null) {
            activityTagList = new ArrayList<ActivityTag>();
        }
        this.activityTagList.clear();
        if (activityTags != null) {
            for (ActivityTag activityTag : activityTags) {
                activityTag.setActivity(this);
                activityTag.setDomainId(UUID.randomUUID().toString());
            }
        }
        this.activityTagList.addAll(activityTags);
    }

    public void setActivityTagList(List<ActivityTag> activityTagList) {
        this.activityTagList = activityTagList;
    }

    public void updateActivity(String title, Date startDate, Date endDate, List<ActivityTag> activityTags, String description) {
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

    public void updateActivity(String description) {
        this.description = description;
    }

    public void delTag(ActivityTag activityTag) {

        //TODO
    }

    public StudentProfileId getStudentProfileId() {
        return studentProfileId;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
