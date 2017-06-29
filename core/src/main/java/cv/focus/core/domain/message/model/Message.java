package cv.focus.core.domain.message.model;

import cv.focus.core.domain.shared.Entity;
import cv.focus.core.domain.user.model.User;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.util.Date;

/**
 * Message
 * 
 * @author liuruichao
 * Created on 2016-04-13 10:42
 */
@javax.persistence.Entity
@Table
public class Message implements Entity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer msgId;
    @Enumerated(EnumType.STRING)
    private MessageType msgType;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "msgTextId", nullable = false)
    private MessageText msgText;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "senderId", nullable = true)
    private User sender; // 如果是系统消息,可以为null
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "reciverId", nullable = false)
    private User reciver;
    private String senderName;
    private String reciverName;
    private Date sendTime;
    private Integer status = 0; // 0:未读 1:已读

    public Message() {
    }

    public Message(MessageType msgType, MessageText msgText, User sender, User reciver, Date sendTime) {
        this.msgType = msgType;
        this.msgText = msgText;
        this.sender = sender;
        this.reciver = reciver;
        this.sendTime = sendTime;
        this.reciverName = reciver.getUserName();
        // 系统消息没有sender
        if (sender != null) {
            senderName = sender.getUserName();
        }
    }

    public Integer getMsgId() {
        return msgId;
    }

    public void setMsgId(Integer msgId) {
        this.msgId = msgId;
    }

    public MessageType getMsgType() {
        return msgType;
    }

    public void setMsgType(MessageType msgType) {
        this.msgType = msgType;
    }

    public MessageText getMsgText() {
        return msgText;
    }

    public void setMsgText(MessageText msgText) {
        this.msgText = msgText;
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

    public User getReciver() {
        return reciver;
    }

    public void setReciver(User reciver) {
        this.reciver = reciver;
    }

    public String getSenderName() {
        return senderName;
    }

    public void setSenderName(String senderName) {
        this.senderName = senderName;
    }

    public String getReciverName() {
        return reciverName;
    }

    public void setReciverName(String reciverName) {
        this.reciverName = reciverName;
    }

    public Date getSendTime() {
        return sendTime;
    }

    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
