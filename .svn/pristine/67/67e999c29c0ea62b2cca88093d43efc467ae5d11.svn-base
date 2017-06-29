package cv.focus.core.interfaces.school.facade;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.material.MaterialModule;
import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.school.model.profile.Biography;
import cv.focus.core.domain.school.model.profile.SchoolCountry;
import cv.focus.core.domain.school.model.profile.SchoolLevel;
import cv.focus.core.domain.student.model.Badge;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.interfaces.school.dto.AdActivityDTO;
import cv.focus.core.interfaces.school.dto.AdRemarkDTO;
import cv.focus.core.interfaces.school.dto.AdmissionProfileDTO;
import cv.focus.core.interfaces.school.dto.BiographyDTO;
import cv.focus.core.interfaces.school.dto.SchoolApplicationDTO;
import cv.focus.core.interfaces.school.dto.SchoolOurStudentDTO;

import java.util.List;

/**
 * AdmissionProfileServiceFacade
 * 
 * @author liuruichao
 * Created on 2016-04-02 13:11
 */
public interface AdmissionProfileServiceFacade {

    AdmissionProfile getProfileByEmail(String email);

    String getHomePageUrl(String email);

    AdmissionProfile findAdmissionProfileByPublicUri(String uri);

    void updateMySchoolDesc(String email, String description);

    List<Badge> getBadges(AdmissionProfile admissionProfile, List<AdActivityDTO> activities);

    Integer calcuBadgesCompletionDegree(List<Badge> badges);

    boolean checkEmail(String email);

    boolean checkSNSAccount(String account);

    void updateMyLinks(String email, String linkEmail, String linkTwitter, String linkFacebook, String linkInstagram);

    List<AdRemarkDTO> getRemarkByAdProfileId(String admissionProfileId);

    AdRemarkDTO addReamrk(String fromUser, String toUser, String impression);

    void updateDesc(String params, MaterialModule module, String email);

    List<AdmissionProfileDTO> getSchools(SchoolCountry country);

    /**新增加方法**/
    List<AdmissionProfile> getUSchools(SchoolCountry country);

    List<AdmissionProfile> getHSchools(SchoolCountry country);

    List<AdmissionProfileDTO> findSchoolByKeywords(String name);


    BiographyDTO updateSchoolNameAndRank(String admissionProfileId, String name, String rank);

    List<StudentProfile> getOurStudents(String name, Integer studentNum);

    int getOurStudentsCount(String name);

    WebPage<SchoolOurStudentDTO> getOurStudentList(String schoolName, Integer currentPage);

    BiographyDTO updateBiography(String admissionProfileId, String name, String rank, String location, String webSite, String phone, String other, String linkEmail, String linkFacebook, String linkTwitter, String linkInstagram, Integer schoolLevel, Integer lodge, String province, String city, String area, String createSchoolTime, String newbornNum, String schoolAcreage, String classSize, String teacherEducational, String teacherStudentRatio,String settings,String schoolSex);

    SchoolApplicationDTO updateApplication(String admissionProfileId,String specialty, String requirement, String tuitionUrl, String admissionEmail, String applicationUrl, String docTitle, String ourStudentUrl, String visitUrl, String other, String enrollmentUrl, String advice, String enrollmentScale, String deadline, String tuition, String studiesGuide, String courseType, String culturePlan, String courseSys, String admissionSituation,Integer ranking,String ED,String issat
            ,Integer toeflscore,Integer middlesatscore,Integer middletoeflscore,Float middlegpascore,Float ieltsScore);
    AdmissionProfileDTO getProfileDTOByPublicUri(String publicUri);
}
