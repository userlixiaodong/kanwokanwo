package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.activity.ConsultationEntity;
import cv.focus.core.domain.activity.UserItemEntity;
import cv.focus.core.domain.activity.UserItemRepository;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/4/5.
 */
@Repository
public class UserItemRepositoryHibernateImpl extends HibernateRepository implements UserItemRepository {
    @Override
    public void store(UserItemEntity userItemEntity) {
       getSession().saveOrUpdate(userItemEntity);

    }

    @Override
    public UserItemEntity findUserItemByItemIdAndUserId(Integer userId, String itemId) {
        Integer ItemID = Integer.parseInt(itemId);
        Query query = getSession().createQuery("from UserItemEntity where userId = :userId and itemId=:itemId");
        query.setInteger("userId",userId);
        query.setInteger("itemId",ItemID);

        List list = query.list();
        if (list != null && list.size() > 0) {
            return (UserItemEntity) list.get(0);
        }
        return null;
    }

    @Override
    public UserItemEntity findUserItemById(Integer id) {
        Query query = getSession().createQuery("from UserItemEntity where id=:id");
        query.setInteger("id", id);
        List list = query.list();
        if (list != null && list.size() > 0) {
            return (UserItemEntity) list.get(0);
        }
        return null;
    }

    @Override
    public void updateUserItem(UserItemEntity userItem) {
        /*String sql="update ItemEntity set chickNum="+afterClickNum+" where itemId=:itemId";
        Query query = getSession().createQuery(sql);
        query.setParameter("itemId", itemId);
        query.executeUpdate();*/
        getSession().saveOrUpdate(userItem);
    }

    @Override
    public void storeConsultation(ConsultationEntity consultationEntity) {
        getSession().saveOrUpdate(consultationEntity);
    }

    @Override
    public UserItemEntity findUserItemByMoblie(String itemId, String moblie) {
        Query query = getSession().createQuery("from UserItemEntity where moblie = :moblie and itemId=:itemId");
        query.setParameter("moblie", moblie);
        query.setInteger("itemId", Integer.parseInt(itemId));
        List list = query.list();
        if (list != null && list.size() > 0) {
            return (UserItemEntity) list.get(0);
        }
        return null;
    }
}
