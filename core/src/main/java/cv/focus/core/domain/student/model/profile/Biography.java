package cv.focus.core.domain.student.model.profile;

import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import java.util.Date;
import java.util.List;

/**
 * Created by song on 16/1/21.
 */
public class Biography implements ValueObject {
    String name;
    Date birth;
    String location;
    String currentSchool;
    String graduation;
    String hobby;
    private String avatar;

    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    List<GraduationSchool> graduationSchoolList;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCurrentSchool() {
        return currentSchool;
    }

    public void setCurrentSchool(String currentSchool) {
        this.currentSchool = currentSchool;
    }

    public String getGraduation() {
        return graduation;
    }

    public void setGraduation(String graduation) {
        this.graduation = graduation;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public List<GraduationSchool> getGraduationSchoolList() {
        return graduationSchoolList;
    }

    public void setGraduationSchoolList(List<GraduationSchool> graduationSchoolList) {
        this.graduationSchoolList = graduationSchoolList;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
