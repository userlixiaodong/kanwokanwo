package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.school.model.profile.SchoolApplication;
import cv.focus.core.infrastructure.util.DataDictionary;
import org.apache.commons.beanutils.BeanUtils;


/**
 * SchoolApplicationDTO
 *
 * @author liuruichao
 * Created on 2016-05-27 18:27
 */
public class SchoolApplicationDTO {

    // 国外院校 begin
    private String schoolType; // 学校类型
    private String specialty; // 优势专业
    private String requirement; // 申请要求
    private String tuitionUrl; // 学费及奖学金网址
    private String admissionEmail; //招生邮箱
    private String applicationUrl; //申请网址
    private String docTitle; // 文书题目
    private String ourStudentUrl;// 毕业生去向
    private String visitUrl; // 申请参观网址
    private String other;
    //新增
    private Integer ranking;
    private String ED;
    private String issat;
    private Integer toeflscore;
    private Integer middletoeflscore;

    public void setMiddlesatscore(Integer middlesatscore) {
        this.middlesatscore = middlesatscore;
    }

    public void setMiddlegpascore(Float middlegpascore) {
        this.middlegpascore = middlegpascore;
    }

    public Integer getMiddlesatscore() {
        return middlesatscore;
    }

    public Float getMiddlegpascore() {
        return middlegpascore;
    }

    private Integer middlesatscore;
    private Float middlegpascore;

    public Float getIeltsScore() {
        return ieltsScore;
    }

    public void setIeltsScore(Float ieltsScore) {
        this.ieltsScore = ieltsScore;
    }

    private Float ieltsScore;

    // 国外院校 end

    // 国内院校信息 begin
    private String enrollmentUrl; // 招生网址
    private String advice; // 咨询方式
    private String enrollmentScale; // 招生规模
    private String deadline; // 截止时间
    private String tuition; // 学费
    private String studiesGuide;// 升学指导
    private String courseType; // 课程类型
    private String culturePlan; //  培养方案
    private String courseSys; // 课程体系
    private String admissionSituation; // 录取情况
    // 国内院校信息 end

    public SchoolApplicationDTO(SchoolApplication application) {
        if (application != null) {
            try {
                BeanUtils.copyProperties(this, application);
            } catch (Exception ignored) {
                // ignored
            }
        }
    }

    public String getSchoolType() {
        return schoolType;
    }

    public void setSchoolType(String schoolType) {
        this.schoolType = schoolType;
    }

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    public String getRequirement() {
        return requirement;
    }

    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    public String getTuitionUrl() {
        return tuitionUrl;
    }

    public void setTuitionUrl(String tuitionUrl) {
        this.tuitionUrl = tuitionUrl;
    }

    public String getAdmissionEmail() {
        return admissionEmail;
    }

    public void setAdmissionEmail(String admissionEmail) {
        this.admissionEmail = admissionEmail;
    }

    public String getApplicationUrl() {
        return applicationUrl;
    }

    public void setApplicationUrl(String applicationUrl) {
        this.applicationUrl = applicationUrl;
    }

    public String getDocTitle() {
        return docTitle;
    }

    public void setDocTitle(String docTitle) {
        this.docTitle = docTitle;
    }

    public String getOurStudentUrl() {
        return ourStudentUrl;
    }

    public void setOurStudentUrl(String ourStudentUrl) {
        this.ourStudentUrl = ourStudentUrl;
    }

    public String getVisitUrl() {
        return visitUrl;
    }

    public void setVisitUrl(String visitUrl) {
        this.visitUrl = visitUrl;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    public String getEnrollmentUrl() {
        return enrollmentUrl;
    }

    public void setEnrollmentUrl(String enrollmentUrl) {
        this.enrollmentUrl = enrollmentUrl;
    }

    public String getAdvice() {
        return advice;
    }

    public void setAdvice(String advice) {
        this.advice = advice;
    }

    public String getEnrollmentScale() {
        return enrollmentScale;
    }

    public void setEnrollmentScale(String enrollmentScale) {
        this.enrollmentScale = enrollmentScale;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getTuition() {
        return tuition;
    }

    public void setTuition(String tuition) {
        this.tuition = tuition;
    }

    public String getStudiesGuide() {
        return studiesGuide;
    }

    public void setStudiesGuide(String studiesGuide) {
        this.studiesGuide = studiesGuide;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    public String getCulturePlan() {
        return culturePlan;
    }

    public void setCulturePlan(String culturePlan) {
        this.culturePlan = culturePlan;
    }

    public String getCourseSys() {
        return courseSys;
    }

    public void setCourseSys(String courseSys) {
        this.courseSys = courseSys;
    }

    public String getAdmissionSituation() {
        return admissionSituation;
    }

    public void setAdmissionSituation(String admissionSituation) {
        this.admissionSituation = admissionSituation;
    }

    public Integer getRanking(){return ranking;}

    public void setRanking(Integer ranking){this.ranking = ranking;}

    public String getED(){return ED;}

    public void setED(String ED){this.ED = ED;}

    public String getIssat(){return issat;}

    public void setIssat(String issat){
        this.issat = issat;
    }

    public Integer getToeflscore(){return toeflscore;}

    public void setToeflscore(Integer toeflscore){this.toeflscore = toeflscore;}

    public Integer getMiddletoeflscore(){return middletoeflscore;}

    public void setMiddletoeflscore(Integer middletoeflscore){this.middletoeflscore = middletoeflscore;}

    //public Integer getMiddlesatscore(){return middlesatscore;}

    //public void setMiddlesatscore(Integer middlesatscore){this.middlesatscore = middlesatscore;}

    //public Float getMiddlegpascore(){return middlegpascore;}

    //public void setMiddlegpascore(Float middlegpascore){this.middlegpascore = middlegpascore;}

    //public Float getIeltsScore(){return ieltsScore;}

    //public void setIeltsScore(Float ieltsScore){this.ieltsScore = ieltsScore;}
}
