package cv.focus.core.interfaces.user.dto;

import cv.focus.core.application.AdmissionProfileService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.domain.message.model.Message;
import cv.focus.core.domain.user.model.Role;
import org.apache.commons.lang3.time.DateFormatUtils;

import java.io.Serializable;
import java.util.Date;
import java.util.Locale;

/**
 * MessageDTO
 * 
 * @author liuruichao
 * Created on 2016-04-13 14:12
 */
public class MessageDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    private int msgId;
    private int senderId;
    private int reciverId;
    private String senderName;
    private String senderAvatarUrl;
    private String senderType;
    private String reciverName;
    private String reciverAvatarUrl;
    private String reciverType;
    private String title;
    private String content;
    private String msgType;
    private String sendTime;
    private String ymd; // 年月日
    private String hm; // 时分
    private int status;

    public MessageDTO(Message message, StudentProfileService studentProfileService, AdmissionProfileService admissionProfileService) {
        // TODO 待改进
        msgId = message.getMsgId();
        reciverId = message.getReciver().getUserId();
        title = message.getMsgText().getMsgTitle();
        content = message.getMsgText().getMsgContent();
        msgType = message.getMsgType().toString();
        reciverName = message.getReciver().getUserName();
        sendTime = DateFormatUtils.format(message.getSendTime(), "yyyy-MM-dd HH:mm:ss");
        ymd = DateFormatUtils.format(message.getSendTime(), "yyyy/MM/dd");
        hm = DateFormatUtils.format(message.getSendTime(), "a HH:mm", Locale.ENGLISH);
        String url = null;
        if (message.getReciver().getType() == Role.STUDENT) {
            url = studentProfileService.findByEmail(message.getReciver().getEmail()).getBiography().getAvatar();
        } else {
            url = admissionProfileService.getProfileByEmail(message.getReciver().getEmail()).getBiography().getAvatar();
        }
        if (url == null) {
            url = "";
        }
        reciverType = message.getReciver().getType().toString();
        reciverAvatarUrl = url;
        senderAvatarUrl = "";

        if (message.getSender() != null) {
            senderId = message.getSender().getUserId();
            senderName = message.getSender().getUserName();
            if (message.getSender().getType() == Role.STUDENT) {
                url = studentProfileService.findByEmail(message.getSender().getEmail()).getBiography().getAvatar();
            } else {
                url = admissionProfileService.getProfileByEmail(message.getSender().getEmail()).getBiography().getAvatar();
            }
            if (url == null) {
                url = "";
            }
            senderAvatarUrl = url;
            senderType = message.getSender().getType().toString();
        }
        status = message.getStatus();
    }

    public int getMsgId() {
        return msgId;
    }

    public void setMsgId(int msgId) {
        this.msgId = msgId;
    }

    public int getSenderId() {
        return senderId;
    }

    public void setSenderId(int senderId) {
        this.senderId = senderId;
    }

    public int getReciverId() {
        return reciverId;
    }

    public void setReciverId(int reciverId) {
        this.reciverId = reciverId;
    }

    public String getSenderName() {
        return senderName;
    }

    public void setSenderName(String senderName) {
        this.senderName = senderName;
    }

    public String getSenderAvatarUrl() {
        return senderAvatarUrl;
    }

    public void setSenderAvatarUrl(String senderAvatarUrl) {
        this.senderAvatarUrl = senderAvatarUrl;
    }

    public String getReciverName() {
        return reciverName;
    }

    public void setReciverName(String reciverName) {
        this.reciverName = reciverName;
    }

    public String getReciverAvatarUrl() {
        return reciverAvatarUrl;
    }

    public void setReciverAvatarUrl(String reciverAvatarUrl) {
        this.reciverAvatarUrl = reciverAvatarUrl;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getMsgType() {
        return msgType;
    }

    public void setMsgType(String msgType) {
        this.msgType = msgType;
    }

    public String getSendTime() {
        return sendTime;
    }

    public int getStatus() {
        return status;
    }

    public String getYmd() {
        return ymd;
    }

    public void setYmd(String ymd) {
        this.ymd = ymd;
    }

    public String getHm() {
        return hm;
    }

    public void setHm(String hm) {
        this.hm = hm;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setSendTime(String sendTime) {
        this.sendTime = sendTime;
    }

    public String getReciverType() {
        return reciverType;
    }

    public void setReciverType(String reciverType) {
        this.reciverType = reciverType;
    }

    public String getSenderType() {
        return senderType;
    }

    public void setSenderType(String senderType) {
        this.senderType = senderType;
    }
}
