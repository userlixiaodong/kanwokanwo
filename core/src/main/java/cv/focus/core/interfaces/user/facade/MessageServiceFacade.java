package cv.focus.core.interfaces.user.facade;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.interfaces.user.dto.MessageDTO;

import java.util.List;

/**
 * MessageServiceFacade
 * 
 * @author liuruichao
 * Created on 2016-04-13 14:20
 */
public interface MessageServiceFacade {
    MessageDTO sendMsg(Integer senderId, Integer reciverId, String title, String content);

    WebPage<MessageDTO> getMsgList(Integer userId, Integer currentPage, String type);

    Integer getUnreadMsgCount(Integer userId);

    void readMsg(Integer userId, Integer msgId);

    List<MessageDTO> getNewMsg(Integer reciverId, Integer senderId);

    WebPage<MessageDTO> getUserPreviewMsgList(Integer userId, Integer currentPage);

    WebPage<MessageDTO> getChatRecord(Integer reciverId, Integer senderId, Integer currentPage);

    void delMsgBySender(Integer reciverId, Integer senderId);

    void readMsgBySender(Integer reciverId, Integer senderId);
}
