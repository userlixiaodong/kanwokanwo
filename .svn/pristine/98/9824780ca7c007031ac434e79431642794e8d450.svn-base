package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.school.model.activity.AdmissionActivity;
import cv.focus.core.domain.school.model.activity.AdmissionActivityId;
import cv.focus.core.domain.school.model.activity.AdmissionActivityRepository;
import cv.focus.core.domain.school.model.profile.AdmissionProfileId;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * AdmissionActivityRepositoryHibernateimpl
 *
 * @author liuruichao
 * Created on 2016-04-02 13:02
 */
@Repository
public class AdmissionActivityRepositoryHibernateImpl extends HibernateRepository implements AdmissionActivityRepository {
    @Override
    public List<AdmissionActivity> findByAdProfileId(AdmissionProfileId admissionProfileId) {
        Query query = getSession().createQuery("from AdmissionActivity where admissionProfileId=:admissionProfileId order by seq");
        query.setParameter("admissionProfileId", admissionProfileId);
        return query.list();
    }

    @Override
    public void store(AdmissionActivity activity) {
        getSession().saveOrUpdate(activity);
    }

    @Override
    public AdmissionActivity findByActivityId(AdmissionActivityId admissionActivityId) {
        Query query = getSession().createQuery("from AdmissionActivity where admissionActivityId=:admissionActivityId");
        query.setParameter("admissionActivityId", admissionActivityId);
        return (AdmissionActivity) query.uniqueResult();
    }

    @Override
    public void delete(AdmissionActivity activity) {
        getSession().delete(activity);
    }

    @Override
    public AdmissionActivity findByAndSeq(AdmissionProfileId admissionProfileId, int seq) {
        Query query = getSession().createQuery("from AdmissionActivity where admissionProfileId=:admissionProfileId and seq=:seq");
        query.setParameter("admissionProfileId", admissionProfileId);
        query.setParameter("seq", seq);
        List<AdmissionActivity> list = query.list();
        if (list != null && list.size() != 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public AdmissionActivity findByAdmissionProfileIdAndActivityId(AdmissionProfileId admissionProfileId, AdmissionActivityId admissionActivityId) {
        Query query = getSession().createQuery("from AdmissionActivity where admissionProfileId=:admissionProfileId and admissionActivityId=:admissionActivityId");
        query.setParameter("admissionProfileId", admissionProfileId);
        query.setParameter("admissionActivityId", admissionActivityId);
        List<AdmissionActivity> list = query.list();
        return (AdmissionActivity) query.uniqueResult();
    }
}
