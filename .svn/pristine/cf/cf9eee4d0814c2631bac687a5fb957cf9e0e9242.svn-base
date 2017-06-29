package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.student.model.activity.ActivityRepository;
import cv.focus.core.domain.student.model.activity.ActivityTag;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialId;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

/**
 * Created by song on 16/1/28.
 */
@Repository
public class ActivityRepositoryHibernateImpl extends HibernateRepository implements ActivityRepository {

    @Override
    public ActivityId nextId() {
        //是不是需要用更少的位数
        return new ActivityId(UUID.randomUUID().toString());
    }

    @Override
    public Activity findById(ActivityId activityId) {
//        Activity activity = (Activity) getSession().get(Activity.class, activityId);
//        return activity;

        Query query = getSession().createQuery("from Activity where activityId=:activityId");
        query.setParameter("activityId", activityId);
        return (Activity) query.uniqueResult();
    }

    @Override
    public List findByStudentProfileId(StudentProfileId studentProfileId) {
        Query query = getSession().createQuery("from Activity where studentProfileId=? order by seq");
        query.setString(0, studentProfileId.getStudentProfileId());
        return query.list();
    }

    @Override
    public void store(Activity activity) {
        getSession().saveOrUpdate(activity);
    }

    @Override
    public void storeTag(ActivityTag activityTag) {
        getSession().saveOrUpdate(activityTag);
    }

    @Override
    public void del(Activity activity) {
        getSession().delete(activity);
    }

    @Override
    public Material findMaterialById(MaterialId materialId) {
        Query query = getSession().createQuery("from Material where materialId=:materialId");
        query.setParameter("materialId", materialId);
        return (Material) query.uniqueResult();
    }

    @Override
    public Activity findByStudentProfileIdAndActivityId(StudentProfileId studentProfileId, ActivityId activityId) {
        Query query = getSession().createQuery("from Activity where studentProfileId=:studentProfileId and activityId=:activityId");
        query.setParameter("studentProfileId", studentProfileId);
        query.setParameter("activityId", activityId);
        List<Activity> list = query.list();
        return (Activity) query.uniqueResult();
    }

    @Override
    public Activity findByIdAndSeq(StudentProfileId studentProfileId, int seq) {
        Query query = getSession().createQuery("from Activity where studentProfileId=:studentProfileId and seq=:seq");
        query.setParameter("studentProfileId", studentProfileId);
        query.setParameter("seq", seq);
        List<Activity> list = query.list();
        if (list != null && list.size() != 0) {
            return list.get(0);
        }
        return null;
    }

}
