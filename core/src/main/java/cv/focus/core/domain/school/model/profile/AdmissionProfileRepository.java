package cv.focus.core.domain.school.model.profile;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.interfaces.school.dto.AdmissionProfileDTO;

import java.util.List;

/**
 * AdmissionOfficerProfileRepository
 *
 * @author liuruichao
 * Created on 2016-04-02 12:58
 */
public interface AdmissionProfileRepository {


    AdmissionProfile findById(AdmissionProfileId admissionProfileId);

    AdmissionProfile findByEmail(String email);

    AdmissionProfile findByPublicUri(String publicUri);

    void store(AdmissionProfile admissionProfile);

    List<AdmissionProfile> findByOrigPublicUri(String origPublicUri);

    List<AdmissionRemark> findRemarkByProfileId(AdmissionProfileId admissionProfileId);

    List<AdmissionProfile> getSchools(SchoolCountry country);

    List<AdmissionProfile> getUSchools(SchoolCountry country);

    List<AdmissionProfile> getHSchools(SchoolCountry country);

    List<StudentProfile> findOurStudents(String schoolName, Integer startIndex, Integer maxResult);

    int queryOurStudentsCount(String name);

    List<AdmissionProfile> findSchoolByKeywords(String name);

    WebPage<Object> querySchools(String keywords, WebPage<Object> webPage);

    WebPage<Object> queryMySchools(Integer userId, WebPage<Object> webPage);

    WebPage<Object> getSchoolsList4Page(AdmissionProfile admissionProfile, WebPage<Object> webPage,String strLodge,String schoolLevel,String toeflscore,String ieltsScore);

    WebPage queryUniversity(String schoolLevel, WebPage page);

    WebPage queryAllSchools(WebPage page);
}
