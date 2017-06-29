package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.school.model.profile.Biography;
import cv.focus.core.domain.school.model.profile.MyLinks;
import cv.focus.core.domain.school.model.profile.SchoolLevel;
import cv.focus.core.infrastructure.util.DataDictionary;
import org.apache.commons.beanutils.BeanUtils;

/**
 * BiographyDTO
 *
 * @author liuruichao
 * Created on 2016-04-04 14:32
 */
public class BiographyDTO {

    private String name;
    private String currentSchool; // 所在院校
    private String position; // 职务
    private String location; // 地区
    private String webSite; // 学校官网
    private String avatarUrl; // 头像url
    private String linkEmail; // 联系邮箱
    private String schoolRank;// 学校排名
    private String phone; // 电话
    private String biographyOther; // 其他
    private String linkTwitter;
    private String linkFacebook;
    private String linkInstagram;
    private Integer schoolLevel; // 学校类型
    private Integer lodge; // 是否寄宿
    private String province; // 省
    private String city; // 市
    private String area; // 区
    private String createSchoolTime;// 建校时间
    private String newbornNum; // 新生人数
    private String schoolAcreage; // 面积
    private String classSize; // 班级大小
    private String teacherEducational; // 教师学历
    private String teacherStudentRatio; // 师生比例
    private String schoolBgImg; // 学校背景图片
    private String settings;//地理环境
    private String schoolSex;//男女校

    //中文名
    private String cname;

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public BiographyDTO(Biography biography, MyLinks myLinks) {
        this(biography);
        this.linkEmail = myLinks.getLinkEmail();
        this.linkTwitter = myLinks.getLinkTwitter();
        this.linkFacebook = myLinks.getLinkFacebook();
        this.linkInstagram = myLinks.getLinkInstagram();
    }

    public BiographyDTO(Biography biography) {
        this.avatarUrl = biography.getAvatar();
        if (biography != null) {
            try {
                BeanUtils.copyProperties(this, biography);
            } catch (Exception ignored) {
            }
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCurrentSchool() {
        return currentSchool;
    }

    public void setCurrentSchool(String currentSchool) {
        this.currentSchool = currentSchool;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getWebSite() {
        return webSite;
    }

    public void setWebSite(String webSite) {
        this.webSite = webSite;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    public String getLinkEmail() {
        return linkEmail;
    }

    public void setLinkEmail(String linkEmail) {
        this.linkEmail = linkEmail;
    }

    public String getSchoolRank() {
        return schoolRank;
    }

    public void setSchoolRank(String schoolRank) {
        this.schoolRank = schoolRank;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBiographyOther() {
        return biographyOther;
    }

    public void setBiographyOther(String biographyOther) {
        this.biographyOther = biographyOther;
    }

    public String getLinkTwitter() {
        return linkTwitter;
    }

    public void setLinkTwitter(String linkTwitter) {
        this.linkTwitter = linkTwitter;
    }

    public String getLinkFacebook() {
        return linkFacebook;
    }

    public void setLinkFacebook(String linkFacebook) {
        this.linkFacebook = linkFacebook;
    }

    public String getLinkInstagram() {
        return linkInstagram;
    }

    public void setLinkInstagram(String linkInstagram) {
        this.linkInstagram = linkInstagram;
    }

    public Integer getSchoolLevel() {
        return schoolLevel;
    }

    public void setSchoolLevel(Integer schoolLevel) {
        this.schoolLevel = schoolLevel;
    }

    public Integer getLodge() {
        return lodge;
    }

    public void setLodge(Integer lodge) {
        this.lodge = lodge;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }


    public String getCreateSchoolTime() {
        return createSchoolTime;
    }

    public void setCreateSchoolTime(String createSchoolTime) {
        this.createSchoolTime = createSchoolTime;
    }

    public String getNewbornNum() {
        return newbornNum;
    }

    public void setNewbornNum(String newbornNum) {
        this.newbornNum = newbornNum;
    }

    public String getSchoolAcreage() {
        return schoolAcreage;
    }

    public void setSchoolAcreage(String schoolAcreage) {
        this.schoolAcreage = schoolAcreage;
    }

    public String getClassSize() {
        return classSize;
    }

    public void setClassSize(String classSize) {
        this.classSize = classSize;
    }

    public String getTeacherEducational() {
        return teacherEducational;
    }

    public void setTeacherEducational(String teacherEducational) {
        this.teacherEducational = teacherEducational;
    }

    public String getTeacherStudentRatio() {
        return teacherStudentRatio;
    }

    public String getSchoolBgImg() {
        return schoolBgImg;
    }

    public void setSchoolBgImg(String schoolBgImg) {
        this.schoolBgImg = schoolBgImg;
    }

    public String getSettings() {
        return settings;
    }

    public void setSettings(String settings) {
        this.settings = settings;
    }

    public String getSchoolSex() {
        return schoolSex;
    }

    public void setSchoolSex(String schoolSex) {
        this.schoolSex = schoolSex;
    }

    public void setTeacherStudentRatio(String teacherStudentRatio) {
        this.teacherStudentRatio = teacherStudentRatio;
    }
}
