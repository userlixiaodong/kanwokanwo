package cv.focus.core.domain.activity;

import cv.focus.core.domain.shared.Entity;

import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;

/**
 * Created by 晓东 on 2017/4/19.
 */
@javax.persistence.Entity
@Table(name="kw_user_score")
public class UserScore implements Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    //(1 SAT2   2 AP )
    private String exam_type;
    //考试名称
    private String examName;
    //考试内容(数据字典id)
    private String examID;
    //分数
    private Integer score;
    //userId
    private Integer userId;
    //orderNum
    private String orderNum;


   /* @ManyToOne(cascade = { CascadeType.REFRESH, CascadeType.MERGE }, optional = true)
    @JoinColumn(name = "applyActivityId")
    private ApplyActivity applyActivityScore;*/

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getExam_type() {
        return exam_type;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /* public ApplyActivity getApplyActivityScore() {
        return applyActivityScore;
    }

    public void setApplyActivityScore(ApplyActivity applyActivityScore) {
        this.applyActivityScore = applyActivityScore;
    }*/

    public void setExam_type(String exam_type) {
        this.exam_type = exam_type;
    }

    public String getExamName() {
        return examName;
    }

    public void setExamName(String examName) {
        this.examName = examName;
    }

    public String getExamID() {
        return examID;
    }

    public void setExamID(String examID) {
        this.examID = examID;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
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