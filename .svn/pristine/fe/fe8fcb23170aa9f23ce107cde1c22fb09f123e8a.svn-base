package cv.focus.core.infrastructure.wechat;

import com.focusedu.utils.lang.EmojiFilter;
import org.json.JSONObject;

import java.io.Serializable;

/**
 * WechatUser
 * 微信开放平台
 * 
 * @author liuruichao
 * Created on 2016-04-14 14:51
 */
public class WechatUser implements Serializable {
    private static final long serialVersionUID = 1L;

	private String openId;
	private String token;
	private String nickName;
	private Integer sex; // 用户的性别，值为1时是男性，值为2时是女性，值为0时是未知
	private String province;
	private String city;
	private String country;
	private String headimgurl;// 用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。
    private String unionid; // 微信平台统一id

	public WechatUser() {
	}

	public WechatUser(JSONObject obj) {
		city = obj.getString("city");
		country = obj.getString("country");
		headimgurl = obj.getString("headimgurl");
		nickName = EmojiFilter.filterEmoji(obj.getString("nickname"));
		openId = obj.getString("openid");
		province = obj.getString("province");
		sex = obj.getInt("sex");
        unionid = obj.getString("unionid");
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getHeadimgurl() {
        return headimgurl;
    }

    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl;
    }

    public String getUnionid() {
        return unionid;
    }

    public void setUnionid(String unionid) {
        this.unionid = unionid;
    }

    @Override
    public String toString() {
        return "WechatUser{" +
                "openId='" + openId + '\'' +
                ", token='" + token + '\'' +
                ", nickName='" + nickName + '\'' +
                ", sex=" + sex +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", country='" + country + '\'' +
                ", headimgurl='" + headimgurl + '\'' +
                ", unionid='" + unionid + '\'' +
                '}';
    }
}
