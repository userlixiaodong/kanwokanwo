package cv.focus.core.interfaces.student.dto;


import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.student.model.profile.exam.ExamRecord;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * StudentProfileDTO
 * 
 * @author liuruichao
 * Created on 2016-03-04 16:22
 */
public class StudentProfileDTO {
    private Integer userId;
    private String email;
    private String publicUri;
    private MaterialDTO introductionVideo;
    private String name;
    private Date birth;
    private String location;
    private String currentSchool;
    private String graduation;
    private String hobby;
    private String avatar;
    private List<ExamRecordDTO> examRecordList;
    private MyStoryDTO myStory;
    private HonorDTO honor;
    private PortfolioDTO portfolio;

    public StudentProfileDTO(StudentProfile studentProfile) {
        email = studentProfile.getEmail();
        publicUri = studentProfile.getPublicUri();
        if (studentProfile.getIntroductionVideo() != null) {
            introductionVideo = new MaterialDTO(studentProfile.getIntroductionVideo());
        }
        name = studentProfile.getBiography().getName();
        birth = studentProfile.getBiography().getBirth();
        location = studentProfile.getBiography().getLocation();
        currentSchool = studentProfile.getBiography().getCurrentSchool();
        graduation = studentProfile.getBiography().getGraduation();
        hobby = studentProfile.getBiography().getHobby();
        avatar = studentProfile.getBiography().getAvatar() == null ? "" : studentProfile.getBiography().getAvatar();
        myStory = new MyStoryDTO(studentProfile.getMyStory());
        honor = new HonorDTO(studentProfile.getHonor());
        portfolio = new PortfolioDTO(studentProfile.getPortfolio());
        // 成绩
        if (studentProfile.getExamRecordList() != null && studentProfile.getExamRecordList().size() > 0) {
            examRecordList = new ArrayList<>(studentProfile.getExamRecordList().size());
            for (ExamRecord record : studentProfile.getExamRecordList()) {
                examRecordList.add(new ExamRecordDTO(record));
            }
        }
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPublicUri() {
        return publicUri;
    }

    public void setPublicUri(String publicUri) {
        this.publicUri = publicUri;
    }

    public MaterialDTO getIntroductionVideo() {
        return introductionVideo;
    }

    public void setIntroductionVideo(MaterialDTO introductionVideo) {
        this.introductionVideo = introductionVideo;
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

    public List<ExamRecordDTO> getExamRecordList() {
        return examRecordList;
    }

    public void setExamRecordList(List<ExamRecordDTO> examRecordList) {
        this.examRecordList = examRecordList;
    }

    public MyStoryDTO getMyStory() {
        return myStory;
    }

    public void setMyStory(MyStoryDTO myStory) {
        this.myStory = myStory;
    }

    public HonorDTO getHonor() {
        return honor;
    }

    public void setHonor(HonorDTO reward) {
        this.honor = honor;
    }

    public PortfolioDTO getPortfolio() {
        return portfolio;
    }

    public void setPortfolio(PortfolioDTO portfolio) {
        this.portfolio = portfolio;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
