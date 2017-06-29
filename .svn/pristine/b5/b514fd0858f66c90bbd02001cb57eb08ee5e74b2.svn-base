package cv.focus.core.domain.activity;

import cv.focus.core.domain.shared.Entity;

import javax.persistence.*;
import java.lang.annotation.Annotation;

/**
 * Created by 晓东 on 2017/4/19.
 */
@javax.persistence.Entity
@Table(name="kw_user_applyactivity")
public class UserApplyActivity implements Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    //活动标题
    private  String  activityName;
    //活动简介
    private  String  activityIntro;
    private  Integer  userId;

    /*public ApplyActivity getApplyActivity() {
        return applyActivity;
    }

    public void setApplyActivity(ApplyActivity applyActivity) {
        this.applyActivity = applyActivity;
    }*/

    //排序
    private  String  orderNum;

    // optional=true：可选，表示此对象可以没有，可以为null；false表示必须存在
   /* @ManyToOne(cascade = { CascadeType.REFRESH, CascadeType.MERGE }, optional = true)
    @JoinColumn(name = "userId")
    private ApplyActivity applyActivity;*/

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public String getActivityIntro() {
        return activityIntro;
    }

    public void setActivityIntro(String activityIntro) {
        this.activityIntro = activityIntro;
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
