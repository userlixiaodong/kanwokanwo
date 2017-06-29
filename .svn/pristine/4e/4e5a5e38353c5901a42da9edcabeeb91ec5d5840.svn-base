package cv.focus.core.infrastructure.messaging.jms.model;

import cv.focus.common.domain.model.DomainEvent;
import cv.focus.common.domain.model.EventType;
import cv.focus.core.application.AdmissionProfileService;
import cv.focus.core.application.OauthService;
import cv.focus.core.application.UserService;
import cv.focus.core.domain.user.model.Information;

import java.util.Date;
import java.util.List;

/**
 * CreateInformationEvent
 * 
 * @author liuruichao
 * Created on 2016-06-22 22:32
 */
public class CreateInformationEvent extends DomainEvent {
    private Date createTime;
    private List<User> followUsers;
    private String publicUri;
    private String schoolName;

    public CreateInformationEvent(Date createTime, List<User> followUsers, String publicUri, String schoolName) {
        this.createTime = createTime;
        this.followUsers = followUsers;
        this.publicUri = publicUri;
        this.schoolName = schoolName;
    }

    public String getPublicUri() {
        return publicUri;
    }

    public void setPublicUri(String publicUri) {
        this.publicUri = publicUri;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public List<User> getFollowUsers() {
        return followUsers;
    }

    public void setFollowUsers(List<User> followUsers) {
        this.followUsers = followUsers;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    @Override
    public EventType getEventType() {
        return null;
    }

    @Override
    public boolean sameEventAs(Object other) {
        return false;
    }

    public static class User {
        public String userName;
        public String openId;

        public User(String userName, String openId) {
            this.userName = userName;
            this.openId = openId;
        }
    }

    public static User createEventUser(String userName, String openId) {
        return new User(userName, openId);
    }
}
