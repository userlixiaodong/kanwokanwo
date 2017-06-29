package cv.focus.core.infrastructure.chat;

import cv.focus.common.domain.model.DomainEvent;
import cv.focus.common.domain.model.EventType;

/**
 * UserNewMsg
 * 
 * @author liuruichao
 * Created on 2016-04-25 17:30
 */
public class UserNewMsg extends DomainEvent {
    private int senderId;
    private int reciverId;

    public UserNewMsg(int senderId, int reciverId) {
        this.senderId = senderId;
        this.reciverId = reciverId;
    }

    public int getSenderId() {
        return senderId;
    }

    public int getReciverId() {
        return reciverId;
    }

    @Override
    public EventType getEventType() {
        return null;
    }

    @Override
    public boolean sameEventAs(Object other) {
        return false;
    }
}
