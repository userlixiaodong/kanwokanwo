package cv.focus.core.domain.activity;

import cv.focus.core.domain.shared.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/22.
 */
@javax.persistence.Entity
@Table(name="kw_saved")
public class SavedEntity implements Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    //收藏类型
    private String type;
    //收藏用户
    private Integer userid;

    public SavedEntity(String type, Integer userid, Integer savedid) {
        this.type = type;
        this.userid = userid;
        this.savedid = savedid;
        //默认状态为收藏
        this.flag = "1";
        this.createtime = new Date();
    }

    public SavedEntity() {
    }

    //被收藏者
    private  Integer savedid;
    //创建时间
    private Date createtime;
    //状态
    private String flag;

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getSavedid() {
        return savedid;
    }

    public void setSavedid(Integer savedid) {
        this.savedid = savedid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
