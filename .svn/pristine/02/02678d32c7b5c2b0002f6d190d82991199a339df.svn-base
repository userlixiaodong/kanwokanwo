package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.student.model.profile.StudentProfileId;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Created by song on 16/1/29.
 */
public class ActivityDTO {

    ActivityId activityId;

    List<ActivityTagDTO> activityTagList;

    List<MaterialDTO> materials;

    StudentProfileId studentProfileId;

    String title;

    String description;

    String startDate;

    String endDate;

    Integer seq;

    private String createTime;

    SimpleDateFormat sdf = new SimpleDateFormat("MMM yyyy", Locale.ENGLISH);


    public String getActivityId() {
        return activityId.toString();
    }

    public void setActivityId(ActivityId activityId) {
        this.activityId = activityId;
    }


    public StudentProfileId getStudentProfileId() {
        return studentProfileId;
    }

    public void setStudentProfileId(StudentProfileId studentProfileId) {
        this.studentProfileId = studentProfileId;
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

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        if (startDate != null)
            this.startDate = sdf.format(startDate);
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        if (endDate != null)
            this.endDate = sdf.format(endDate);
    }

    public List<ActivityTagDTO> getActivityTagList() {
        return activityTagList;
    }

    public void setActivityTagList(List<ActivityTagDTO> activityTagList) {
        this.activityTagList = activityTagList;
    }

    public List<MaterialDTO> getMaterials() {
        return materials;
    }

    public void setMaterials(List<MaterialDTO> materials) {
        this.materials = materials;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        if (createTime != null) {
            this.createTime = sdf.format(createTime);
        }
    }
}
