package cv.focus.core.domain.school.model.profile;

import cv.focus.core.domain.shared.Entity;
import cv.focus.core.domain.material.Video;
import cv.focus.core.domain.user.model.User;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.util.List;

/**
 * 招生官(学校)
 *
 * @author liuruichao
 * Created on 2016-04-02 12:00
 */
@javax.persistence.Entity
@Table
public class AdmissionProfile implements Entity {
    @Id
    @Embedded
    private AdmissionProfileId admissionProfileId;
    @Column(unique = true)
    private String email;
    private String origPublicUri;
    @Column(unique = true)
    private String publicUri;
    @OneToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private Video introductionVideo;
    @Embedded
    private Biography biography;
    @Embedded
    private MySchool mySchool;
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "owner")
    private List<AdmissionRemark> remarkList;
    @Embedded
    private MyLinks myLinks;
    // 新版学校 start
    @Embedded
    private MyHonor myHonor;
    @Embedded
    private MyCurriculum myCurriculum;
    @Embedded
    private MyFaculty myFaculty;
    @Embedded
    private MyAssociation myAssociation;
    @Embedded
    private MyOurStudent myOurStudent;
    @Embedded
    private SchoolApplication application;
    @Embedded
    private MyAcademic myAcademic;
    // 新版学校 end

    private Integer recommend;//1:推荐 0：不推荐 初始值是0
    private Integer weight;//值越大权重越高 初始值都是0
    private SchoolCountry country = SchoolCountry.OTHER; //  学校所属国家

    public AdmissionProfile() {
        this.admissionProfileId = new AdmissionProfileId();
    }

    public AdmissionProfile(AdmissionProfileId admissionProfileId, User user) {
        this.admissionProfileId = admissionProfileId;
        this.biography = new Biography();
        this.biography.setName(user.getUserName());
        // 默认头像
        this.biography.setAvatar("//focusedu.oss-cn-hangzhou.aliyuncs.com/images/defaultAdmissionAvatar.jpg");
        this.email = user.getEmail();
        this.recommend = 0;
        this.weight = 0;
        genOrigPublicUri();
    }

    public AdmissionProfileId getAdmissionProfileId() {
        return admissionProfileId;
    }

    public void setAdmissionProfileId(AdmissionProfileId admissionProfileId) {
        this.admissionProfileId = admissionProfileId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOrigPublicUri() {
        return origPublicUri;
    }

    public void setOrigPublicUri(String origPublicUri) {
        this.origPublicUri = origPublicUri;
    }

    public String getPublicUri() {
        return publicUri;
    }

    public void setPublicUri(String publicUri) {
        this.publicUri = publicUri;
    }

    public Video getIntroductionVideo() {
        return introductionVideo;
    }

    public void setIntroductionVideo(Video introductionVideo) {
        this.introductionVideo = introductionVideo;
    }

    public Biography getBiography() {
        return biography;
    }

    public void setBiography(Biography biography) {
        this.biography = biography;
    }

    public MySchool getMySchool() {
        return mySchool;
    }

    public void setMySchool(MySchool mySchool) {
        this.mySchool = mySchool;
    }

    public List<AdmissionRemark> getRemarkList() {
        return remarkList;
    }

    public MyLinks getMyLinks() {
        return myLinks;
    }

    public void setMyLinks(MyLinks myLinks) {
        this.myLinks = myLinks;
    }

    public void setRemarkList(List<AdmissionRemark> remarkList) {
        this.remarkList = remarkList;
    }

    public Integer getRecommend() {
        return recommend;
    }

    public void setRecommend(Integer recommend) {
        this.recommend = recommend;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public SchoolApplication getApplication() {
        return application;
    }

    public void setApplication(SchoolApplication application) {
        this.application = application;
    }

    public MyHonor getMyHonor() {
        return myHonor;
    }

    public void setMyHonor(MyHonor myHonor) {
        this.myHonor = myHonor;
    }

    public MyCurriculum getMyCurriculum() {
        return myCurriculum;
    }

    public void setMyCurriculum(MyCurriculum myCurriculum) {
        this.myCurriculum = myCurriculum;
    }

    public MyFaculty getMyFaculty() {
        return myFaculty;
    }

    public void setMyFaculty(MyFaculty myFaculty) {
        this.myFaculty = myFaculty;
    }

    public MyAssociation getMyAssociation() {
        return myAssociation;
    }

    public void setMyAssociation(MyAssociation myAssociation) {
        this.myAssociation = myAssociation;
    }

    public MyOurStudent getMyOurStudent() {
        return myOurStudent;
    }

    public void setMyOurStudent(MyOurStudent myOurStudent) {
        this.myOurStudent = myOurStudent;
    }

    public MyAcademic getMyAcademic() {
        return myAcademic;
    }

    public void setMyAcademic(MyAcademic myAcademic) {
        this.myAcademic = myAcademic;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }

    private String genOrigPublicUri(){
        //String origUri = this.getBiography().getName().replaceAll("\\W", "").toLowerCase();
        String origUri = this.getBiography().getName().replaceAll("[^\\w\\u3400-\\u9FFF]", "").toLowerCase();
        this.setOrigPublicUri(origUri);
        return origUri;
    }

    public boolean hasFinishBiography() {
        if(biography == null){
            return false;
        }
        if(biography.getName() != null && !biography.getName().trim().equals("")
                && biography.getCurrentSchool() != null && !biography.getCurrentSchool().trim().equals("")
                && biography.getPosition() != null && !biography.getPosition().trim().equals("")
                && biography.getWebSite() != null && !biography.getWebSite().trim().equals("")
                && biography.getLocation() != null && !biography.getLocation().trim().equals("")){
            return true;
        }
        return false;
    }

    public boolean hasMySchool() {
        if(mySchool == null){
            return false;
        }
        if((mySchool.getMySchoolDesc() != null
                && !mySchool.getMySchoolDesc().trim().equals(""))
                || mySchool.getMaterials() != null
                && mySchool.getMaterials().size() > 0){
            return true;
        }
        return false;
    }

    public SchoolCountry getCountry() {
        return country;
    }

    public void setCountry(SchoolCountry country) {
        this.country = country;
    }
}
