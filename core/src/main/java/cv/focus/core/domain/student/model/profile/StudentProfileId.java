package cv.focus.core.domain.student.model.profile;

import cv.focus.core.domain.shared.ValueObject;

/**
 * Created by song on 16/1/23.
 */
public class StudentProfileId implements ValueObject{
    String studentProfileId;

    public String getStudentProfileId() {
        return studentProfileId;
    }

    public void setStudentProfileId(String id) {
        this.studentProfileId = id;
    }

    public StudentProfileId(String id){
        this.studentProfileId = id;
    }

    public StudentProfileId(){}

    @Override
    public String toString(){
        return getStudentProfileId();
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
