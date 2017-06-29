package cv.focus.core.domain.order;

import cv.focus.common.infrastructure.util.UtilNumber;
import cv.focus.core.domain.shared.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/4/20.
 */
@javax.persistence.Entity
@Table(name="kw_order")
public class Order implements Entity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    //订单号
    private String orderNo;
    //用户编号
    private Integer userId;
    //订单类型
    private String type;
    //活动编号
    private Integer itemId;

    //活动名称
    private String itemName;
    //订单金额
    private Double fee;
    //订单状态
    private String flag;
    //创建时间
    private Date createTime;
    //支付时间
    private Date payTime;

    public String getBuyerEmail() {
        return buyerEmail;
    }

    public void setBuyerEmail(String buyerEmail) {
        this.buyerEmail = buyerEmail;
    }

    public String getBuyeId() {
        return buyeId;
    }

    public void setBuyeId(String buyeId) {
        this.buyeId = buyeId;
    }

    public String getIsSuccess() {
        return isSuccess;
    }

    public void setIsSuccess(String isSuccess) {
        this.isSuccess = isSuccess;
    }

    public String getNotifyId() {
        return notifyId;
    }

    public void setNotifyId(String notifyId) {
        this.notifyId = notifyId;
    }


    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    //买家邮件
    private String buyerEmail;
    //买家ID
    private String buyeId;
    //是否成功
    private String isSuccess;
    //通知ID
    private String notifyId;
    //交款类型
    private String paymentType;

    public Order(){

    }
    public Order(Integer userId,String type,Integer itemId,String itemName,Double fee){
        this.userId = userId;
        this.type = type;
        this.itemId = itemId;
        this.itemName = itemName;
        this.orderNo = generateOrderNo(userId,type,itemId);
        this.fee = fee;
        //创建订单时，订单状态为0 未支付状态
        this.flag = "0";
        this.createTime = new Date();
    }



    //建立订单编号
    private String generateOrderNo(Integer userId,String type,Integer itemId){
        String orderNoG = "";
        //获取当前时间
        Date date=new Date();
        DateFormat format=new SimpleDateFormat("yyyyMMddHHmmss");
        String time=format.format(date);
        //订单号是由12位时间戳，6位用户编号，1位类型，3位活动号，4位随机号
        orderNoG = time + UtilNumber.frontCompWithZero(userId,6) + type + UtilNumber.frontCompWithZero(itemId,3) + UtilNumber.frontCompWithZero(Integer.parseInt(UtilNumber.getRandomN(4)),6);
        return orderNoG;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Double getFee() {
        return fee;
    }

    public void setFee(Double fee) {
        this.fee = fee;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }


    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
