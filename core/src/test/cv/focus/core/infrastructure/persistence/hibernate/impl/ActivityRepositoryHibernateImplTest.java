package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.student.model.activity.ActivityRepository;
//import cv.focus.core.domain.student.model.material.Material;
//import cv.focus.core.domain.student.model.material.MaterialId;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import junit.framework.TestCase;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.*;

public class ActivityRepositoryHibernateImplTest extends TestCase {
    ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
    ActivityRepository activityRepository = (ActivityRepository) applicationContext.getBean("activityRepositoryHibernateImpl");

    public void testAddActivity(){
        Activity activity = new Activity();
        activity.setTitle("测试");
        activity.setActivityId(activityRepository.nextId());
        activity.setStudentProfileId(new StudentProfileId("f7b5119d-883f-4a3b-a9a6-56da8847fa66"));
        System.out.println(activity.getActivityId().getActivityId());
        activityRepository.store(activity);

    }


    public void testQuery(){
//        Activity activity = activityRepository.findById(new ActivityId("d9331fec-0673-410f-bd4d-af146a498353"));
//        System.out.println(activity.getTitle());
    }

//    public void testSaveMultiVO(){
//
//        StudentProfileId studentProfileId = new StudentProfileId("21cf327d-5df2-4368-b20f-86388fc09049");
//        Activity activity = new Activity();
//        activity.setActivityId(activityRepository.nextId());
//        List<Material> list1 = new ArrayList<>();
//        for(int i = 0; i < 2; i++){
//            Material material = new Material(new MaterialId(UUID.randomUUID().toString()));
//            material.setMaterialSrc("12306"+i);
//            list1.add(material);
//        }
//        activity.setMaterials(list1);
//        activity.setStudentProfileId(studentProfileId);
//        activityRepository.store(activity);
//    }


    //
    public void testDel() throws Exception {
        Activity activity = new Activity();
        activity.setActivityId(new ActivityId("f96fedd1-9ed1-46a7-8506-d00065de277e"));
//        activity = activityRepository.findById(new ActivityId("66a58f76-a71d-4cb1-9fdd-93f924542be2"));
        activityRepository.del(activity);
    }
}