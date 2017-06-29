package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.school.model.profile.MyLinks;

/**
 * MyLinks
 * 
 * @author liuruichao
 * Created on 2016-04-05 15:10
 */
public class MyLinksDTO {
    private String linkEmail;
    private String linkTwitter;
    private String linkFacebook;
    private String linkInstagram;

    public MyLinksDTO(MyLinks myLinks) {
        if (myLinks != null) {
            linkEmail = myLinks.getLinkEmail();
            linkTwitter = myLinks.getLinkTwitter();
            linkFacebook = myLinks.getLinkFacebook();
            linkInstagram = myLinks.getLinkInstagram();
        }
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
}
