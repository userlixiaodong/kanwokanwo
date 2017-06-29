package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.school.model.profile.AdmissionRemark;

/**
 * AdRemarkDTO
 * 
 * @author liuruichao
 * Created on 2016-04-05 16:50
 */
public class AdRemarkDTO {
    private String title;
    private String fromPublicUri;
    private String fromAvatar;
    private String ownerPublicUri;

    public AdRemarkDTO(AdmissionRemark remark) {
        title = remark.getTitle();
        fromPublicUri = remark.getFrom().getPublicUri();
        fromAvatar = remark.getFrom().getBiography().getAvatar();
        ownerPublicUri = remark.getOwner().getPublicUri();
    }

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
