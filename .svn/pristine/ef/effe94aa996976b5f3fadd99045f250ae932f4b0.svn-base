package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.student.model.profile.Remark;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import cv.focus.core.domain.student.model.profile.StudentProfileRepository;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Created by song on 16/1/23.
 */
@Repository
public class StudentProfileRepositoryHibernateImpl extends HibernateRepository implements StudentProfileRepository {
    @Override
    public StudentProfileId nextId() {
        //是不是需要用更少的位数
        return new StudentProfileId(UUID.randomUUID().toString());
    }

    @Override
    public List<StudentProfile> findByOrigPublicUri(String uri) {
        Query query = getSession().createQuery("from StudentProfile where origPublicUri=:origPublicUri");
        query.setParameter("origPublicUri", uri);
        return query.list();
    }

    @Override
    public List<StudentProfile> findByPublicUri(String uri) {

        Query query = getSession().createQuery("from StudentProfile where publicUri=:publicUri " );
        query.setParameter("publicUri", uri);
        return query.list();
    }

    @Override
    public void store(StudentProfile studentProfile) {
        getSession().saveOrUpdate(studentProfile);
    }

    @Override
    public StudentProfile findById(StudentProfileId studentProfileId) {
        Query query = getSession().createQuery("from StudentProfile where studentProfileId=:studentProfileId");
        query.setParameter("studentProfileId",studentProfileId);
        return (StudentProfile) query.uniqueResult();
    }

    @Override
    public StudentProfile findByEmail(String email) {
        Query query = getSession().createQuery("from StudentProfile where email=:email");
        query.setParameter("email",email);
        return (StudentProfile) query.uniqueResult();
    }

    @Override
    public void del(Object obj) {
        getSession().delete(obj);
    }

    @Override
    public List<Remark> findRemarksById(String studentProfileId) {
        Query query = getSession().createQuery("select r from Remark r where r.owner.studentProfileId.studentProfileId = :studentProfileId");
        query.setParameter("studentProfileId",studentProfileId);
        return query.list();
    }
}
