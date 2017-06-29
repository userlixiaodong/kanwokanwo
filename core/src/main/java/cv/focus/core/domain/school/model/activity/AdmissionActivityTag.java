package cv.focus.core.domain.school.model.activity;

import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * AdmissionActivityTag
 *
 * @author liuruichao
 *         Created on 2016-04-02 12:54
 */
@Entity
@Table
public class AdmissionActivityTag extends IdentifiedDomainObject implements ValueObject {
    private String title;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "activityId", nullable = false)
    private AdmissionActivity activity;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public AdmissionActivity getActivity() {
        return activity;
    }

    public void setActivity(AdmissionActivity activity) {
        this.activity = activity;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
