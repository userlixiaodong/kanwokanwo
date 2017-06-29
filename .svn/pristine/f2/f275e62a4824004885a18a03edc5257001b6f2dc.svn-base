package cv.focus.core.application.impl;

import cv.focus.core.application.OauthService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.application.UserService;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.Oauth;
import cv.focus.core.domain.user.model.OauthRepository;
import cv.focus.core.domain.user.model.OauthType;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.domain.user.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * OauthServiceImpl
 * 
 * @author liuruichao
 * Created on 2016-04-14 13:44
 */
@Service
public class OauthServiceImpl implements OauthService {
    @Resource
    private OauthRepository oauthRepository;
    @Resource
    private UserService userService;
    @Resource
    private StudentProfileService studentProfileService;

    @Override
    public Oauth getOauthByEmailAndType(String email, OauthType type) {
        return oauthRepository.findByEmailAndType(email, type);
    }

    @Override
    public Oauth getOauthByMobileAndType(String mobile, OauthType type) {
        return oauthRepository.findByMobileAndType(mobile, type);
    }

    @Override
    public Oauth bindUser(String openId, String token, OauthType type, String loginName, String realOpenId) {
        User user = userService.findUserByEmail(loginName);
        if (user == null) {
            user = userService.findUserByMobile(loginName);
        }
        Oauth oauth = new Oauth(openId, token, type, user);
        oauth.setRealOpenId(realOpenId);
        oauthRepository.store(oauth);
        return oauth;
    }



    @Override
    public Oauth getOauthByOpenId(String openId) {
        return oauthRepository.findByOpenId(openId);
    }

    @Override
    public void unBindUser(String openId) {
        Oauth oauth = oauthRepository.findByOpenId(openId);
        if (oauth != null) {
            oauthRepository.del(oauth);
        }
    }

    @Override
    public Oauth autoRegister(String email, String userName, String userPwd, String openId, String token, OauthType type, String realOpenId,String roleR) {
        User user = userService.createUser(email, userName, userPwd, Role.STUDENT,roleR);
        if(user == null){
            return null;
        }
        studentProfileService.createStudentProfile(user);
        return bindUser(openId, token, type, email, realOpenId);
    }
}
