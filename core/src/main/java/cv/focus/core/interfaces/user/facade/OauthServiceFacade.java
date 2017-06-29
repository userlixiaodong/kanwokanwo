package cv.focus.core.interfaces.user.facade;

import cv.focus.core.domain.user.model.Oauth;
import cv.focus.core.domain.user.model.OauthType;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.interfaces.user.dto.OauthDTO;

/**
 * OauthServiceFacade
 * 
 * @author liuruichao
 * Created on 2016-04-14 14:22
 */
public interface OauthServiceFacade {
    OauthDTO getOauthByLoginNameAndType(String loginName, OauthType type);

    OauthDTO bindUser(String openId, String token, OauthType type, String loginName, String realOpenId);

    OauthDTO getOauthByOpenId(String openId);

    void unBind(String openId);

    String hideEmail(String email);

    OauthDTO autoRegister(String userName, String openId, String token, OauthType type, String realOpenId);

    String buildEmail(String openId);
}
