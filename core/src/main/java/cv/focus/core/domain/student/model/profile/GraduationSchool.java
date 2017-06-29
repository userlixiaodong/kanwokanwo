package cv.focus.core.domain.student.model.profile;

import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.*;
import java.util.Date;
import java.util.UUID;

/**
 * Created by szj on 2016/5/25.
 */
@Table
@Entity
public class GraduationSchool extends IdentifiedDomainObject implements ValueObject {
    String name;
    SchoolType type;
    Date graduationYear;

    @ManyToOne(fetch = FetchType.LAZY   )
    @JoinColumn(name = "studentProfileId", nullable = false)
    private StudentProfile studentProfile;

    public GraduationSchool(String name, SchoolType type, Date graduationYear) {
        setDomainId(UUID.randomUUID().toString());
        this.name = name;
        this.type = type;
        this.graduationYear = graduationYear;
    }

    public GraduationSchool() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public SchoolType getType() {
        return type;
    }

    public void setType(SchoolType type) {
        this.type = type;
    }

    public Date getgraduationYear() {
        return graduationYear;
    }

    public void setgraduationYear(Date graduationYear) {
        this.graduationYear = graduationYear;
    }

    public StudentProfile getStudentProfile() {
        return studentProfile;
    }

    public void setStudentProfile(StudentProfile studentProfile) {
        this.studentProfile = studentProfile;
    }

    public Date getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(Date graduationYear) {
        this.graduationYear = graduationYear;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
