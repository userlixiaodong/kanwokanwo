package cv.focus.core.domain.student.model.profile;

import cv.focus.core.domain.shared.Entity;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialId;
import cv.focus.core.domain.material.Video;
import cv.focus.core.domain.student.model.profile.exam.ExamRecord;
import cv.focus.core.domain.user.model.User;

import javax.persistence.*;
import java.util.Iterator;
import java.util.List;

/**
 * Created by song on 16/1/20.
 */
@javax.persistence.Entity
@Table
public class StudentProfile implements Entity{

    //Read-only
    String email;

    private String origPublicUri;
    @Column(unique=true)
    private String publicUri;


    @OneToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private Video introductionVideo;

    @Id
    @Embedded
    private StudentProfileId studentProfileId;

    @Embedded
    private Biography biography;


    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL,mappedBy = "owner")
    List<Remark> remarkList;

    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL, orphanRemoval=true, mappedBy = "studentProfile")
    List<ExamRecord> examRecordList;

    @Embedded
    private MyStory myStory;

    @Embedded
    private Honor honor;

    @Embedded
    private Portfolio portfolio;

    //private String isDisplay;

    public StudentProfile(StudentProfileId studentProfileId, String name) {
        this.studentProfileId = studentProfileId;
        this.biography = new Biography();
        this.biography.name = name;
        // 默认头像
        this.biography.setAvatar("//focusedu.oss-cn-hangzhou.aliyuncs.com/images/defaultStudentAvatar.jpg");
        genOrigPublicUri();
    }

    public StudentProfile() {
        // Needed by Hibernate
    }

    public StudentProfile(StudentProfileId studentProfileId, User user) {
        this.studentProfileId = studentProfileId;
        this.biography = new Biography();
        this.biography.name = user.getUserName();
        this.biography.setAvatar("");
        this.email = user.getEmail();
        genOrigPublicUri();
    }


    public Video getIntroductionVideo() {
        return introductionVideo;
    }
//
    public void setIntroductionVideo(Video introductionVideo) {
//        if(introductionVideo == null)
//            return;
//        if(introductionVideo.getType() != MaterialType.VIDEO){
//            //blabla 类型限制 往后处理
//            throw new IllegalArgumentException();
//        }
        this.introductionVideo = introductionVideo;
    }

    public Biography getBiography() {
        return biography;
    }

    public void setBiography(Biography biography) {
        this.biography = biography;
    }



    public String getPublicUri() {
        return publicUri;
    }

    public void setPublicUri(String publicUri) {
        this.publicUri = publicUri;
    }


    public MyStory getMyStory() {
        return myStory;
    }

    public void setMyStory(MyStory myStory) {
        this.myStory = myStory;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }

    public StudentProfileId getStudentProfileId() {
        return studentProfileId;
    }

    public void setStudentProfileId(StudentProfileId studentProfileId) {
        this.studentProfileId = studentProfileId;
    }

    public String getOrigPublicUri() {
        return origPublicUri;
    }

    public String genOrigPublicUri(){
        //String origUri = this.getBiography().getName().replaceAll("\\W", "").toLowerCase();
        String origUri = this.getBiography().getName().replaceAll("[^\\w\\u3400-\\u9FFF]", "").toLowerCase();
        this.setOrigPublicUri(origUri);
        return origUri;
    }

    public void setOrigPublicUri(String origPublicUri) {
        this.origPublicUri = origPublicUri;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

//    public List<StudentTag> getStudentTagList() {
//        return studentTagList;
//    }
//
//    public void setStudentTagList(List<StudentTag> studentTagList) {
//        this.studentTagList = studentTagList;
//    }



    public Portfolio getPortfolio() {
        return portfolio;
    }

    public List<ExamRecord> getExamRecordList() {
        return examRecordList;
    }

    public Honor getHonor() {
        return honor;
    }

    public void setHonor(Honor honor) {
        this.honor = honor;
    }

    public void setPortfolio(Portfolio portfolio) {
        this.portfolio = portfolio;
    }

    public List<Remark> getRemarkList() {
        return remarkList;
    }

    public void addRemark(Remark remark){
        //TODO
    }
    public void delRemark(Remark remark){
        //TODO
    }

    public void delIntroductionVideo(){

    }

    public void delMyStoryMaterialById(MaterialId materialId){
        Iterator<Material> iterator =  getMyStory().getMaterials().iterator();
        while (iterator.hasNext()){

        }
    }

    public boolean hasMyStory() {
        if(myStory == null){
            return false;
        }
        if((myStory.getDescription() != null && !myStory.getDescription().trim().equals("")) || myStory.getMaterials() != null && myStory.getMaterials().size() > 0){
            return true;
        }
        return false;
    }

    public boolean hasHonor() {
        if(honor == null){
            return false;
        }
        if((honor.getDescription() != null && !honor.getDescription().trim().equals("")) || honor.getMaterials() != null && honor.getMaterials().size() > 0){
            return true;
        }
        return false;
    }

    public boolean hasFinishBiography() {
        if(biography == null){
            return false;
        }
        if(biography.getName() != null && !biography.getName().trim().equals("")
                && biography.getCurrentSchool() != null && !biography.getCurrentSchool().trim().equals("")
                && biography.getGraduation() != null && !biography.getGraduation().trim().equals("")
                && biography.getHobby() != null && !biography.getHobby().trim().equals("")
                && biography.getLocation() != null && !biography.getLocation().trim().equals("")){
            return true;
        }
        return false;
    }
}

