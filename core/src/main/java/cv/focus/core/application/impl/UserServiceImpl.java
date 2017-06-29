package cv.focus.core.application.impl;

import cv.focus.common.domain.model.AsyncEventEngine;
import cv.focus.common.domain.model.SendEmail;
import cv.focus.common.domain.model.edm.ForgetPwdEvent;
import cv.focus.core.application.UserService;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.student.model.profile.StudentProfileRepository;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.domain.user.model.UserFollow;
import cv.focus.core.domain.user.model.UserRepository;
import cv.focus.core.infrastructure.util.MailUtil;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.mail.internet.InternetAddress;
import java.util.*;

/**
 * Created by song on 16/1/25.
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserRepository userRepositoryHibernateImpl;
    @Resource
    private StudentProfileRepository studentProfileRepository;

    @Override
    public User createUser(String email, String name, String passwd, Role type, String roleR) {
        User user = new User(email, name, passwd, type,roleR);
        user.setState(0);//未激活状态
        String code = UUID.randomUUID().toString().replace("-", "");//生成随机的code码
        user.setActiveCode(code);
        try{
          /*  MailUtil.sendMail("KanwoConfirmation:Account activation link",
                    "<a href='http://www.kanwokanwo.com/user/active?code=" + code + "'>Please click on this link to activate your account</a>", new InternetAddress[]{new InternetAddress(email)});*/
        }catch (Exception ignored) { }
        if(null == userRepositoryHibernateImpl.findByEmail(user.getEmail())){
            userRepositoryHibernateImpl.store(user);
            return user;
        }
        return null;
    }

    @Override
    public User createUser(String mobile, String email, String name, String password, Role type, String roleR) {
        User user = new User(email, mobile, name, password, type,roleR);
        user.setState(1);
        if (userRepositoryHibernateImpl.findByEmail(user.getEmail()) == null) {
            userRepositoryHibernateImpl.store(user);
            return user;
        }
        return null;
    }

    @Override
    public List<User> findUserByUserName(String userName) {
        return userRepositoryHibernateImpl.findByUserName(userName);
    }

    @Override
    public User findOnlyUserByUserName(String userName) {
        return userRepositoryHibernateImpl.findOnlyUserByUserName(userName);
    }



    @Override
    public User findUserByEmail(String email) {
        return userRepositoryHibernateImpl.findByEmail(email);
    }

    public void forgetPassword(String email) {
        User user = userRepositoryHibernateImpl.findByEmail(email);
        if (user != null) {
            String digitalSignature = user.genDigitalSignature();
            userRepositoryHibernateImpl.store(user);
            String resetPassHref = " /user/checkResetLink?sid=" + digitalSignature + "&email=" + user.getEmail();
            AsyncEventEngine.fireEvent(new ForgetPwdEvent(email, user.getUserName(), resetPassHref));
        }
    }

    @Override
    public boolean checkResetLink(String email, String sid) {
        User user = userRepositoryHibernateImpl.findByEmail(email);
        if (user != null) {
            if (user.getOutDate().getTime() > System.currentTimeMillis()) { //时间没过期
                if (user.validateDigitalSignature(sid)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public void resetPassword(String email, String password) {
        User user = userRepositoryHibernateImpl.findByEmail(email);
        user.setUserPwd(user.encryptPasswd(password));
        user.setValidateCode(null);
        userRepositoryHibernateImpl.update(user);
    }

    @Override
    public void deactive(String email) {
        User user = userRepositoryHibernateImpl.findByEmail(email);
        user.setState(0);
        userRepositoryHibernateImpl.update(user);
    }

    @Override
    public User activate(String code) {
        User user = userRepositoryHibernateImpl.findByActiveCode(code);
        if (user == null) {
            return null;
        }
        user.setState(1);
        user.setActiveCode(null);//ActiveCode失效
        userRepositoryHibernateImpl.update(user);
        return user;
    }

    @Override
    public User findUserByMobile(String mobile) {
        return userRepositoryHibernateImpl.findByMobile(mobile);
    }

    @Override
    public void updateEmail(String mobile, String email) {
        User user = userRepositoryHibernateImpl.findByMobile(mobile);
        StudentProfile studentProfile = studentProfileRepository.findByEmail(user.getEmail());
        if (studentProfile != null) {
            studentProfile.setEmail(email);
            user.setEmail(email);
            studentProfileRepository.store(studentProfile);
            userRepositoryHibernateImpl.store(user);
        }
    }

    @Override
    public User findUserById(Integer userId) {
        return userRepositoryHibernateImpl.findById(userId);
    }

    @Override
    public void updateUserName(Integer userId, String userName) {
        User user = userRepositoryHibernateImpl.findById(userId);
        user.setUserName(userName);
    }

    @Override
    public void follow(Integer fromId, Integer ownerId) {
        User fromUser = findUserById(fromId);
        User owner = findUserById(ownerId);
        UserFollow follow = userRepositoryHibernateImpl.findByFromIdAndOwnerId(fromId, ownerId);
        if (fromUser != null && owner != null && follow == null) {
            follow = new UserFollow();
            follow.setFrom(fromUser);
            follow.setOwner(owner);
            userRepositoryHibernateImpl.storeFollow(follow);
        }
    }

    @Override
    public void unfollow(Integer fromId, Integer ownerId) {
        User fromUser = findUserById(fromId);
        User owner = findUserById(ownerId);
        UserFollow follow = userRepositoryHibernateImpl.findByFromIdAndOwnerId(fromId, ownerId);
        if (fromUser != null && owner != null && follow != null) {
            userRepositoryHibernateImpl.delFollow(follow);
        }
    }

    @Override
    public boolean isFollow(Integer fromId, Integer ownerId) {
        return userRepositoryHibernateImpl.findByFromIdAndOwnerId(fromId, ownerId) != null;
    }

    @Override
    public int getFollowCount(Integer userId) {
        return userRepositoryHibernateImpl.queryFollowCount(userId);
    }

    @Override
    public Set<User> getFollowUser(Integer userId) {
        List<UserFollow> userFollows = userRepositoryHibernateImpl.findUserByFollowUser(userId);
        if (userFollows == null || userFollows.size() <= 0) {
            return new HashSet<>(0);
        }
        Set<User> users = new HashSet<>(userFollows.size());
        for (UserFollow userFollow : userFollows) {
            users.add(userFollow.getFrom());
        }
        return users;
    }

    @Override
    public void resetPasswordByMobile(String mobile, String pwd) {
        User user = userRepositoryHibernateImpl.findByMobile(mobile);
        user.setUserPwd(user.encryptPasswd(pwd));
        user.setValidateCode(null);
        userRepositoryHibernateImpl.update(user);
    }

    @Override
    public void modifyPassword(User user, String pwdn) {
        user.setUserPwd( DigestUtils.md5Hex(pwdn));
        userRepositoryHibernateImpl.update(user);
    }

    @Override
    public void updateMobile(User user, String mobile) {
        user.setMobile(mobile);
        userRepositoryHibernateImpl.update(user);
    }

}
