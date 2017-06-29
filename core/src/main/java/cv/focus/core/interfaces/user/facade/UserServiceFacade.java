package cv.focus.core.interfaces.user.facade;

import cv.focus.core.domain.school.model.profile.SchoolCountry;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.domain.user.model.User;

/**
 * Created by szj on 2016/2/2.
 */
public interface UserServiceFacade {
    void deactive(String email);

    User activate(String code);

    User findUserByEmail(String email);

    void resetPassword(String email, String password);

    void sendEmail(String email);

    boolean checkResetLink(String email, String sid);

    boolean checkLogin(String loginName, String userPwd);

    boolean register(String email, String userName, String userPwd, String school, Role adRep, String roleR);

    boolean register(String email, String userName, String userPwd, String school, Role adRep, SchoolCountry country, String roleR);

    User findUserByMobile(String mobile);

    boolean register(String mobile, String email, String userName, String userPwd, String roleR);

    boolean updateEmail(String mobile, String email);

    User findUserByUserId(Integer userId);

    User findUserByUserName(String userName);

    void updateUserName(Integer userId, String userName);

    void follow(Integer fromId, Integer ownerId);

    void unfollow(Integer fromId, Integer ownerId);

    boolean isFollow(Integer fromId, Integer ownerId);

    int getUserFollowCount(Integer userId);

    void resetPasswordByMobile(String mobile,String pwd);

    void modifyPassword(User user, String pwdn);

    void updateMobile(User user, String mobile);
}
