package cv.focus.core.infrastructure.wechat;

import com.focusedu.utils.io.HttpRequestUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.json.JSONObject;

import java.util.Iterator;
import java.util.Map;

/**
 * WechatUtils
 * 微信开放平台
 * 
 * @author liuruichao
 * Created on 2016-04-14 15:11
 */
public final class WechatUtils {
	private static final Logger logger = Logger.getLogger(WechatUtils.class);
	private static String accessToken = null;
	private static long lastGetTokenTime = 0; // 最后一次获取token 时间
	private static Integer accessTokenExpiresIn = 7200; // token 过期时间，默认7200

	private static String jsapiTicket = null;
	private static long lastGetJsapiTicket = 0; // 最后一次获取jsapiticket的时间
	private static int jsapiTicketExpiresIn = 7200;// jsapiTicket 过期时间，默认7200

	/**
     * 微信登录回调,根据返回的code获得WechatUser
     * @param code
     * @return
     * @throws Exception
     */
    public static WechatUser getWechatUser(String code, WechatLoginType type) throws Exception {
		WechatUser wechatUser = null;
        // 获取access_token
        String url = null;
        if (type == WechatLoginType.LOGIN) {
            url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + WechatConfig.loginAppId
                    + "&secret=" + WechatConfig.loginAppSecret + "&code=" + code + "&grant_type=authorization_code";
        } else if (type == WechatLoginType.OAUTH) {
            // 第三方登录、推送
            url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="
				+ WechatConfig.appId + "&secret=" + WechatConfig.appSecret + "&code="
				+ code + "&grant_type=authorization_code";
        }
        String result = HttpRequestUtils.reqPost(url, null, "utf-8");
        if (!StringUtils.isBlank(result)) {
			JSONObject jsonObject = new JSONObject(result);
			String accessToken = jsonObject.getString("access_token");
			String openId = jsonObject.getString("openid");
			if (!StringUtils.isBlank(accessToken) && !StringUtils.isBlank(openId)) {
				// 微信登录成功, 获取微信用户信息
				url = "https://api.weixin.qq.com/sns/userinfo?access_token=" + accessToken + "&openid=" + openId;
				result = HttpRequestUtils.reqGet(url, "utf-8");
				JSONObject obj = new JSONObject(result);
				wechatUser = new WechatUser(obj);
				wechatUser.setToken(accessToken);
				logger.info(wechatUser);
			}
		}
		return wechatUser;
	}

	/**
	 * 获得微信 token
	 *
	 * @return AccessToken 出现异常则返回null
	 */
	public static String getWXAccessToken() {
		long curTime = System.currentTimeMillis();
		// token在有效期内直接返回
		if(accessToken != null &&
				curTime - lastGetTokenTime < 1000 * accessTokenExpiresIn) {
			return accessToken;
		}
		try {
			// token为null或者过了有效期则获取
			accessToken = null; // 超过有效期则置为null
			String resData = HttpRequestUtils.reqGet(WechatConfig.accessTokenUrl, "utf-8");
			if(resData != null && resData.length() > 0) {
				WechatAccessToken wechatAccessToken = new WechatAccessToken(resData);
				accessToken = wechatAccessToken.getAccessToken();
				accessTokenExpiresIn  = wechatAccessToken.getExpiresIn();
				// 获取成功更新获取时间
				lastGetTokenTime = curTime;
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("WeChatUtil.getWXAccessToken", e);
		}
		return accessToken;
	}

	/**
	 * 根据map生成xml
	 * @param params xml参数
	 * @return xmlStr
	 */
	public static String getXmlStr(Map<String, Object> params) {
		StringBuffer xmlStr = new StringBuffer();
		xmlStr.append("<xml>");

		for(String key : params.keySet()) {
			if(key.equals("Music") || key.equals("Video")) {
				xmlStr.append("<" + key + ">" + params.get(key) + "></" + key + ">");
			} else {
				xmlStr.append("<" + key + "><![CDATA[" + params.get(key) + "]]></" + key + ">");
			}
		}

		xmlStr.append("</xml>");
		return xmlStr.toString();
	}

    /**
	 * 生成微信支付签名
	 * @param params 签名需要的参数
	 * @return
	 */
	public static String getSign(Map<String, Object> params) {
		String sign = null;
		if(params != null && params.size() > 0) {
			StringBuffer stringA = new StringBuffer();
			for(String key : params.keySet()) {
				stringA.append("&").append(key).append("=").append(params.get(key));
			}

			String stringSignTemp = stringA.substring(1) + "&key=" + WechatConfig.key;
			;
			sign = DigestUtils.md5Hex(stringSignTemp).toUpperCase();
		}
		return sign;
	}

	/**
	 * 获取xml中的值
	 * @param xmlStr
	 * @param key
	 * @return
	 */
	public static String getXmlValue(String xmlStr, String key) {
		String result = null;
		try {
			Document document = DocumentHelper.parseText(xmlStr);
			// 获取根节点
	        Element rootElement = document.getRootElement();
	        Iterator<?> rootIterator = rootElement.elementIterator();
	        Element ele = null;
	        String name = null;
	        while(rootIterator.hasNext()) {
	        		ele = (Element) rootIterator.next();
	        		name = ele.getName();
	        		if(name.equals(key)) {
	        			result = ele.getText();
	        		}
	        }
		} catch(Exception e ) {
			e.printStackTrace();
			logger.error("WeChatUtil.getXmlValue", e);
		}
		return result;
	}

	/**
	 * 发送模板消息
	 * @return
	 */
	public static String sendTemplateMsg(JSONObject data) {
		String result = null;
		String sendMsgUrl = WechatConfig.sendTmplMessageUrl + getWXAccessToken();

		try {
			result = HttpRequestUtils.reqPost(sendMsgUrl, data.toString(), "utf-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
