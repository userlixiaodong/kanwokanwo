package cv.focus.core.infrastructure.persistence.hibernate;

import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.activity.ActivityRepository;
import junit.framework.TestCase;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HibernateRepositoryTest extends TestCase {
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void main(String args[]){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        Activity activity = new Activity();
        activity.setTitle("测试");
//
//      HibernateRepository hibernateRepository = (HibernateRepository) applicationContext.getBean("HibernateRepository");
        ActivityRepository activityRepository = (ActivityRepository) applicationContext.getBean("ActivityRepositoryHibernateImpl");
//
        activity.setActivityId(activityRepository.nextId());
        System.out.println(activity.getActivityId().getActivityId());

        activityRepository.store(activity);
    }
}