package cv.focus.core.domain.school.model.profile;

import cv.focus.core.domain.shared.ValueObject;
import org.apache.commons.lang3.StringUtils;

import javax.persistence.AttributeOverride;
import javax.persistence.Column;

/**
 * 联系方式(社交网络)
 * 
 * @author liuruichao
 * Created on 2016-04-05 13:01
 */
public class MyLinks implements ValueObject {
    @AttributeOverride(name = "linkEmail",column = @Column(name = "linkEmail"))
    private String linkEmail;
    @AttributeOverride(name = "linkTwitter",column = @Column(name = "linkTwitter"))
    private String linkTwitter;
    @AttributeOverride(name = "linkFacebook",column = @Column(name = "linkFacebook"))
    private String linkFacebook;
    @AttributeOverride(name = "linkInstagram",column = @Column(name = "linkInstagram"))
    private String linkInstagram;

    public MyLinks() {
    }

    public MyLinks(String linkEmail, String linkTwitter, String linkFacebook, String linkInstagram) {
        this.linkEmail = linkEmail;
        this.linkTwitter = linkTwitter;
        this.linkFacebook = linkFacebook;
        this.linkInstagram = linkInstagram;
    }

    public String getLinkEmail() {
        return linkEmail;
    }

    public void setLinkEmail(String linkEmail) {
        this.linkEmail = linkEmail;
    }

    public String getLinkTwitter() {
        return linkTwitter;
    }

    public void setLinkTwitter(String linkTwitter) {
        this.linkTwitter = linkTwitter;
    }

    public String getLinkFacebook() {
        return linkFacebook;
    }

    public void setLinkFacebook(String linkFacebook) {
        this.linkFacebook = linkFacebook;
    }

    public String getLinkInstagram() {
        return linkInstagram;
    }

    public void setLinkInstagram(String linkInstagram) {
        this.linkInstagram = linkInstagram;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }

    public boolean isShowConnect() {
        if (StringUtils.isNotBlank(linkEmail) || StringUtils.isNotBlank(linkTwitter)
                || StringUtils.isNotBlank(linkFacebook) || StringUtils.isNotBlank(linkInstagram)) {
            return true;
        }
        return false;
    }
}
