package cv.focus.core.domain.activity;

import cv.focus.core.domain.shared.Entity;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by 晓东 on 2017/4/19.
 */
@javax.persistence.Entity
@Table(name="kw_apply_activity")
public class ApplyActivity implements Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    //用户id
    private Integer userId;
    //姓名（中文）
    private String name;
    //性别
    private String sex;
    //英文名称
    private String englishName;
    //出生年月
    private String birthday;
    //高中课程类型（1 AP 2 A-level 3 IB  4 普通高中 5 其他）
    private String schoolType;
    //就读学校
    private String currentSchool;
    //高中开始时间
    private String highSchoolStartDate;
    //高中结束时间
    private String highSchoolEndDate;
    //手机号
    private String phone;
    //邮箱
    private String email;
    //skype号码
    private String skypeId;
    //身份证ID
    private String cardID;
    //家庭住址
    private String address;
    private String firstName;
    private String lastName;
    private String englishHighSchool;

    private String mailingAddress;
    //SAT总分
    private Integer satTotalScore;
    //阅读
    private Integer CR;
    //数学
    private Integer mathematics;
    //总分
    private Integer ACT;
    //ACT 英语
    private Integer ACT_english;
    //ACT数学
    private Integer ACT_Math;
    //ACT阅读
    private Integer ACT_Reading;
    //ACT科学
    private Integer ACT_Science;
    //托福总分
    private Double TOEFL;
    //阅读
    private Double TOEFL_Reading;
    //写作
    private Double TOEFL_Writing;
    //听力
    private Double TOEFL_Listening;
    //口语
    private Double TOEFL_Speaking;
    private Double IELTS;
    private Double IELTS_Reading;
    private Double IELTS_Writing;
    private Double IELTS_Speaking;
    private Double IELTS_Listening;
    //预估的GPA
    private Double GPA;

    //一个用户可能包含多个活动
    // @OneToMany(cascade={CascadeType.PERSIST,CascadeType.MERGE,CascadeType.REMOVE})
    // mappedBy="order": 指明Order类为双向关系维护端，负责外键的更新
    /*@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "applyActivity")
    private Set<UserApplyActivity> userApplyActivity = new HashSet<UserApplyActivity>();

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "applyActivityScore")
    private Set<UserScore> userScore = new HashSet<UserScore>();*/



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getACT_Reading() {
        return ACT_Reading;
    }

    public void setACT_Reading(Integer ACT_Reading) {
        this.ACT_Reading = ACT_Reading;
    }

    public Double getIELTS_Listening() {
        return IELTS_Listening;
    }

    public void setIELTS_Listening(Double IELTS_Listening) {
        this.IELTS_Listening = IELTS_Listening;
    }

    public Integer getACT_Science() {
        return ACT_Science;
    }

    public void setACT_Science(Integer ACT_Science) {
        this.ACT_Science = ACT_Science;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEnglishHighSchool() {
        return englishHighSchool;
    }

    public void setEnglishHighSchool(String englishHighSchool) {
        this.englishHighSchool = englishHighSchool;
    }

    public String getCardID() {
        return cardID;
    }
    public void setCardID(String cardID) {
        this.cardID = cardID;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEnglishName() {
        return englishName;
    }

    public void setEnglishName(String englishName) {
        this.englishName = englishName;
    }



    public String getSchoolType() {
        return schoolType;
    }

    public void setSchoolType(String schoolType) {
        this.schoolType = schoolType;
    }

    public String getCurrentSchool() {
        return currentSchool;
    }

    public void setCurrentSchool(String currentSchool) {
        this.currentSchool = currentSchool;
    }



   /* public Set<UserApplyActivity> getUserApplyActivity() {
        return userApplyActivity;
    }

    public void setUserApplyActivity(Set<UserApplyActivity> userApplyActivity) {
        this.userApplyActivity = userApplyActivity;
    }

    public Set<UserScore> getUserScore() {
        return userScore;
    }

    public void setUserScore(Set<UserScore> userScore) {
        this.userScore = userScore;
    }*/

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getHighSchoolStartDate() {
        return highSchoolStartDate;
    }

    public void setHighSchoolStartDate(String highSchoolStartDate) {
        this.highSchoolStartDate = highSchoolStartDate;
    }

    public String getHighSchoolEndDate() {
        return highSchoolEndDate;
    }

    public void setHighSchoolEndDate(String highSchoolEndDate) {
        this.highSchoolEndDate = highSchoolEndDate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSkypeId() {
        return skypeId;
    }

    public void setSkypeId(String skypeId) {
        this.skypeId = skypeId;
    }

    public String getMailingAddress() {
        return mailingAddress;
    }

    public void setMailingAddress(String mailingAddress) {
        this.mailingAddress = mailingAddress;
    }

    public Integer getSatTotalScore() {
        return satTotalScore;
    }

    public void setSatTotalScore(Integer satTotalScore) {
        this.satTotalScore = satTotalScore;
    }

    public Integer getCR() {
        return CR;
    }

    public void setCR(Integer CR) {
        this.CR = CR;
    }

    public Integer getMathematics() {
        return mathematics;
    }

    public void setMathematics(Integer mathematics) {
        this.mathematics = mathematics;
    }

    public Integer getACT() {
        return ACT;
    }

    public void setACT(Integer ACT) {
        this.ACT = ACT;
    }

    public Integer getACT_english() {
        return ACT_english;
    }

    public void setACT_english(Integer ACT_english) {
        this.ACT_english = ACT_english;
    }

    public Integer getACT_Math() {
        return ACT_Math;
    }

    public void setACT_Math(Integer ACT_Math) {
        this.ACT_Math = ACT_Math;
    }

    public Double getTOEFL() {
        return TOEFL;
    }

    public void setTOEFL(Double TOEFL) {
        this.TOEFL = TOEFL;
    }

    public Double getTOEFL_Reading() {
        return TOEFL_Reading;
    }

    public void setTOEFL_Reading(Double TOEFL_Reading) {
        this.TOEFL_Reading = TOEFL_Reading;
    }

    public Double getTOEFL_Writing() {
        return TOEFL_Writing;
    }

    public void setTOEFL_Writing(Double TOEFL_Writing) {
        this.TOEFL_Writing = TOEFL_Writing;
    }

    public Double getTOEFL_Listening() {
        return TOEFL_Listening;
    }

    public void setTOEFL_Listening(Double TOEFL_Listening) {
        this.TOEFL_Listening = TOEFL_Listening;
    }

    public Double getTOEFL_Speaking() {
        return TOEFL_Speaking;
    }

    public void setTOEFL_Speaking(Double TOEFL_Speaking) {
        this.TOEFL_Speaking = TOEFL_Speaking;
    }

    public Double getIELTS() {
        return IELTS;
    }

    public void setIELTS(Double IELTS) {
        this.IELTS = IELTS;
    }

    public Double getIELTS_Reading() {
        return IELTS_Reading;
    }

    public void setIELTS_Reading(Double IELTS_Reading) {
        this.IELTS_Reading = IELTS_Reading;
    }

    public Double getIELTS_Writing() {
        return IELTS_Writing;
    }

    public void setIELTS_Writing(Double IELTS_Writing) {
        this.IELTS_Writing = IELTS_Writing;
    }

    public Double getIELTS_Speaking() {
        return IELTS_Speaking;
    }

    public void setIELTS_Speaking(Double IELTS_Speaking) {
        this.IELTS_Speaking = IELTS_Speaking;
    }

    public Double getGPA() {
        return GPA;
    }

    public void setGPA(Double GPA) {
        this.GPA = GPA;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
