package cv.focus.core.domain.user.model;

import javax.persistence.*;

/**
 * Created by 晓东 on 2017/6/19.
 */
@Entity
@Table
public class WeChatUser implements cv.focus.core.domain.shared.Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;// Read-only 唯一主键
    //用户统一标识。针对一个微信开放平台帐号下的应用，同一用户的unionid是唯一的。
    private String unionid;
    //普通用户的标识，对当前开发者帐号唯一
    private String openid;
    //普通用户昵称
    private String nickname;
    //性别
    private String sex;
    //省份
    private String province;
    //城市
    private String city;
    //头像
    private String headimgurl;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUnionid() {
        return unionid;
    }

    public void setUnionid(String unionid) {
        this.unionid = unionid;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getHeadimgurl() {
        return headimgurl;
    }

    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
