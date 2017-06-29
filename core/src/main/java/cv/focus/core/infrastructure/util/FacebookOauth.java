package cv.focus.core.infrastructure.util;

import com.focusedu.utils.io.HttpRequestUtils;
import com.focusedu.utils.lang.PropertiesUtil;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import java.util.Properties;
import java.util.UUID;

/**
 * FacebookOauth
 * 
 * @author liuruichao
 * Created on 2016-04-15 16:19
 */
public class FacebookOauth {
    private static String APP_ID;
    private static String APP_SERCRET;
    private static String REDIRECT_URL;
    private static String AUTHORIZE_URL;
    private static String ACCESSTOKEN_URL;
    private static String GET_USER_URL;

    public FacebookOauth() {
        Properties props = PropertiesUtil.getProperties("facebook.properties");
        APP_ID = props.getProperty("appId");
        APP_SERCRET = props.getProperty("appSercert");
        REDIRECT_URL = props.getProperty("redirectUrl");
        AUTHORIZE_URL = props.getProperty("authorizeURL").replace("#redirectUrl#", REDIRECT_URL).replace("#clientId#", APP_ID);
        ACCESSTOKEN_URL = props.getProperty("accessTokenUrl").replace("#clientId#", APP_ID).replace("#redirectUrl#", REDIRECT_URL).replace("#appSecret#", APP_SERCRET);
        GET_USER_URL = props.getProperty("getUserUrl");
    }

    public String getAuthorizeUrl(HttpServletRequest request) {
        String randomStr = UUID.randomUUID().toString().replace("-", "");
        request.getSession().setAttribute("fbState", randomStr);
        return AUTHORIZE_URL.replace("#state#", randomStr);
    }

    public String getAccessToken(HttpServletRequest request, String state, String code) throws Exception {
        String sbu = null;
        if (state.equals(request.getSession().getAttribute("fbState"))) {
            String result = HttpRequestUtils.reqGet(ACCESSTOKEN_URL.replace("#code#", code), "utf-8");
            JSONObject obj = new JSONObject(result);
            sbu = obj.getString("access_token");
        }
        return sbu;
    }

    public String getUserInfo(String token) throws Exception {
        String str = null;
        String result = HttpRequestUtils.reqGet(GET_USER_URL + "?access_token=" + token, "utf-8");
        JSONObject obj = new JSONObject(result);
        str = "fb_" + obj.getString("id");
        return str;
    }
}
