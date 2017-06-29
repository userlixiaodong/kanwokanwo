package cv.focus.core.domain.school.model.activity;

import cv.focus.core.domain.shared.ValueObject;

import java.util.UUID;

/**
 * 活动主键
 *
 * @author liuruichao
 * Created on 2016-04-02 12:47
 */
public class AdmissionActivityId implements ValueObject {
    private String activityId;

    public AdmissionActivityId() {
       activityId = UUID.randomUUID().toString();
    }

    public AdmissionActivityId(String activityId) {
        this.activityId = activityId;
    }

    public String getActivityId() {
        return activityId;
    }

    public void setActivityId(String activityId) {
        this.activityId = activityId;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
