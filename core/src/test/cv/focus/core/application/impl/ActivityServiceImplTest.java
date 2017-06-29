package cv.focus.core.application.impl;

import cv.focus.core.application.ActivityService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.student.model.activity.ActivityRepository;
import cv.focus.core.domain.student.model.activity.ActivityTag;
import cv.focus.core.domain.student.model.material.MaterialId;
import cv.focus.core.domain.student.model.material.MaterialListUtil;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import cv.focus.core.domain.student.model.profile.StudentProfileRepository;
import junit.framework.TestCase;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class ActivityServiceImplTest extends TestCase {
    ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
    ActivityRepository activityRepository = (ActivityRepository) applicationContext.getBean("activityRepositoryHibernateImpl");
    ActivityService activityService = (ActivityService) applicationContext.getBean("activityServiceImpl");
    SessionFactory sessionFactory = (SessionFactory) applicationContext.getBean("sessionFactory");


    public void testDelActivityMaterial() throws Exception {
        ActivityId activityId = new ActivityId("07a76480-39ea-43c4-9bd1-8bc0f03db8b2");
//        activityService.delActivityMaterial(new MaterialId(""),activityId);

    }

    public void testAddActivity0(){
        StudentProfileId studentProfileId = new StudentProfileId("123");
        Activity activity = new Activity(new ActivityId("test"),studentProfileId,"123",new Date(),new Date(),0);
        activityRepository.store(activity);
    }
    public void testAddTag(){

//        Session session = sessionFactory.openSession();
//        Transaction tx = null;
//        try {
//            tx = session.beginTransaction();
//            Query query = session.createQuery("from Activity where activityId=:activityId");
//            query.setParameter("activityId", new ActivityId("test"));
//            Activity activity =  (Activity) query.uniqueResult();
//            System.out.println(activity.getActivityTagList().size());
//            activity.getActivityTagList().clear();
//            System.out.println(activity.getActivityTagList().size());
//            session .saveOrUpdate(activity);
//            System.out.println(activity.getActivityTagList().size());
//            tx.commit();
//        }
//        catch (Exception e) {
//            if (tx!=null) tx.rollback();
//            throw e;
//        }
//        finally {
//            session.close();
//        }
        List<ActivityTag> list = new ArrayList<>();
        Activity activity = activityRepository.findById(new ActivityId("test"));
        ActivityTag activityTag = new ActivityTag("1");
//        list = activity.getActivityTagList();
//        list.clear();
        list.add(activityTag);
        activity.addTag(list);
        activity.setActivityTagList(list);
        activityRepository.store(activity);
    }

    public void testAddActivity() throws Exception {
        List<ActivityTag> list = new ArrayList<ActivityTag>();
        ActivityTag activityTag = new ActivityTag("science");
        ActivityTag activityTag1 = new ActivityTag("gym");
        activityTag.setDomainId(UUID.randomUUID().toString());
        activityTag1.setDomainId(UUID.randomUUID().toString());
        list.add(activityTag);
        list.add(activityTag1);
        String title = "h好好学习";
        Date date = new Date();
        String email = "szj@qq.com";
//        activityService.addActivity(list,title,date,email);

    }

    public void testAddActivityMaterial() throws Exception {

    }

    public void testFindActivitiesByStudentProfileId() throws Exception {
        activityRepository.findByStudentProfileId(new StudentProfileId("329b5290-8c1a-4dbb-8b77-a6808ff6cde2"));

    }

    public void testAddDescription() throws Exception {
        String description = "lalalal";
        ActivityId activityId = new ActivityId("07a76480-39ea-43c4-9bd1-8bc0f03db8b2");
//        activityService.addDescription(activityId,description);

    }

    public void testChangeLocation() throws  Exception {


    }
}