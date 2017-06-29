package cv.focus.core.infrastructure.wechat;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;

/**
 * 微信 token
 * @author liuruichao
 *
 */
public class WechatAccessToken implements Serializable {
	private static final long serialVersionUID = 1L;
	private String accessToken;
	private Integer expiresIn;
	
	public WechatAccessToken() {}
	
	public WechatAccessToken(String jsonStr) {
		try {
			JSONObject obj = new JSONObject(jsonStr);
			this.accessToken = obj.getString("access_token");
			this.expiresIn = obj.getInt("expires_in");
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
	
	public String getAccessToken() {
		return accessToken;
	}
	public void setAccessToken(String accessToken) {
		this.accessToken = accessToken;
	}
	public Integer getExpiresIn() {
		return expiresIn;
	}
	public void setExpiresIn(Integer expiresIn) {
		this.expiresIn = expiresIn;
	} 
}
