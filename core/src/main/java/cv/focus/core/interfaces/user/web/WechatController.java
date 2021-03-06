package cv.focus.core.interfaces.user.web;

import cv.focus.core.application.StudentProfileService;
import cv.focus.core.application.UserService;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.Oauth;
import cv.focus.core.domain.user.model.OauthType;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.infrastructure.wechat.WechatConfig;
import cv.focus.core.infrastructure.wechat.WechatLoginType;
import cv.focus.core.infrastructure.wechat.WechatUser;
import cv.focus.core.infrastructure.wechat.WechatUtils;
import cv.focus.core.interfaces.user.dto.OauthDTO;
import cv.focus.core.interfaces.user.facade.OauthServiceFacade;
import cv.focus.core.interfaces.user.facade.UserServiceFacade;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.util.UUID;

/**
 * WechatController
 * 
 * @author liuruichao
 * Created on 2016-06-16 10:50
 */
@Controller
@RequestMapping("/wechat")
public class WechatController extends BaseController {
    private final Logger logger = Logger.getLogger(WechatController.class);
    @Resource
    private UserServiceFacade userServiceFacade;
    @Resource
    private OauthServiceFacade oauthServiceFacade;
    @Resource
    private StudentProfileService studentProfileService;

    @RequestMapping("/authorize")
    @ResponseBody
    public String authorize(@RequestParam String redirectUrl,
                            HttpServletRequest request,
                            HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();
            String randomStr = UUID.randomUUID().toString().replace("-", "");
            session.setAttribute("wechatBindRandom", randomStr);
            String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + WechatConfig.appId + "&redirect_uri=" + redirectUrl + "&response_type=code&scope=snsapi_userinfo&state=" + randomStr + "#wechat_redirect";
            response.setContentType("text/html;charset=utf-8");
            response.sendRedirect(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    @RequestMapping("/login")
    @ResponseBody
    public String login(HttpServletRequest request, HttpServletResponse response) {
        try {
            String randomStr = UUID.randomUUID().toString().replace("-", "");
            String encode = URLEncoder.encode("http://kanwo.com/wechat/toBind", "utf-8");
            String url = "https://open.weixin.qq.com/connect/qrconnect?appid=" + WechatConfig.appId + "&redirect_uri=" + encode + "&response_type=code&scope=snsapi_login&state=" + randomStr + "#wechat_redirect";
            response.setContentType("text/html;charset=utf-8");
            response.sendRedirect(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping("/toBind")
    public String toBind(@RequestParam String code,
                         @RequestParam String state,
                         HttpServletRequest request) {
        HttpSession session = request.getSession();
        /*String sessionRandom = (String) session.getAttribute("wechatBindRandom");
        if (StringUtils.isBlank(state) || StringUtils.isBlank(sessionRandom) || !state.equals(sessionRandom)) {
            return null;
        }*/
        // openId并放入到session中
        WechatUser wechatUser = putWechatUserToSession(code, session);
        if (wechatUser == null) {
            return null;
        }
        OauthDTO oauthDTO = oauthServiceFacade.getOauthByOpenId(wechatUser.getUnionid());
        boolean isBind = false;
        if (oauthDTO != null) {
            isBind = true;
            // 只显示email前三位
            User user = userServiceFacade.findUserByEmail(oauthDTO.getEmail());
            StudentProfile studentProfile = studentProfileService.findByEmail(oauthDTO.getEmail());
            oauthDTO.setPublicUri(studentProfile.getPublicUri());
            oauthDTO.setEmail(oauthServiceFacade.hideEmail(oauthDTO.getEmail()));
            if(studentProfile !=null){
                setSession(user.getUserId(), oauthDTO.getMobile(), oauthDTO.getEmail(),user.getRoleR(), studentProfile, session);
            }
            //oauthDTO.setPublicUri(oauthServiceFacade.findUserByUserId(oauthDTO.getUserId()));
        }
        request.setAttribute("isBind", isBind);
        request.setAttribute("oauth", oauthDTO);
        return "wechat/bind";
    }

    @RequestMapping("/toRegister")
    public String toRegister(@RequestParam String code,
                             @RequestParam String state,
                             HttpServletRequest request) {
        HttpSession session = request.getSession();
       /* String sessionRandom = (String) session.getAttribute("wechatBindRandom");
        if (StringUtils.isBlank(state) || StringUtils.isBlank(sessionRandom) || !state.equals(sessionRandom)) {
            return null;
        }*/
        // openId并放入到session中
        if (putWechatUserToSession(code, session) == null) {
            return null;
        }
        return "wechat/register";
    }

    @RequestMapping("/unBind")
    @ResponseBody
    public Result<String> unBind(HttpServletRequest request) {
        Result<String> result = null;
        try {
            HttpSession session = request.getSession();
            WechatUser user = (WechatUser) session.getAttribute("wechatUser");
            if (user == null) {
                return newFaildResult(ResultMessages.WECHAT_UNBIND_ERROR);
            }
            oauthServiceFacade.unBind(user.getUnionid());
            session.removeAttribute("wechatUser");
            session.removeAttribute("openId");
            session.removeAttribute("token");
            session.removeAttribute("oauthType");
            session.removeAttribute("realOpenId");
            result = newSuccessResult(ResultMessages.WECHAT_UNBIND_SUCCESS, null);
        } catch (Exception e) {
            logger.error("WechatController.unBind()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    private WechatUser putWechatUserToSession(String code, HttpSession session) {
        WechatUser user = null;
        try {
            if (session.getAttribute("wechatUser") != null) {
                return (WechatUser) session.getAttribute("wechatUser");
            }
            user = WechatUtils.getWechatUser(code, WechatLoginType.OAUTH);
            if (user == null) {
                return null;
            }
            session.setAttribute("wechatUser", user);
            session.setAttribute("openId", user.getUnionid());
            session.setAttribute("token", user.getToken());
            session.setAttribute("oauthType", OauthType.WECHAT);
            session.setAttribute("realOpenId", user.getOpenId());
        } catch (Exception e) {
            logger.error("WechatController.putWechatUserToSession()", e);
        }
        return user;
    }
}