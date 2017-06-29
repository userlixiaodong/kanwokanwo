package cv.focus.core.interfaces.order;

import cv.focus.core.domain.shared.Entity;

import java.util.Date;

/**
 * Created by Administrator on 2017/6/21.
 */
public class OrderDTO implements Entity {

    //订单号
    private String bitmap;
    //订单号
    private String orderNo;

    public String getBitmap() {
        return bitmap;
    }

    public void setBitmap(String bitmap) {
        this.bitmap = bitmap;
    }

    //订单类型
    private String type;
    //活动编号
    private String itemId;
    //活动名称
    private String itemName;

    public OrderDTO(String bitmap,String orderNo, String type, String itemId, String itemName, String tag, String fee, String flag, String createTime, String startDate, String endDate) {
        this.bitmap = bitmap;
        this.orderNo = orderNo;
        this.type = type;
        this.itemId = itemId;
        this.itemName = itemName;
        this.tag = tag;
        this.fee = fee;
        this.flag = flag;
        this.createTime = createTime;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public OrderDTO(String bitmap,String orderNo, String type, String itemId, String itemName, String tag, String fee, String flag, String createTime, String startDate, String endDate,String desc) {
        this.bitmap = bitmap;
        this.orderNo = orderNo;
        this.type = type;
        this.itemId = itemId;
        this.itemName = itemName;
        this.tag = tag;
        this.fee = fee;
        this.flag = flag;
        this.createTime = createTime;
        this.startDate = startDate;
        this.endDate = endDate;
        this.desc = desc;
    }

    //活动标签
    private String tag;
    //订单金额
    private String fee;
    //订单状态
    private String flag;
    //创建时间
    private String createTime;
    //活动起始时间
    private String startDate;
    //活动结束时间
    private String endDate;
    //活动简介
    private String desc;

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }






    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
