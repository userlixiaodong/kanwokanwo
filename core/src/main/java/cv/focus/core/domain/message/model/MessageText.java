package cv.focus.core.domain.message.model;

import cv.focus.core.domain.shared.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * MessageText
 * 
 * @author liuruichao
 * Created on 2016-04-13 10:57
 */
@javax.persistence.Entity
@Table
public class MessageText implements Entity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer msgTextId;
    private String msgTitle;
    private String msgContent;
    private Date createTime;
    private String editorName;

    public MessageText() {

    }

    public MessageText(String msgTitle, String msgContent, Date createTime, String editorName) {
        this.msgTitle = msgTitle;
        this.msgContent = msgContent;
        this.createTime = createTime;
        this.editorName = editorName;
    }

    public Integer getMsgTextId() {
        return msgTextId;
    }

    public void setMsgTextId(Integer msgTextId) {
        this.msgTextId = msgTextId;
    }

    public String getMsgTitle() {
        return msgTitle;
    }

    public void setMsgTitle(String msgTitle) {
        this.msgTitle = msgTitle;
    }

    public String getMsgContent() {
        return msgContent;
    }

    public void setMsgContent(String msgContent) {
        this.msgContent = msgContent;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getEditorName() {
        return editorName;
    }

    public void setEditorName(String editorName) {
        this.editorName = editorName;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
