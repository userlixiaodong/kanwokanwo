package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.student.model.profile.StudentProfile;

/**
 * Created by lcq on 2016/3/3.
 */
public class RemarkDTO {

    private String title;

    private String fromPublicUri;

    private String fromAvatar;

    private String ownerPublicUri;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFromPublicUri() {
        return fromPublicUri;
    }

    public void setFromPublicUri(String fromPublicUri) {
        this.fromPublicUri = fromPublicUri;
    }

    public String getFromAvatar() {
        return fromAvatar;
    }

    public void setFromAvatar(String fromAvatar) {
        this.fromAvatar = fromAvatar;
    }

    public String getOwnerPublicUri() {
        return ownerPublicUri;
    }

    public void setOwnerPublicUri(String ownerPublicUri) {
        this.ownerPublicUri = ownerPublicUri;
    }
}
