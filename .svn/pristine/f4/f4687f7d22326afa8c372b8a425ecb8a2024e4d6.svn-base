package cv.focus.core.interfaces.school.facade.impl;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.application.AdmissionProfileService;
import cv.focus.core.application.UserService;
import cv.focus.core.domain.material.MaterialModule;
import cv.focus.core.domain.school.model.activity.AdmissionActivity;
import cv.focus.core.domain.school.model.profile.*;
import cv.focus.core.domain.school.service.AdmissionBadgesService;
import cv.focus.core.domain.student.model.Badge;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.interfaces.school.dto.AdActivityDTO;
import cv.focus.core.interfaces.school.dto.AdRemarkDTO;
import cv.focus.core.interfaces.school.dto.AdmissionProfileDTO;
import cv.focus.core.interfaces.school.dto.BiographyDTO;
import cv.focus.core.interfaces.school.dto.SchoolApplicationDTO;
import cv.focus.core.interfaces.school.dto.SchoolOurStudentDTO;
import cv.focus.core.interfaces.school.facade.AdmissionProfileServiceFacade;
import cv.focus.core.interfaces.user.facade.UserServiceFacade;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * AdmissionProfileServiceFacadeImpl
 * 
 * @author liuruichao
 * Created on 2016-04-02 13:12
 */
@Service
public class AdmissionProfileServiceFacadeImpl implements AdmissionProfileServiceFacade {
    @Resource
    private AdmissionProfileService admissionProfileService;
    @Resource
    private AdmissionBadgesService admissionBadgesService;
    @Resource
    private UserServiceFacade userServiceFacade;

    @Override
    public AdmissionProfile getProfileByEmail(String email) {
        return admissionProfileService.getProfileByEmail(email);
    }

    @Override
    public String getHomePageUrl(String email) {
        return admissionProfileService.getProfileByEmail(email).getPublicUri();
    }

    @Override
    public AdmissionProfile findAdmissionProfileByPublicUri(String uri) {
        return admissionProfileService.findAdmissionProfileByPublicUri(uri);
    }

    @Override
    public void updateMySchoolDesc(String email, String description) {
        admissionProfileService.updateSchoolDesc(email, description);
    }

    @Override
    public List<Badge> getBadges(AdmissionProfile admissionProfile, List<AdActivityDTO> activities) {
        return admissionBadgesService.generateBadges(admissionProfile, activities);
    }

    @Override
    public Integer calcuBadgesCompletionDegree(List<Badge> badges) {
        return admissionBadgesService.calculateCompletion(badges);
    }

    @Override
    public boolean checkEmail(String email) {
        String emailPattern = "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$";
        Pattern p = Pattern.compile(emailPattern);
        Matcher m = p.matcher(email);
        return m.matches();
    }

    @Override
    public boolean checkSNSAccount(String account) {
        String pattern = "^[a-zA-Z0-9\\._-]+$";
        Pattern p = Pattern.compile(pattern);
        Matcher m = p.matcher(account);
        return m.matches();
    }

    @Override
    public void updateMyLinks(String email, String linkEmail, String linkTwitter, String linkFacebook, String linkInstagram) {
        admissionProfileService.updateMyLinks(email, linkEmail, linkTwitter, linkFacebook, linkInstagram);
    }

    @Override
    public List<AdRemarkDTO> getRemarkByAdProfileId(String admissionProfileId) {
        List<AdmissionRemark> remarks = admissionProfileService.getRemarkByAdProfileId(new AdmissionProfileId(admissionProfileId));
        List<AdRemarkDTO> list = null;
        if (remarks != null && remarks.size() > 0) {
            list = new ArrayList<>(remarks.size());
            for (AdmissionRemark remark : remarks) {
                list.add(new AdRemarkDTO(remark));
            }
        } else {
            list = Collections.emptyList();
        }
        return list;
    }

    @Override
    public AdRemarkDTO addReamrk(String fromUser, String toUser, String impression) {
        AdmissionRemark remark = admissionProfileService.addRemark(fromUser, toUser, impression);
        return new AdRemarkDTO(remark);
    }

    @Override
    public void updateDesc(String params, MaterialModule module, String email) {
        JSONObject paramsObj = new JSONObject(params);
        String description = (String) paramsObj.get("description");
        switch(module){
            case MYSCHOOL:
                admissionProfileService.updateSchoolDesc(email, description);
                break;
            case MYASSOCIATION:
                admissionProfileService.updateMyAssociationDesc(email, description);
                break;
            case MYCURRICULUM:
                admissionProfileService.updateMyCurriculumDesc(email, description);
                break;
            case MYFACULTY:
                admissionProfileService.updateMyFacultyDesc(email, description);
                break;
            case MYHONOR:
                admissionProfileService.updateMyHonorDesc(email, description);
                break;
            case MYOURSTUDENT:
                admissionProfileService.updateMyOurStudentDesc(email, description);
                break;
            case MYACADEMICS:
                admissionProfileService.updateMyAcademicDesc(email, description);
                break;
        }

    }

//    List<AdmissionProfileDTO> getSchools(SchoolCountry country);
    @Override
    public List<AdmissionProfileDTO> getSchools(SchoolCountry country) {
        List<AdmissionProfile> admissionProfiles = admissionProfileService.getSchools(country);
        List<AdmissionProfileDTO> adProfilesDtos = new ArrayList<AdmissionProfileDTO>();
        if (admissionProfiles != null)
            for (AdmissionProfile adprofile : admissionProfiles) {
                adProfilesDtos.add(new AdmissionProfileDTO(adprofile));
            }
        return adProfilesDtos;
    }

    public  List<AdmissionProfile> getUSchools(SchoolCountry country){
        List<AdmissionProfile> admissionProfiles = admissionProfileService.getUSchools(country);

        return admissionProfiles;
    }

    public List<AdmissionProfile> getHSchools(SchoolCountry country){
        List<AdmissionProfile> admissionProfiles = admissionProfileService.getHSchools(country);

        return admissionProfiles;
    }

    @Override
    public List<AdmissionProfileDTO> findSchoolByKeywords(String name) {
        List<AdmissionProfile> admissionProfiles = admissionProfileService.findSchoolByKeywords(name);
        List<AdmissionProfileDTO> adProfilesDtos = new ArrayList<AdmissionProfileDTO>();
        if (admissionProfiles != null)
            for (AdmissionProfile adprofile : admissionProfiles) {
                adProfilesDtos.add(new AdmissionProfileDTO(adprofile));
            }
        return adProfilesDtos;
    }

    @Override
    public BiographyDTO updateSchoolNameAndRank(String admissionProfileId, String name, String rank) {
        Biography biography = admissionProfileService.updateSchoolNameAndRank(admissionProfileId, name, rank);
        return new BiographyDTO(biography);
    }

    @Override
    public List<StudentProfile> getOurStudents(String schoolName, Integer studentNum) {
        return admissionProfileService.getSchoolOurStudents(schoolName, 1, studentNum).getData();
    }

    @Override
    public int getOurStudentsCount(String name) {
        return admissionProfileService.getSchoolOurStudentsCount(name);
    }

    public WebPage<SchoolOurStudentDTO> getOurStudentList(String schoolName, Integer currentPage) {
        WebPage<StudentProfile> webPage = admissionProfileService.getSchoolOurStudents(schoolName, currentPage, 10);
        WebPage<SchoolOurStudentDTO> dtoWebPage = new WebPage<>();
        dtoWebPage.setCurrentPage(webPage.getCurrentPage());
        dtoWebPage.setStartCount(webPage.getStartCount());
        dtoWebPage.setEndCount(webPage.getEndCount());
        dtoWebPage.setTotalCount(webPage.getTotalCount());
        dtoWebPage.setTotalPage(webPage.getTotalPage());
        if (webPage.getData() != null && webPage.getData().size() > 0) {
            List<SchoolOurStudentDTO> list = new ArrayList<>(webPage.getData().size());
            for (StudentProfile profile : webPage.getData()) {
                list.add(new SchoolOurStudentDTO(profile));
            }
            dtoWebPage.setData(list);
        }
        return dtoWebPage;
    }

    @Override
    public BiographyDTO updateBiography(String admissionProfileId, String name, String rank,
                                        String location, String webSite, String phone, String other,
                                        String linkEmail, String linkFacebook, String linkTwitter, String linkInstagram,
                                        Integer schoolLevel, Integer lodge, String province, String city,
                                        String area, String createSchoolTime, String newbornNum, String schoolAcreage,
                                        String classSize, String teacherEducational, String teacherStudentRatio, String settings,String schoolSex) {
        Biography biography = new Biography(name,
                location, webSite, rank, phone,
                other, schoolLevel, lodge, province, city,
                area, createSchoolTime, newbornNum, schoolAcreage,
                classSize, teacherEducational, teacherStudentRatio,settings,schoolSex);
       //Biography biography =new Biography()
        MyLinks myLinks = new MyLinks(linkEmail, linkTwitter, linkFacebook, linkInstagram);
        admissionProfileService.updateBiography(new AdmissionProfileId(admissionProfileId), biography, myLinks);
        return new BiographyDTO(biography, myLinks);
    }

    @Override
    public SchoolApplicationDTO updateApplication(String admissionProfileId, String specialty, String requirement, String tuitionUrl, String admissionEmail, String applicationUrl, String docTitle, String ourStudentUrl, String visitUrl, String other, String enrollmentUrl, String advice, String enrollmentScale, String deadline, String tuition, String studiesGuide, String courseType, String culturePlan, String courseSys, String admissionSituation,Integer ranking,String ED,String issat
            ,Integer toeflscore,Integer middlesatscore,Integer middletoeflscore,Float middlegpascore,Float ieltsScore) {
        SchoolApplication application = new SchoolApplication(specialty, requirement, tuitionUrl, admissionEmail, applicationUrl, docTitle, ourStudentUrl, visitUrl, other, enrollmentUrl, advice, enrollmentScale, deadline, tuition, studiesGuide, courseType, culturePlan, courseSys, admissionSituation,ranking,ED,issat
                ,toeflscore,middlesatscore,middletoeflscore, middlegpascore,ieltsScore);
        admissionProfileService.updateApplication(admissionProfileId, application);
        return new SchoolApplicationDTO(application);
    }

    @Override
    public AdmissionProfileDTO getProfileDTOByPublicUri(String publicUri) {
        AdmissionProfile admissionProfile = admissionProfileService.findAdmissionProfileByPublicUri(publicUri);
        User user = userServiceFacade.findUserByEmail(admissionProfile.getEmail());
        AdmissionProfileDTO admissionProfileDTO = new AdmissionProfileDTO(admissionProfile);
        admissionProfileDTO.setFollowCount(userServiceFacade.getUserFollowCount(user.getUserId()));
        admissionProfileDTO.setUserId(user.getUserId());
        return admissionProfileDTO;
    }

    public static void main(String[] args) {
        Gson gson = new GsonBuilder().create();
        System.out.println(gson.toJson(new SchoolApplicationDTO(null)));
    }
}
