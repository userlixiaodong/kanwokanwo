package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.user.model.Information;
import cv.focus.core.domain.user.model.InformationFavor;
import cv.focus.core.domain.user.model.InformationRepository;
import cv.focus.core.domain.user.model.InformationStatus;
import cv.focus.core.domain.user.model.UserFollow;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * AdmissionProfileRepositoryHibernateImpl
 *
 * @author liuruichao
 * Created on 2016-04-02 13:03
 */
@Repository
public class InformationRepositoryHibernateImpl extends HibernateRepository implements InformationRepository {

    @Override
    public void store(Information information) {
        getSession().saveOrUpdate(information);
    }

    @Override
    public Information findById(Integer informationId) {
        String hql = "from Information where status = :status and informationId = :informationId";
        Query query = getSession().createQuery(hql);
        query.setParameter("status", InformationStatus.NORMAL);
        query.setParameter("informationId", informationId);
        List<Information> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public InformationFavor findFavor(Integer informationId, Integer userId) {
        String hql = "from InformationFavor where information.informationId = :informationId and user.userId = :userId";
        Query query = getSession().createQuery(hql);
        query.setParameter("informationId", informationId);
        query.setParameter("userId", userId);
        List<InformationFavor> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public void storeFavor(InformationFavor favor) {
        getSession().saveOrUpdate(favor);
    }

    @Override
    public void delFavor(InformationFavor favor) {
        getSession().delete(favor);
    }

    @Override
    public List<Information> findInformationByUserId(Integer userId, Integer startIndex, Integer maxResult) {
        String hql = "from Information where status = :status and user.userId = :userId order by createTime desc";
        Query query = getSession().createQuery(hql);
        query.setParameter("status", InformationStatus.NORMAL);
        query.setParameter("userId", userId);
        query.setFirstResult(startIndex);
        query.setMaxResults(maxResult);
        return query.list();
    }

    @Override
    public Integer queryMsgBySenderAndReciverCount(Integer userId) {
        String hql = "select count(1) from Information where status = :status and user.userId = :userId";
        Query query = getSession().createQuery(hql);
        query.setParameter("status", InformationStatus.NORMAL);
        query.setParameter("userId", userId);
        Number count = (Number) query.uniqueResult();
        return count.intValue();
    }

    @Override
    public List<Information> findInformationByFollowSchool(Integer userId, Integer startIndex, Integer pageSize) {
        String hql = "from UserFollow u where u.from.userId = :userId";
        Query query = getSession().createQuery(hql);
        query.setParameter("userId", userId);
        List<UserFollow> userFollows = query.list();
        if (userFollows == null || userFollows.size() <= 0) {
            return new ArrayList<Information>(0);
        }
        hql = "from Information where user.userId in (:userIds) and status = :status order by createTime desc";
        Integer[] userIds = new Integer[userFollows.size()];
        for (int i = 0; i < userFollows.size(); i++) {
            UserFollow userFollow = userFollows.get(i);
            userIds[i] = userFollow.getOwner().getUserId();
        }
        query = getSession().createQuery(hql);
        query.setParameterList("userIds", userIds);
        query.setParameter("status", InformationStatus.NORMAL);
        query.setFirstResult(startIndex);
        query.setMaxResults(pageSize);
        return query.list();
    }

    @Override
    public Integer queryCountByFollowSchool(Integer userId) {
        String hql = "from UserFollow u where u.from.userId = :userId";
        Query query = getSession().createQuery(hql);
        query.setParameter("userId", userId);
        List<UserFollow> userFollows = query.list();
        if (userFollows == null || userFollows.size() <= 0) {
            return 0;
        }
        hql = "select count(1) from Information where user.userId in (:userIds) and status = :status order by createTime desc";
        Integer[] userIds = new Integer[userFollows.size()];
        for (int i = 0; i < userFollows.size(); i++) {
            UserFollow userFollow = userFollows.get(i);
            userIds[i] = userFollow.getOwner().getUserId();
        }
        query = getSession().createQuery(hql);
        query.setParameterList("userIds", userIds);
        query.setParameter("status", InformationStatus.NORMAL);
        Number count = (Number) query.uniqueResult();
        return count.intValue();
    }

}
