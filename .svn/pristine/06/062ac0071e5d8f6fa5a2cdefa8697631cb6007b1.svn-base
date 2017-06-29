package cv.focus.core.domain.message.model;

import java.util.List;

/**
 * MessageRepository
 * 
 * @author liuruichao
 * Created on 2016-04-13 11:28
 */
public interface MessageRepository {
    List<Message> findBySenderUserId(Integer userId, Integer startIndex, Integer maxResult);

    List<Message> findByReciverUserId(Integer userId, Integer startIndex, Integer maxResult);

    int queryBySenderMsgCount(Integer userId);

    int queryByReciverMsgCount(Integer userId);

    void store(Message message);

    void save(MessageText msgText);

    Integer findUnreadMsgCount(Integer userId);

    Message findById(Integer msgId);

    List<Message> findUnReadMsg(Integer reciverId, Integer senderId);

    List<Message> findPreviewMsgList(Integer userId, Integer startIndex, Integer maxResult);

    int queryPreviewMsgListCount(Integer userId);

    List<Message> findMsgBySenderAndReciver(Integer reciverId, Integer senderId, Integer startIndex, Integer maxResult);

    Integer queryMsgBySenderAndReciverCount(Integer reciverId, Integer senderId);

    void delMsgBySender(Integer reciverId, Integer senderId);

    void updateMsgStatusBySender(Integer reciverId, Integer senderId);
}
