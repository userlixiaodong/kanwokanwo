package cv.focus.core.domain.activity;

import cv.focus.core.domain.shared.Entity;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by 晓东 on 2017/3/29.
 * 活动表
 */
@javax.persistence.Entity
@Table(name="kw_item")
public class ItemEntity implements Entity {

    @Id
    private Integer itemId;
    private String itemName;
    //是否直播（0 无直播 1 直播）
    private String islive;
    //直播地址
    private String liveUrl;
    //项目介绍视频
    private String videoUrl;
    //项目介绍视频
    private String bitmap;
    //项目描述

    private Date startDate;
    private Date endDate;
    //项目描述
    private String description;
    //活动状态（0 先到先得 1 滚动申请 2 结束）
    private String itemType;
    //活动人数
    private Integer itemNum;
    //点击次数
    private Integer  chickNum;
    //点击次数
    private Integer  collectNum;
    //是否显示 0 不显示 1 显示

    public Integer getCollectNum() {
        return collectNum;
    }

    public void setCollectNum(Integer collectNum) {
        this.collectNum = collectNum;
    }

    private String isDisplay;
    //活动页面链接
    private String itemUrl;
    //是否有bannner(0 无 1 有)
    private String isbanner;
    //bannerURl链接
    private String bannerUrl;
    //排序号
    private String orderNum;
    //是否优惠
    private String isPrivilege;
    //优惠金额
    private Double privilegeMoney;
    //优惠图片
    private String PrivilegeImg;
    //是否免费
    private  String isFree;
    //钱
    private Double money;
    //标签
    private String tag;


    //-------------------------------------详细信息-------------------------------
    //详细图片
    private String dt_banner;

    public String getDt_banner() {
        return dt_banner;
    }

    public void setDt_banner(String dt_banner) {
        this.dt_banner = dt_banner;
    }

    public String getDt_location() {
        return dt_location;
    }

    public void setDt_location(String dt_location) {
        this.dt_location = dt_location;
    }

    public String getDt_time() {
        return dt_time;
    }

    public void setDt_time(String dt_time) {
        this.dt_time = dt_time;
    }

    public String getDt_people() {
        return dt_people;
    }

    public void setDt_people(String dt_people) {
        this.dt_people = dt_people;
    }

    public String getDt_intro() {
        return dt_intro;
    }

    public void setDt_intro(String dt_intro) {
        this.dt_intro = dt_intro;
    }

    //公司地址
    private String dt_location;
    //申请时间
    private String dt_time;
    //主办单位

    public String getDt_company() {
        return dt_company;
    }

    public void setDt_company(String dt_company) {
        this.dt_company = dt_company;
    }

    private String dt_company;
    //适合人群
    private String dt_people;
    //项目简介
    private String dt_intro;

    public String getIsPrivilege() {
        return isPrivilege;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public void setIsPrivilege(String isPrivilege) {
        this.isPrivilege = isPrivilege;
    }

    public Double getPrivilegeMoney() {
        return privilegeMoney;
    }

    public void setPrivilegeMoney(Double privilegeMoney) {
        this.privilegeMoney = privilegeMoney;
    }

    public String getPrivilegeImg() {
        return PrivilegeImg;
    }

    public void setPrivilegeImg(String privilegeImg) {
        PrivilegeImg = privilegeImg;
    }

    public String getIsFree() {
        return isFree;
    }

    public void setIsFree(String isFree) {
        this.isFree = isFree;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }



    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getIslive() {
        return islive;
    }

    public void setIslive(String islive) {
        this.islive = islive;
    }

    public String getLiveUrl() {
        return liveUrl;
    }

    public void setLiveUrl(String liveUrl) {
        this.liveUrl = liveUrl;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public String getBitmap() {
        return bitmap;
    }

    public void setBitmap(String bitmap) {
        this.bitmap = bitmap;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public Integer getItemNum() {
        return itemNum;
    }
    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
    }

    public Integer getChickNum() {
        return chickNum;
    }

    public void setChickNum(Integer chickNum) {
        this.chickNum = chickNum;
    }

    public String getIsDisplay() {
        return isDisplay;
    }

    public void setIsDisplay(String isDisplay) {
        this.isDisplay = isDisplay;
    }

    public String getItemUrl() {
        return itemUrl;
    }

    public void setItemUrl(String itemUrl) {
        this.itemUrl = itemUrl;
    }

    public String getIsbanner() {
        return isbanner;
    }

    public void setIsbanner(String isbanner) {
        this.isbanner = isbanner;
    }

    public String getBannerUrl() {
        return bannerUrl;
    }

    public void setBannerUrl(String bannerUrl) {
        this.bannerUrl = bannerUrl;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
