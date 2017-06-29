package cv.focus.core.domain.user.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by 1009 on 2016/10/31.
 */
@Entity
@Table(name="videoArea")
public class VideoArea implements cv.focus.core.domain.shared.Entity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    //主键自增
    private int videoId;
    //视频分类（1 高中 2 大学 3 研究生）
    private String videoType;
    //位图地址
    private String bitmap;
    //视频连接地址
    private String videoLink;
    //视频名称
    private String videoName;
    //视频备注
    private String remark;
    //排序号
    private int orderNum;
    //建立时间
    private Date createDate;

    public int getVideoId() {
        return videoId;
    }

    public String getVideoType() {
        return videoType;
    }

    public String getBitmap() {
        return bitmap;
    }

    public String getVideoLink() {
        return videoLink;
    }

    public String getVideoName() {
        return videoName;
    }

    public String getRemark() {
        return remark;
    }

    public int getOrderNum() {
        return orderNum;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setVideoId(int videoId) {
        this.videoId = videoId;
    }

    public void setVideoType(String videoType) {
        this.videoType = videoType;
    }

    public void setBitmap(String bitmap) {
        this.bitmap = bitmap;
    }

    public void setVideoLink(String videoLink) {
        this.videoLink = videoLink;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
