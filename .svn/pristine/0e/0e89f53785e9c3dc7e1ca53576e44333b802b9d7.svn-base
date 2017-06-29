package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.student.model.interview2.Interview;
import cv.focus.core.domain.student.model.interview2.InterviewRepository;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by song on 16/5/5.
 */
@Repository
public class InterviewRepositoryHibernateImpl extends HibernateRepository implements InterviewRepository {
    @Override
    public Interview findById(long id) {
        Query query = getSession().createQuery("from Interview where id=:id");
        query.setParameter("id", id);
        List<Interview> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }
    @Override
    public void store(Interview interview) {
        getSession().saveOrUpdate(interview);
    }

    @Override
    public Interview findByPassword(String password) {
        return null;
    }

    @Override
    public Interview findByUserId(Integer userId) {
        Query query = getSession().createQuery("from Interview where userId=:userId");
        query.setParameter("userId", userId);
        List<Interview> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public void delete(Interview interview){
        getSession().delete(interview);
    }

    @Override
    public void deleteById(long id){
        Query query = getSession().createQuery("delete from Interview where id=:id");
        query.setParameter("id", id);
        query.executeUpdate();
    }

    @Override
    public Interview findByPublicUrl(String publicUrl) {
        Query query = getSession().createQuery("from Interview where publicUrl=:publicUrl order by id desc");
        query.setParameter("publicUrl", publicUrl);
        List<Interview> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public void deleteByPublicUrl(String publicUrl) {
        Query query = getSession().createQuery("delete from Interview where publicUrl=:publicUrl");
        query.setParameter("publicUrl", publicUrl);
        query.executeUpdate();
    }

    @Override
    public Interview findByPublicUrlAndPassword(String publicUrl, String password) {
        Query query = getSession().createQuery("from Interview where publicUrl=:publicUrl and password=:password");
        query.setParameter("publicUrl", publicUrl);
        query.setParameter("password", password);
        List<Interview> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }
}
