package cv.focus.core.application.impl;

import cv.focus.core.application.ActivityService;
import cv.focus.core.application.BadgesCalcuService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.domain.student.model.Badge;
import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import junit.framework.TestCase;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by lcq on 2016/3/4.
 */
public class BadgesCalcuServiceImplTest extends TestCase {
    ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
    BadgesCalcuService badgesCalcuService = (BadgesCalcuService) applicationContext.getBean("badgesCalcuServiceImpl");
    StudentProfileService studentProfileService = (StudentProfileService) applicationContext.getBean("studentProfileServiceImpl");
    ActivityService activityService = (ActivityService) applicationContext.getBean("activityServiceImpl");


    public void testCalcuBadges(){
        StudentProfileId spi = new StudentProfileId("121fdf63-44e4-4a1a-972b-2b7edb0ba4a2");
        StudentProfile sp = studentProfileService.findStudentProfileById(spi);
        List<Activity> ats = activityService.findActivityListByStudentProfileId(spi);
        List<Badge> accessBades = badgesCalcuService.getAccessBadges(sp,ats);
        System.out.println(accessBades.size());
        Integer completeDegree = badgesCalcuService.calcuCompleteDegree(accessBades);
        System.out.println("completeDegree : " + completeDegree);
    }


}
