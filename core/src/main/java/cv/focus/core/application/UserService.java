package cv.focus.core.application;

import cv.focus.core.domain.user.model.Role;
import cv.focus.core.domain.user.model.User;

import java.util.List;
import java.util.Set;

/**
 * Created by song on 16/1/25.
 */
public interface UserService {
    User createUser(String email, String name, String passwd, Role type, String roleR);

    User createUser(String mobile, String email, String name, String password, Role type, String roleR);

    List<User> findUserByUserName(String userName);

    User findOnlyUserByUserName(String userName);

    User findUserByEmail(String email);

    void forgetPassword(String email);

    boolean checkResetLink(String email,String sid);

    void resetPassword(String email,String password);

    void deactive(String email);

    User activate(String code);

    User findUserByMobile(String mobile);

    void updateEmail(String mobile, String email);

    User findUserById(Integer userId);

    void updateUserName(Integer userId, String userName);

    void follow(Integer fromId, Integer ownerId);

    void unfollow(Integer fromId, Integer ownerId);

    boolean isFollow(Integer fromId, Integer ownerId);

    int getFollowCount(Integer userId);

    Set<User> getFollowUser(Integer userId);

    void resetPasswordByMobile(String mobile,String pwd);

    void modifyPassword(User user, String pwdn);

    void updateMobile(User user, String mobile);
}
