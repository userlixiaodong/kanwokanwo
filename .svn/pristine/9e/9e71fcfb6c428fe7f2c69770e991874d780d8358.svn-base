package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.message.model.Message;
import cv.focus.core.domain.message.model.MessageRepository;
import cv.focus.core.domain.message.model.MessageText;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * MessageRepositoryImpl
 * 
 * @author liuruichao
 * Created on 2016-04-13 13:09
 */
@Repository
public class MessageRepositoryHibernateImpl extends HibernateRepository implements MessageRepository {
    @Override
    public List<Message> findBySenderUserId(Integer userId, Integer startIndex, Integer maxResult) {
        Query query = getSession().createQuery("from Message where sender.userId=:userId");
        query.setParameter("userId", userId);
        query.setFirstResult(startIndex);
        query.setMaxResults(maxResult);
        return query.list();
    }

    @Override
    public List<Message> findByReciverUserId(Integer userId, Integer startIndex, Integer maxResult) {
        Query query = getSession().createQuery("from Message where reciver.userId=:userId");
        query.setParameter("userId", userId);
        query.setFirstResult(startIndex);
        query.setMaxResults(maxResult);
        return query.list();
    }

    @Override
    public int queryBySenderMsgCount(Integer userId) {
        Query query = getSession().createQuery("select count(1) from Message where sender.userId=:userId");
        query.setParameter("userId", userId);
        Number count = (Number) query.uniqueResult();
        return count.intValue();
    }

    @Override
    public int queryByReciverMsgCount(Integer userId) {
        Query query = getSession().createQuery("select count(1) from Message where reciver.userId=:userId");
        query.setParameter("userId", userId);
        Number count = (Number) query.uniqueResult();
        return count.intValue();
    }

    @Override
    public void store(Message message) {
        getSession().saveOrUpdate(message);
    }

    @Override
    public void save(MessageText msgText) {
        getSession().save(msgText);
    }

    @Override
    public Integer findUnreadMsgCount(Integer userId) {
        Query query = getSession().createQuery("select count(1) from Message where status=0 and reciver.userId=:userId");
        query.setParameter("userId", userId);
        Number count = (Number) query.uniqueResult();
        return count.intValue();
    }

    @Override
    public Message findById(Integer msgId) {
        return (Message) getSession().load(Message.class, msgId);
    }

    @Override
    public List<Message> findUnReadMsg(Integer reciverId, Integer senderId) {
        Query query = getSession().createQuery("from Message where status = 0 and sender.userId=:senderId and reciver.userId=:reciverId");
        query.setParameter("senderId", senderId);
        query.setParameter("reciverId", reciverId);
        return query.list();
    }

    @Override
    public List<Message> findPreviewMsgList(Integer userId, Integer startIndex, Integer maxResult) {
        List<Message> messages = new ArrayList<>(maxResult);
        SQLQuery query = getSession().createSQLQuery("select msg.msgId from (select q.msgId, q.userId, q.sendTime from (select msgId, senderId, sendTime, senderId+reciverId userId from message where reciverId=:userId or senderId=:userId order by sendTime desc) q group by q.userId order by q.sendTime desc) msg group by userId order by sendTime desc");
        query.setParameter("userId", userId);
        query.setFirstResult(startIndex);
        query.setMaxResults(maxResult);
        List<Integer> rowList = query.list();
        if (rowList != null && rowList.size() > 0) {
            for (Integer msgId : rowList) {
                messages.add(findById(msgId));
            }
        }

        return messages;
    }

    @Override
    public int queryPreviewMsgListCount(Integer userId) {
        SQLQuery query = getSession().createSQLQuery("select count(qq.msgId) from (select msg.msgId from (select q.msgId, q.userId from (select msgId, senderId, sendTime, senderId+reciverId userId from message where reciverId=:userId or senderId=:userId order by sendTime desc) q group by q.userId desc) msg group by userId) qq");
        query.setParameter("userId", userId);
        Number count = (Number) query.uniqueResult();
        return count.intValue();
    }

    @Override
    public List<Message> findMsgBySenderAndReciver(Integer reciverId, Integer senderId, Integer startIndex, Integer maxResult) {
        Query query = null;
        if (senderId == 0) {
            query = getSession().createQuery("from Message where sender=null and reciver.userId=:reciverId order by sendTime desc");
            query.setParameter("reciverId", reciverId);
        } else {
            query = getSession().createQuery("from Message where sender.userId in (:senderId, :reciverId) and reciver.userId in (:senderId, :reciverId) order by sendTime desc");
            query.setParameter("senderId", senderId);
            query.setParameter("reciverId", reciverId);
        }
        query.setFirstResult(startIndex);
        query.setMaxResults(maxResult);
        return query.list();
    }

    @Override
    public Integer queryMsgBySenderAndReciverCount(Integer reciverId, Integer senderId) {
        Query query = getSession().createQuery("select count(1) from Message where sender.userId in (:senderId, :reciverId) and reciver.userId in (:senderId, :reciverId)");
        query.setParameter("senderId", senderId);
        query.setParameter("reciverId", reciverId);
        Number count = (Number) query.uniqueResult();
        return count.intValue();
    }

    @Override
    public void delMsgBySender(Integer reciverId, Integer senderId) {
        Query query = getSession().createQuery("delete from Message where sender.userId in(:senderId,:reciverId) and reciver.userId in (:reciverId, :senderId)");
        query.setParameter("senderId", senderId);
        query.setParameter("reciverId", reciverId);
        query.executeUpdate();
    }

    @Override
    public void updateMsgStatusBySender(Integer reciverId, Integer senderId) {
        Query query = null;
        if (senderId != null && senderId > 0) {
            query = getSession().createQuery("update Message set status=1 where sender.userId=:senderId and reciver.userId=:reciverId");
            query.setParameter("senderId", senderId);
            query.setParameter("reciverId", reciverId);
        } else {
            query = getSession().createQuery("update Message set status=1 where sender.userId=:senderId and reciver.userId=:reciverId");
            query.setParameter("reciverId", reciverId);
        }
        query.executeUpdate();
    }
}