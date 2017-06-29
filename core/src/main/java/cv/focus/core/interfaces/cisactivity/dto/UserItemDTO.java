package cv.focus.core.interfaces.cisactivity.dto;
import cv.focus.core.domain.school.model.profile.SchoolApplication;
import cv.focus.core.domain.shared.Entity;
import org.apache.commons.beanutils.BeanUtils;

import java.util.Date;
/**
 * Created by Administrator on 2017/3/29.
 */
public class UserItemDTO implements Entity {

    private String id;
    //用户id
    private String userId;
    //活动id
    private String itemId;
    //活动名称
    private String itemName;

    public void setItemUrl(String itemUrl) {
        this.itemUrl = itemUrl;
    }

    //活动地址
    private String itemUrl;
    //下订单时间
    private String createDate;
    //支付金额
    private String money;
    //是否免费( 0 免费 1 收费)
    private String isFree;
    //用户名称
    private String userName;
    private String mobile;
    private String email;
    //1 基本信息 2 获取申请表 3提交申请 4 预付歀
    private String status;
    //文件url
    private String fileUrl;

    public String getItemUrl() {
        return itemUrl;
    }

    public UserItemDTO(String itemName, String itemUrl, String id, String userId, String itemId, String createDate, String money, String isFree, String userName, String mobile, String email, String status, String fileUrl) {
        this.itemName = itemName;
        this.itemUrl = itemUrl;
        this.id = id;
        this.userId = userId;
        this.itemId= itemId;
        this.createDate = createDate;
        this.money = money;
        this.isFree = isFree;
        this.userName = userName;
        this.mobile = mobile;
        this.email = email;
        this.status = status;
        this.fileUrl = fileUrl;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public String getIsFree() {
        return isFree;
    }

    public void setIsFree(String isFree) {
        this.isFree = isFree;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String moblie) {
        this.mobile = moblie;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFileUrl() {
        return fileUrl;
    }

    public void setFileUrl(String fileUrl) {
        this.fileUrl = fileUrl;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
