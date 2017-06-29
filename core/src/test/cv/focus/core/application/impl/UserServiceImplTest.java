package cv.focus.core.application.impl;

import cv.focus.core.application.StudentProfileService;
import cv.focus.core.application.UserService;
import cv.focus.core.domain.student.model.profile.StudentProfileRepository;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.domain.user.model.User;
import junit.framework.TestCase;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Administrator on 2016/2/2.
 */
public class UserServiceImplTest extends TestCase {
    ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
    StudentProfileService studentProfileService = (StudentProfileService) applicationContext.getBean("studentProfileServiceImpl");
    UserService userService = (UserService) applicationContext.getBean("userServiceImpl");
    public void testCreateUser() throws Exception {
        User user1 = new User("balabala","PWD","szj", Role.STUDENT);
        user1=userService.createUser(user1.getEmail(),user1.getUserName(),user1.getUserPwd(), user1.getType());
        studentProfileService.createStudentProfile(user1);

    }
}