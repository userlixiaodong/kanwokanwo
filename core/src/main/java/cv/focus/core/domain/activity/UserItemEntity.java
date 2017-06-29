package cv.focus.core.domain.activity;

import cv.focus.core.domain.shared.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by 晓东 on 2017/3/29.
 */
@javax.persistence.Entity
@Table(name="kw_user_item")
public class UserItemEntity implements Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
   //用户id
    private Integer userId;
    //活动id
    private Integer itemId;
    //下订单时间
    private Date createDate;
    //支付金额
    private Double money;
    //是否免费( 0 免费 1 收费)
    private String isFree;
    //用户名称
    private String userName;
    private String moblie;
    private String email;
    //1 基本信息 2 获取申请表 3提交申请 4 预付歀
    private String status;
    //文件url
    private String fileUrl;


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

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
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

    public String getMoblie() {
        return moblie;
    }

    public void setMoblie(String moblie) {
        this.moblie = moblie;
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

    public UserItemEntity(String userName,String moblie,String email){
        this.userName=userName;
        this.moblie=moblie;
        this.email=email;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }

    public UserItemEntity() {
    }
}
