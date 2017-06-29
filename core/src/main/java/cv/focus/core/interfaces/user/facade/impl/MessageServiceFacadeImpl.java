package cv.focus.core.interfaces.user.facade.impl;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.application.AdmissionProfileService;
import cv.focus.core.application.MessageService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.domain.message.model.Message;
import cv.focus.core.interfaces.user.dto.MessageDTO;
import cv.focus.core.interfaces.user.facade.MessageServiceFacade;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * MessageServiceFacadeImpl
 * 
 * @author liuruichao
 * Created on 2016-04-13 14:21
 */
@Service
public class MessageServiceFacadeImpl implements MessageServiceFacade {
    @Resource
    private MessageService messageService;
    @Resource
    private StudentProfileService studentProfileService;
    @Resource
    private AdmissionProfileService admissionProfileService;
    @Resource
    private RedisTemplate<String, String> redisTemplate;

    @Override
    public WebPage<MessageDTO> getMsgList(Integer userId, Integer currentPage, String type) {
        WebPage<Message> webPage = null;
        if (type.equals("send")) {
            webPage = messageService.getSendMsgByUser(userId, currentPage);
        } else {
            webPage = messageService.getReciveMsgByUser(userId, currentPage);
        }
        return convertWebPage(webPage);
    }

    @Override
    public Integer getUnreadMsgCount(Integer userId) {
        return messageService.getUnreadMsgCount(userId);
    }

    @Override
    public void readMsg(Integer userId, Integer msgId) {
        messageService.updateStatus(userId, msgId);
    }

    @Override
    public List<MessageDTO> getNewMsg(Integer reciverId, Integer senderId) {
        List<Message> messages = messageService.getNewMsg(reciverId, senderId);
        List<MessageDTO> messageDTOList = new ArrayList<>(messages.size());
        for (Message msg : messages) {
            messageDTOList.add(new MessageDTO(msg, studentProfileService, admissionProfileService));
        }
        return messageDTOList;
    }

    @Override
    public WebPage<MessageDTO> getUserPreviewMsgList(Integer userId, Integer currentPage) {
        WebPage<Message> webPage = messageService.getPreviewMsgList(userId, currentPage);
        return convertWebPage(webPage);
    }

    @Override
    public WebPage<MessageDTO> getChatRecord(Integer reciverId, Integer senderId, Integer currentPage) {
        WebPage<Message> webPage = messageService.getChatRecord(reciverId, senderId, currentPage);
        WebPage<MessageDTO> webPageDTO = convertWebPage(webPage);
        if (webPageDTO.getData() != null && webPageDTO.getData().size() > 0) {
            List<MessageDTO> dtoList = new ArrayList<>(webPageDTO.getData().size());
            for (int i = webPageDTO.getData().size() - 1; i >= 0; i--) {
                dtoList.add(webPageDTO.getData().get(i));
            }
            webPageDTO.setData(dtoList);
        }
        return webPageDTO;
    }

    @Override
    public void delMsgBySender(Integer userId, Integer senderId) {
        messageService.delMsgSender(userId, senderId);
    }

    @Override
    public void readMsgBySender(Integer reciverId, Integer senderId) {
        messageService.readMsgBySender(reciverId, senderId);
    }

    @Override
    public MessageDTO sendMsg(Integer senderId, Integer reciverId, String title, String content) {
        Message message = messageService.createMessage(title, content, senderId, reciverId);
        //if (!ChatLockManager.notifyNewMsg(senderId, reciverId)) {
        //    // TODO 对方不在线则发系统通知
        //}
        // 通知新消息
        String key = senderId + "_" + reciverId;
        redisTemplate.convertAndSend("userNewMsg", key);
        return new MessageDTO(message, studentProfileService, admissionProfileService);
    }

    private WebPage<MessageDTO> convertWebPage(WebPage<Message> webPage) {
        WebPage<MessageDTO> webPageDTO = new WebPage<>();
        webPageDTO.setTotalCount(webPage.getTotalCount());
        webPageDTO.setCurrentPage(webPage.getCurrentPage());
        webPageDTO.setEndCount(webPage.getEndCount());
        webPageDTO.setPageSize(webPage.getPageSize());
        webPageDTO.setStartCount(webPage.getStartCount());
        webPageDTO.setTotalPage(webPage.getTotalPage());

        List<MessageDTO> dataList = new ArrayList<>(webPage.getData().size());
        for (Message message : webPage.getData()) {
            dataList.add(new MessageDTO(message, studentProfileService, admissionProfileService));
        }

        webPageDTO.setData(dataList);
        return webPageDTO;
    }
}
