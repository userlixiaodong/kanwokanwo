package cv.focus.core.domain.activity;

import cv.focus.core.domain.shared.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by 晓东 on 2017/4/19.
 */

@javax.persistence.Entity
@Table(name="kw_course")
public class CourseEntity implements Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    //课程类型（1 SAT2  2 AP ）
    private String courseType;
    //课程名称
    private String courseName;
    //是否可用（0 不可用 1 可用 ）
    private String isDisplay;
    //满分
    private Integer fullScore;
    //排序号
    private Integer courseNum;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getIsDisplay() {
        return isDisplay;
    }

    public void setIsDisplay(String isDisplay) {
        this.isDisplay = isDisplay;
    }

    public Integer getFullScore() {
        return fullScore;
    }

    public void setFullScore(Integer fullScore) {
        this.fullScore = fullScore;
    }

    public Integer getCourseNum() {
        return courseNum;
    }

    public void setCourseNum(Integer courseNum) {
        this.courseNum = courseNum;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
