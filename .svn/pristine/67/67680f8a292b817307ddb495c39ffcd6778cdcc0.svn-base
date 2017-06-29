package cv.focus.core.interfaces.user.web;

import com.qq.connect.api.OpenID;
import com.qq.connect.api.qzone.UserInfo;
import com.qq.connect.javabeans.AccessToken;
import com.qq.connect.javabeans.qzone.UserInfoBean;
import com.qq.connect.oauth.Oauth;
import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.OauthType;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.FacebookOauth;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.infrastructure.wechat.WechatConfig;
import cv.focus.core.infrastructure.wechat.WechatLoginType;
import cv.focus.core.infrastructure.wechat.WechatUser;
import cv.focus.core.infrastructure.wechat.WechatUtils;
import cv.focus.core.interfaces.school.facade.AdmissionProfileServiceFacade;
import cv.focus.core.interfaces.student.facade.StudentProfileServiceFacade;
import cv.focus.core.interfaces.user.dto.OauthDTO;
import cv.focus.core.interfaces.user.facade.OauthServiceFacade;
import cv.focus.core.interfaces.user.facade.UserServiceFacade;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import weibo4j.Account;
import weibo4j.Users;
import weibo4j.model.User;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.UUID;

/**
 * 第三方登录controller
 * 
 * @author liuruichao
 * Created on 2016-04-14 14:21
 */
@Controller
@RequestMapping("/oauth")
public class OauthController extends BaseController {
	private final Logger logger = Logger.getLogger(OauthController.class);
    @Resource
    private OauthServiceFacade oauthServiceFacade;
	@Resource
	private AdmissionProfileServiceFacade admissionProfileServiceFacade;
	@Resource
	private StudentProfileServiceFacade studentProfileServiceFacade;
    @Resource
    private UserServiceFacade userServiceFacade;

    @RequestMapping("/test")
    public String test() {
        return "oauth/callback";
    }

    @RequestMapping("/login")
    public String login(@RequestParam String flag, HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html; charset=utf-8");
        try {
            if ("wechat".equals(flag)) {
                String randomStr = UUID.randomUUID().toString().replace("-", "");
                request.getSession().setAttribute("wxLoginRandom", randomStr);
                return "redirect:" + WechatConfig.loginUrl.replace("{randomCode}", randomStr);
            } else if ("sina".equals(flag)) {
                weibo4j.Oauth oauth = new weibo4j.Oauth();
                return "redirect:" + oauth.authorize("code");
            } else if("facebook".equals(flag)) {
                return "redirect:" + new FacebookOauth().getAuthorizeUrl(request);
            } else{
                // QQ
                return "redirect:" + new Oauth().getAuthorizeURL(request);
            }
        } catch (Exception e) {
            logger.error("oauthController.login(), login type: " + flag, e);
        }
        return TOHOME;
    }

	@RequestMapping("/wechat/callback")
	public String wechatCallback(
			@RequestParam String code,
			@RequestParam String state,
			HttpServletRequest request) {
        HttpSession session = request.getSession();
        String wxLoginRandom = (String) session.getAttribute("wxLoginRandom");
        // 非法操作
		if (StringUtils.isBlank(code) || StringUtils.isBlank(state)
				|| StringUtils.isBlank(wxLoginRandom) || !state.equals(wxLoginRandom)) {
			return TOHOME;
		}

		try {
            String openId = null;
            WechatUser wechatUser = WechatUtils.getWechatUser(code, WechatLoginType.LOGIN);
            if (wechatUser == null) {
                logger.warn("wechat callback wechatUser is null.");
                return TOHOME;
            }
            // 使用微信平台id,联合id
            openId = wechatUser.getUnionid();

            OauthDTO oauthDTO = oauthServiceFacade.getOauthByOpenId(openId);
            if (oauthDTO == null) {
                oauthDTO = oauthServiceFacade.autoRegister(wechatUser.getNickName(), openId,
                        wechatUser.getToken(), OauthType.WECHAT, wechatUser.getOpenId());
            }
            // 已经注册显示登录成功
            bindSuccessSetSession(oauthDTO, session);
            return "redirect:/" + oauthDTO.getPublicUri();
        } catch (Exception e) {
			logger.error("OauthController.wechatCallback()", e);
			return TOHOME;
		}
	}

    @RequestMapping("/sina/callback")
    public String sinaCallback(
            @RequestParam String code,
            HttpServletRequest request) {
        weibo4j.Oauth oauth = new weibo4j.Oauth();
        HttpSession session = request.getSession();
        try {
            String openId = null;
            weibo4j.http.AccessToken accessToken = oauth.getAccessTokenByCode(code);
            String token = accessToken.getAccessToken();
            Account account = new Account(token);
            openId = account.getUid().getString("uid");
            if (StringUtils.isBlank(openId)) {
                logger.warn("sina callback openId is blank.");
                return TOHOME;
            }

            // 用户详细信息
            OauthDTO oauthDTO = oauthServiceFacade.getOauthByOpenId(openId);
            if (oauthDTO == null) {
                Users users = new Users(token);
                User user = users.showUserById(account.getUid().getString("uid"));
                oauthDTO = oauthServiceFacade.autoRegister(user.getName(), openId, token, OauthType.SINA, null);
            }

            // 已经注册显示登录成功
            bindSuccessSetSession(oauthDTO, session);
            return "redirect:/" + oauthDTO.getPublicUri();
        } catch (Exception e) {
            logger.error("OauthController.sinaCallback()", e);
            return TOHOME;
		}
    }

    @RequestMapping("/qq/callback")
    public String qqCallback(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            String openId = null;
            AccessToken accessTokenObj = (new Oauth()).getAccessTokenByRequest(request);
            String token = accessTokenObj.getAccessToken();
            OpenID openIDObj = new OpenID(token);
            openId = openIDObj.getUserOpenID();
            if (StringUtils.isBlank(openId)) {
                logger.warn("qq callback openId is blank.");
                return TOHOME;
            }

            OauthDTO oauthDTO = oauthServiceFacade.getOauthByOpenId(openId);
            if (oauthDTO == null) {
                // 用户详细信息
                UserInfo qzoneUserInfo = new UserInfo(token, openId);
                UserInfoBean userInfoBean = qzoneUserInfo.getUserInfo();
                oauthDTO = oauthServiceFacade.autoRegister(userInfoBean.getNickname(), openId, token, OauthType.QQ, null);
            }
            // 已经注册显示登录成功
            bindSuccessSetSession(oauthDTO, session);
            return "redirect:/" + oauthDTO.getPublicUri();
        } catch (Exception e) {
            logger.error("OauthController.qqCallback()", e);
            return TOHOME;
        }
    }

    @RequestMapping("/bind")
    @ResponseBody
    public Result<String> bind(
            @RequestParam String loginName,
            @RequestParam String password,
            HttpServletRequest request) {
        Result<String> result = null;
        HttpSession session = request.getSession();
        try {
            String openId = (String) session.getAttribute("openId");
            String token = (String) session.getAttribute("token");
            OauthType oauthType = (OauthType) session.getAttribute("oauthType");
            if (StringUtils.isBlank(openId)) {
                return newFaildResult(ResultMessages.OPERATE_FAIL);
            }
            OauthDTO oauthDTO = oauthServiceFacade.getOauthByOpenId(openId);
            if (oauthDTO != null) {
                bindSuccessSetSession(oauthDTO, session);
                return newSuccessResult(ResultMessages.OPERATE_SUCCESS, oauthDTO.getPublicUri());
            }
            if (userServiceFacade.checkLogin(loginName, password)) {
                // 登录成功
                String realOpenId = (String) session.getAttribute("realOpenId");
                oauthDTO = oauthServiceFacade.bindUser(openId, token, oauthType, loginName, realOpenId);
                bindSuccessSetSession(oauthDTO, session);

                result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, oauthDTO.getPublicUri());
            } else {
                result = newFaildResult(ResultMessages.LOGIN_FAIL);
            }
        } catch (Exception e) {
            logger.error("OauthController.bind()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    /**
     * 第三方账号绑定成功后登录状态及查询用户的publicUri放入OauthDTO中
     * @param oauthDTO
     * @param session
     */
    private void bindSuccessSetSession(OauthDTO oauthDTO, HttpSession session) {
        if (oauthDTO.getRole() == Role.STUDENT) {
            StudentProfile studentProfile = studentProfileServiceFacade.getProfileByEmail(oauthDTO.getEmail());
            oauthDTO.setPublicUri(studentProfile.getPublicUri());
            setSession(oauthDTO.getUserId(), oauthDTO.getMobile(), oauthDTO.getEmail(),oauthDTO.getRoleR(), studentProfile, session);
        } else {
            AdmissionProfile admissionProfile = admissionProfileServiceFacade.getProfileByEmail(oauthDTO.getEmail());
            oauthDTO.setPublicUri(admissionProfile.getPublicUri());
            setSession(oauthDTO.getUserId(), oauthDTO.getEmail(), admissionProfile, session);
        }
        session.removeAttribute("openId");
        session.removeAttribute("token");
        session.removeAttribute("oauthType");
        session.removeAttribute("realOpenId");
    }

    /**
     * 第三方账号回调信息放入session
     * @param openId
     * @param token
     * @param type
     * @param session
     */
    /*private void setOauthInfo(String openId, String token, OauthType type, HttpSession session, String name) {
        session.setAttribute("openId", openId);
        session.setAttribute("token", token);
        session.setAttribute("oauthType", type);
        session.setAttribute("oauthName", name);
    }*/

    /*@RequestMapping("/facebook/callback")
    public String fbCallback(
            @RequestParam String state,
            @RequestParam String code,
            HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            String openId = (String) session.getAttribute("openId");
            if (StringUtils.isBlank(openId)) {
                FacebookOauth oauth = new FacebookOauth();
                String token = oauth.getAccessToken(request, state, code);
                openId = oauth.getUserInfo(token);
                if (StringUtils.isBlank(openId)) {
                    logger.warn("facebook callback openId is blank.");
                    return TOHOME;
                }
                setOauthInfo(openId, token, OauthType.FACEBOOK, session);
            }
            OauthDTO oauthDTO = oauthServiceFacade.getOauthByOpenId(openId);
            if (oauthDTO != null) {
                // 已经注册显示登录成功
                bindSuccessSetSession(oauthDTO, session);
                return "redirect:/" + oauthDTO.getPublicUri();
            }
        } catch (Exception e) {
            logger.error("OauthController.fbCallback()", e);
            return TOHOME;
        }
        return "oauth/callback";
    }*/
}