package cv.focus.core.infrastructure.wechat;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.Properties;

/**
 * 微信相关配置
 * @author liuruichao
 *
 */
public final class WechatConfig {
	private static Logger logger = Logger.getLogger(WechatConfig.class);
	public static final String appId;
	public static final String appSecret;
	public static final String mchId;
	/** 网站根目录 例如:http://tweixin.360highschool.com */
	public static final String baseUrl;
    /** 微信支付证书目录 */
	public static final String sslPath;
	/** 获取accessToken的url */
	public static final String accessTokenUrl;
	/** 微信支付商户密钥 */
	public static final String key;
	/** 支付成功后通知地址 */
	public static final String notifyUrl;
	/** 订单过期时间 15分钟 */
	public static final long orderExpireTime = 1000 * 60 * 15;
	/** 微信支付退款url */
	public static final String refundUrl;
	/** 目前金额单位为分 倍数为100 */
	public static final Integer PRICE_MUL = 100;
	/** 拼课每增加一人减少金额 单位：分  TODO 目前是一分 */
	public static final Integer spellRefund;
	public static final String token;
	/** 发送模板消息url */
	public static final String sendTmplMessageUrl;
	/** 微信第三方登录appid */
	public static final String loginAppId;
	/** 微信第三方登录密钥 */
	public static final String loginAppSecret;
	/** 微信第三方登录url */
	public static final String loginUrl;

	static {
		InputStream in = WechatConfig.class.getClassLoader()
				.getResourceAsStream("wechat.properties");
		Properties p = new Properties();
		try {
			p.load(in);
		} catch (IOException e) {
			logger.error("WXConfig.init", e);
			e.printStackTrace();
		}
		appId = p.getProperty("AppID");
		
		appSecret = p.getProperty("AppSecret");
		baseUrl = p.getProperty("baseUrl");
		mchId = p.getProperty("mchId");
		sslPath = p.getProperty("sslPath");
		key = p.getProperty("key");
		refundUrl = p.getProperty("refundUrl");
		notifyUrl = p.getProperty("notifyUrl");
		token = p.getProperty("token");
		sendTmplMessageUrl = p.getProperty("sendTmplMessageUrl");
		spellRefund = Integer.valueOf(p.getProperty("spellRefund"));
		accessTokenUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid="
				+ appId + "&secret=" + appSecret;
		loginAppId = p.getProperty("loginAppId");
		loginAppSecret = p.getProperty("loginAppSecret");
			// {randomCode} 占位符,防止csrf攻击
		loginUrl = "https://open.weixin.qq.com/connect/qrconnect?appid=" + loginAppId
                    + "&redirect_uri=" + URLEncoder.encode(p.getProperty("loginRedirectUrl"))
					+ "&response_type=code&scope=snsapi_login&state={randomCode}#wechat_redirect";
	}
}
