package cv.focus.core.application.impl;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.application.MessageService;
import cv.focus.core.domain.message.model.Message;
import cv.focus.core.domain.message.model.MessageRepository;
import cv.focus.core.domain.message.model.MessageText;
import cv.focus.core.domain.message.model.MessageType;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.domain.user.model.UserRepository;
import cv.focus.core.infrastructure.chat.ChatLockManager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * MessageServiceImpl
 * 
 * @author liuruichao
 * Created on 2016-04-13 13:44
 */
@Service
public class MessageServiceImpl implements MessageService {
    @Resource
    private MessageRepository messageRepository;
    @Resource
    private UserRepository userRepository;

    @Override
    public WebPage<Message> getReciveMsgByUser(Integer userId, Integer currentPage) {
        // 获取用户收取的消息
        WebPage<Message> webPage = new WebPage<>();
        webPage.setCurrentPage(currentPage);
        webPage.setData(messageRepository.findByReciverUserId(userId, webPage.getStartCount(), webPage.getPageSize()));
        webPage.setTotalCount(messageRepository.queryByReciverMsgCount(userId));
        return webPage;
    }

    @Override
    public WebPage<Message> getSendMsgByUser(Integer userId, Integer currentPage) {
        // 获取用户发送的消息
        WebPage<Message> webPage = new WebPage<>();
        webPage.setCurrentPage(currentPage);
        webPage.setData(messageRepository.findBySenderUserId(userId, webPage.getStartCount(), webPage.getPageSize()));
        webPage.setTotalCount(messageRepository.queryBySenderMsgCount(userId));
        return webPage;
    }

    @Override
    public Message createMessage(String title, String content, Integer senderId, Integer reciverId) {
        User sender = userRepository.findById(senderId);
        User reciver = userRepository.findById(reciverId);

        if (sender.getType() == reciver.getType()) {
            throw new RuntimeException("发信人和收信人不能为同一类型!student只能和admission发消息!");
        }

        MessageText messageText = new MessageText(title, content, new Date(), sender.getUserName());
        Message message = new Message(MessageType.IM, messageText, sender, reciver, new Date());
        messageRepository.save(messageText);
        messageRepository.store(message);

        return message;
    }

    @Override
    public Integer getUnreadMsgCount(Integer userId) {
        return messageRepository.findUnreadMsgCount(userId);
    }

    @Override
    public void updateStatus(Integer userId, Integer msgId) {
        Message message = messageRepository.findById(msgId);
        if (message.getReciver().getUserId().intValue() != userId) {
            throw new RuntimeException("被删除的消息所有人不匹配!");
        }
        message.setStatus(1);
        messageRepository.store(message);
    }

    @Override
    public List<Message> getNewMsg(Integer reciverId, Integer senderId) {
        List<Message> messages = messageRepository.findUnReadMsg(reciverId, senderId);
        if (messages != null && messages.size() > 0) {
            for (Message msg : messages) {
                // 状态置为已读
                msg.setStatus(1);
            }
        }
        return messages;
    }

    @Override
    public WebPage<Message> getPreviewMsgList(Integer userId, Integer currentPage) {
        WebPage<Message> webPage = new WebPage<>();
        webPage.setCurrentPage(currentPage);
        webPage.setData(messageRepository.findPreviewMsgList(userId, webPage.getStartCount(), webPage.getPageSize()));
        webPage.setTotalCount(messageRepository.queryPreviewMsgListCount(userId));
        return webPage;
    }

    @Override
    public WebPage<Message> getChatRecord(Integer reciverId, Integer senderId, Integer currentPage) {
        WebPage<Message> webPage = new WebPage<>();
        webPage.setCurrentPage(currentPage);
        List<Message> messages = messageRepository.findMsgBySenderAndReciver(reciverId, senderId, webPage.getStartCount(), webPage.getPageSize());
        webPage.setData(messages);
        webPage.setTotalCount(messageRepository.queryMsgBySenderAndReciverCount(reciverId, senderId));
        // 未读信息置为已读
        if (messages != null && messages.size() > 0) {
            for (Message msg : messages) {
                msg.setStatus(1);
            }
        }
        return webPage;
    }

    @Override
    public void delMsgSender(Integer reciverId, Integer senderId) {
        messageRepository.delMsgBySender(reciverId, senderId);
    }

    @Override
    public void readMsgBySender(Integer reciverId, Integer senderId) {
        messageRepository.updateMsgStatusBySender(reciverId, senderId);
    }
}