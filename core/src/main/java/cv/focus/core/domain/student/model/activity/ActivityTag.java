package cv.focus.core.domain.student.model.activity;

import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;
import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by song on 16/1/27.
 */
@Entity
@Table
public class ActivityTag extends IdentifiedDomainObject implements ValueObject{
    //TODO 待扩充
    String title;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "activityId", nullable = false)
    private Activity activity;

    public Activity getActivity() {
        return activity;
    }

    public String getTitle() {
        return title;
    }

    public ActivityTag() {
    }

    public ActivityTag(String title, Activity activity) {
        this.title = title;
        this.activity = activity;
    }

    public ActivityTag(String title) {
        this.title = title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
