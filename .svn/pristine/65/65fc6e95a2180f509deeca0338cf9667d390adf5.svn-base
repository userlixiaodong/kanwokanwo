package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.interfaces.student.dto.MaterialDTO;

/**
 * AdmissionProfielDTO
 * 
 * @author liuruichao
 * Created on 2016-04-04 14:28
 */
public class AdmissionProfileDTO {
    private Integer userId;
    private String admissionProfileId;
    private String email;
    private String origPublicUri;
    private String publicUri;
    private MaterialDTO introductionVideo;
    private BiographyDTO biography;
    private MySchoolDTO mySchool;
    private MyLinksDTO myLinks;
    private MyAssociationDTO myAssociation;
    private MyCurriculumDTO myCurriculum;
    private MyFacultyDTO myFaculty;
    private MyHonorDTO myHonor;
    private MyOurStudentDTO myOurStudent;
    private Integer followCount;
    private SchoolApplicationDTO application;
    private MyAcademicDTO myAcademic;

    public AdmissionProfileDTO(AdmissionProfile admissionProfile) {
        admissionProfileId = admissionProfile.getAdmissionProfileId().getAdmissionProfileId();
        email = admissionProfile.getEmail();
        origPublicUri = admissionProfile.getOrigPublicUri();
        publicUri = admissionProfile.getPublicUri();
        if (admissionProfile.getIntroductionVideo() != null) {
            introductionVideo = new MaterialDTO(admissionProfile.getIntroductionVideo());
        }
        biography = new BiographyDTO(admissionProfile.getBiography());
        mySchool = new MySchoolDTO(admissionProfile.getMySchool());
        myLinks = new MyLinksDTO(admissionProfile.getMyLinks());
        myAssociation = new MyAssociationDTO(admissionProfile.getMyAssociation());
        myCurriculum = new MyCurriculumDTO(admissionProfile.getMyCurriculum());
        myFaculty = new MyFacultyDTO(admissionProfile.getMyFaculty());
        myHonor = new MyHonorDTO(admissionProfile.getMyHonor());
        myOurStudent = new MyOurStudentDTO(admissionProfile.getMyOurStudent());
        application = new SchoolApplicationDTO(admissionProfile.getApplication());
        myAcademic = new MyAcademicDTO(admissionProfile.getMyAcademic());
    }

    public String getAdmissionProfileId() {
        return admissionProfileId;
    }

    public void setAdmissionProfileId(String admissionProfileId) {
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

    public MaterialDTO getIntroductionVideo() {
        return introductionVideo;
    }

    public void setIntroductionVideo(MaterialDTO introductionVideo) {
        this.introductionVideo = introductionVideo;
    }

    public BiographyDTO getBiography() {
        return biography;
    }

    public void setBiography(BiographyDTO biography) {
        this.biography = biography;
    }

    public MySchoolDTO getMySchool() {
        return mySchool;
    }

    public void setMySchool(MySchoolDTO mySchool) {
        this.mySchool = mySchool;
    }

    public MyLinksDTO getMyLinks() {
        return myLinks;
    }

    public void setMyLinks(MyLinksDTO myLinks) {
        this.myLinks = myLinks;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public MyAssociationDTO getMyAssociation() {
        return myAssociation;
    }

    public void setMyAssociation(MyAssociationDTO myAssociation) {
        this.myAssociation = myAssociation;
    }

    public MyCurriculumDTO getMyCurriculum() {
        return myCurriculum;
    }

    public void setMyCurriculum(MyCurriculumDTO myCurriculum) {
        this.myCurriculum = myCurriculum;
    }

    public MyFacultyDTO getMyFaculty() {
        return myFaculty;
    }

    public void setMyFaculty(MyFacultyDTO myFaculty) {
        this.myFaculty = myFaculty;
    }

    public MyHonorDTO getMyHonor() {
        return myHonor;
    }

    public void setMyHonor(MyHonorDTO myHonor) {
        this.myHonor = myHonor;
    }

    public MyOurStudentDTO getMyOurStudent() {
        return myOurStudent;
    }

    public void setMyOurStudent(MyOurStudentDTO myOurStudent) {
        this.myOurStudent = myOurStudent;
    }

    public Integer getFollowCount() {
        return followCount;
    }

    public void setFollowCount(Integer followCount) {
        this.followCount = followCount;
    }

    public SchoolApplicationDTO getApplication() {
        return application;
    }

    public void setApplication(SchoolApplicationDTO application) {
        this.application = application;
    }

    public MyAcademicDTO getMyAcademic() {
        return myAcademic;
    }

    public void setMyAcademic(MyAcademicDTO myAcademic) {
        this.myAcademic = myAcademic;
    }
}
