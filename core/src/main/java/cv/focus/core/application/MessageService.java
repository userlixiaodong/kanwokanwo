package cv.focus.core.application;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.message.model.Message;

import java.util.List;

/**
 * MessageService
 * 
 * @author liuruichao
 * Created on 2016-04-13 13:44
 */
public interface MessageService {
    /**
     * 获取用户收取的消息
     * @param userId 用户Id
     * @param currentPage 当前页码
     * @return
     */
    WebPage<Message> getReciveMsgByUser(Integer userId, Integer currentPage);

    /**
     * 获取用户发送的消息
     * @param userId 用户Id
     * @param currentPage 当前页码
     * @return
     */
    WebPage<Message> getSendMsgByUser(Integer userId, Integer currentPage);

    Message createMessage(String title, String content, Integer senderId, Integer reciverId);

    Integer getUnreadMsgCount(Integer userId);

    void updateStatus(Integer userId, Integer msgId);

    List<Message> getNewMsg(Integer reciverId, Integer senderId);

    WebPage<Message> getPreviewMsgList(Integer userId, Integer currentPage);

    WebPage<Message> getChatRecord(Integer reciverId, Integer senderId, Integer currentPage);

    void delMsgSender(Integer reciverId, Integer senderId);

    void readMsgBySender(Integer reciverId, Integer senderId);
}
