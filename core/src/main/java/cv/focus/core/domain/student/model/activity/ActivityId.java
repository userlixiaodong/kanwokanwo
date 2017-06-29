package cv.focus.core.domain.student.model.activity;

import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.Id;

/**
 * Created by song on 16/1/23.
 */
public class ActivityId implements ValueObject{
    String activityId;

    public String getActivityId() {
        return activityId;
    }

    public void setActivityId(String id) {
        this.activityId = id;
    }

    public ActivityId(String id){
        this.activityId = id;
    }

    public ActivityId(){}

    @Override
    public String toString()
    {
        return this.activityId;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
