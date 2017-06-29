package cv.focus.core.domain.user.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Administrator on 2016/9/12.
 */
@Entity
@Table
public class Specialization implements cv.focus.core.domain.shared.Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;// Read-only 唯一主键
    private Integer userId;
    private String userName;
    private Integer tutorId;
    private String tutorName;
    private Date specializationTime;
    private int specializationPeriod;
    private String nickname;
    private String mobile;
    private String email;
    private String comments;
    private int state;
    private Date insertTime;
    private float cost;

    public Specialization(){

    }

    public Specialization(Integer userId, String userName,Integer tutorId,String tutorName,Date specializationTime,int specializationPeriod,String nickname,String mobile,String email,String comments,int state,Date insertTime,float cost){

        this.userId = userId;
        this.userName = userName;
        this.tutorId = tutorId;
        this.tutorName = tutorName;
        this.specializationTime = specializationTime;
        this.specializationPeriod = specializationPeriod;
        this.nickname = nickname;
        this.mobile = mobile;
        this.email = email;
        this.comments = comments;
        this.state = state;
        this.insertTime = insertTime;
        this.cost = cost;
    }

    public Integer getId(){
        return this.id;
    }

    public void setUserId(Integer tutorId){
        this.userId = userId;
    }

    public Integer getUserId(){
        return this.userId;
    }

    public void setUserName(String tutorName){
        this.userName = userName;
    }

    public String getUserName(){
        return this.userName;
    }

    public void setTutorId(Integer tutorId){
        this.tutorId = tutorId;
    }

    public Integer getTutorId(){
        return this.tutorId;
    }

    public void setTutorName(String tutorName){
        this.tutorName = tutorName;
    }

    public String getTutorName(){
        return this.tutorName;
    }

    public void setSpecializationTime(Date specializationTime){
        this.specializationTime = specializationTime;
    }

    public Date getSpecializationTime(){
        return this.specializationTime;
    }

    public void setSpecializationPeriod(int specializationPeriod){
        this.specializationPeriod = specializationPeriod;
    }

    public int getSpecializationPeriod(){
        return this.specializationPeriod;
    }

    public void setNickname(String nickname){
        this.nickname = nickname;
    }

    public String getNickname(){
        return this.nickname;
    }

    public void setMobile(String mobile){
        this.mobile = mobile;
    }

    public String getMobile(){
        return this.mobile;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public String getEmail(){
        return this.email;
    }

    public void setComments(String comments){
        this.comments = comments;
    }

    public String getComments(){
        return this.comments;
    }

    public void setState(int state){
        this.state = state;
    }

    public int getState(){
        return this.state;
    }

    public void setInsertTime(Date insertTime){
        this.insertTime = insertTime;
    }

    public Date getInsertTime(){
        return this.insertTime;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }

    public void setCost(float cost){
        this.cost = cost;
    }

    public float getCost(){
        return this.cost;
    }

}