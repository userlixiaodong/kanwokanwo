package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.student.model.profile.SchoolType;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Created by szj on 2016/5/26.
 */
public class GraduationSchoolDTO {
    String name;
    SchoolType type;
    String graduationYear;

    public GraduationSchoolDTO() {
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

    public String getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(Date graduationYear) {
        SimpleDateFormat sdf = new SimpleDateFormat("MMM yyyy", Locale.ENGLISH);
        if (graduationYear != null)
            this.graduationYear = sdf.format(graduationYear);
    }
}
