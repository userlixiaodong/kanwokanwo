package cv.focus.core.domain.user.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Administrator on 2016/8/31.
 */
@Entity
@Table
public class Reservation implements cv.focus.core.domain.shared.Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;// Read-only 唯一主键

    private Integer userId;
    private String userName;
    private Integer tutorId;
    private String tutorName;
    private String tutorSchool;
    private Date reservationTime;
    private int reservationPeriod;
    private String nickname;
    private String mobile;
    private String email;
    private String comments;
    private int state;
    private Date insertTime;
    private Integer cost;

    public Reservation(){

    }

    public Reservation(Integer userId,String userName,Integer tutorId,String tutorName,String tutorSchool,Date reservationTime,int reservationPeriod,String nickname,String mobile,String email,String comments,int state,Date insertTime,Integer cost){
        this.userId = userId;
        this.userName = userName;
        this.tutorId = tutorId;
        this.tutorName = tutorName;
        this.tutorSchool = tutorSchool;
        this.reservationTime = reservationTime;
        this.reservationPeriod = reservationPeriod;
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

    public void setUserId(Integer userId){
        this.userId = userId;
    }

    public Integer getUserId(){
        return this.userId;
    }

    public void setUserName(String userName){
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

    public void setTutorSchool(String tutorSchool){
        this.tutorSchool = tutorSchool;
    }

    public String getTutorSchool(){
        return this.tutorSchool;
    }

    public void setReservationTime(Date reservationTime){
        this.reservationTime = reservationTime;
    }

    public Date getReservationTime(){
        return this.reservationTime;
    }

    public void setReservationPeriod(int reservationPeriod){
        this.reservationPeriod = reservationPeriod;
    }

    public int getReservationPeriod(){
        return this.reservationPeriod;
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

    public void setCost(Integer cost){
        this.cost = cost;
    }

    public Integer getCost(){
        return this.cost;
    }

}
