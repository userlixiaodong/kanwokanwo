package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.student.model.profile.Biography;
import cv.focus.core.domain.student.model.profile.GraduationSchool;
import org.springframework.beans.BeanUtils;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/5/26.
 */
public class BiographyDTO {
    private String name;
    private Date birth;
    private String location;
    private String currentSchool;
    private String graduation;
    private String hobby;
    private String avatar;
    private List<GraduationSchoolDTO> graduationSchoolList;

    public BiographyDTO(Biography biography) {
        this.name = biography.getName();
        this.birth = biography.getBirth();
        this.location = biography.getLocation();
        this.currentSchool = biography.getCurrentSchool();
        this.graduation = biography.getGraduation();
        this.hobby = biography.getHobby();
        this.avatar = biography.getAvatar();
        graduationSchoolList = new ArrayList<GraduationSchoolDTO>();
        if (biography.getGraduationSchoolList() != null && biography.getGraduationSchoolList().size() > 0) {
            for (GraduationSchool graduationSchool : biography.getGraduationSchoolList()) {
                GraduationSchoolDTO graduationSchoolDTO = new GraduationSchoolDTO();
                BeanUtils.copyProperties(graduationSchool, graduationSchoolDTO);
                graduationSchoolList.add(graduationSchoolDTO);
            }
        }
    }

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

    public List<GraduationSchoolDTO> getGraduationSchoolList() {
        return graduationSchoolList;
    }

    public void setGraduationSchoolList(List<GraduationSchoolDTO> graduationSchoolList) {
        this.graduationSchoolList = graduationSchoolList;
    }
}
