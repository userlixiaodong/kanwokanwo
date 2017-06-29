package cv.focus.core.domain.student.model;

import cv.focus.core.domain.shared.ValueObject;

/**
 * Created by song on 16/1/23.
 */
public class Badge implements ValueObject {

    private String title;

    private boolean status;

    public Badge(String title, boolean status){
        this.title = title;
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
