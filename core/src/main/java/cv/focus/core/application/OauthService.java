package cv.focus.core.application;

import cv.focus.core.domain.user.model.Oauth;
import cv.focus.core.domain.user.model.OauthType;
import cv.focus.core.domain.user.model.Role;

/**
 * OauthService
 * 
 * @author liuruichao
 * Created on 2016-04-14 13:40
 */
public interface OauthService {
    Oauth getOauthByEmailAndType(String email, OauthType type);

    Oauth getOauthByMobileAndType(String mobile, OauthType type);

    Oauth bindUser(String openId, String token, OauthType type, String loginName, String realOpenId);

    Oauth getOauthByOpenId(String openId);

    void unBindUser(String openId);

    Oauth autoRegister(String email, String userName, String userPwd, String openId, String token, OauthType type, String realOpenId,String roleR);
}
