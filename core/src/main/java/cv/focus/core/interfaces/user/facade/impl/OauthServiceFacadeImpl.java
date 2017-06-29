package cv.focus.core.interfaces.user.facade.impl;

import com.focusedu.utils.lang.EmojiFilter;
import cv.focus.core.application.OauthService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.application.UserService;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.Oauth;
import cv.focus.core.domain.user.model.OauthType;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.interfaces.user.dto.OauthDTO;
import cv.focus.core.interfaces.user.facade.OauthServiceFacade;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * OauthServiceFacadeImpl
 * 
 * @author liuruichao
 * Created on 2016-04-14 14:22
 */
@Service
public class OauthServiceFacadeImpl implements OauthServiceFacade {
    @Resource
    private OauthService oauthService;
    @Resource
    private StudentProfileService studentProfileService;
    @Resource
    private UserService userService;

    @Override
    public OauthDTO getOauthByLoginNameAndType(String loginName, OauthType type) {
        Oauth oauth = oauthService.getOauthByEmailAndType(loginName, type);
        if (oauth == null) {
            oauth = oauthService.getOauthByMobileAndType(loginName, type);
        }
        if (oauth == null) {
            return null;
        }
        return new OauthDTO(oauth);
    }

    @Override
    public OauthDTO bindUser(String openId, String token, OauthType type, String loginName, String realOpenId) {
        Oauth oauth = oauthService.bindUser(openId, token, type, loginName, realOpenId);
        return new OauthDTO(oauth);
    }

    @Override
    public OauthDTO getOauthByOpenId(String openId) {
        Oauth oauth = oauthService.getOauthByOpenId(openId);
        if (oauth == null) {
            return null;
        }

        return new OauthDTO(oauth);
    }

    @Override
    public void unBind(String openId) {
        oauthService.unBindUser(openId);
    }

    @Override
    public String hideEmail(String email) {
        int index = email.indexOf("@");
        String text = email.substring(0, index);
        return text.substring(0, 3) + "***" + email.substring(index);
    }

    @Override
    public OauthDTO autoRegister(String userName, String openId, String token, OauthType type, String realOpenId) {
        // 过滤emoji表情
        userName = EmojiFilter.filterEmoji(userName);
        if (StringUtils.isBlank(userName)) {
            userName = com.focusedu.utils.lang.StringUtils.randomStr(5, false);
        }
        String roleR = "0";
        Oauth oauth = oauthService.autoRegister(buildEmail(openId), userName, "1111111111111111", openId, token, type, realOpenId,roleR);
        StudentProfile studentProfile = studentProfileService.findByEmail(oauth.getUser().getEmail());
        OauthDTO oauthDTO = new OauthDTO(oauth);
        oauthDTO.setPublicUri(studentProfile.getPublicUri());
        return oauthDTO;
    }

    @Override
    public String buildEmail(String openId) {
        return openId + "@kanwokanwo.com";
    }
}
