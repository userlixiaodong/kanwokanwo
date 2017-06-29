package cv.focus.core.domain.user.model;

import cv.focus.core.domain.shared.Entity;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Oauth
 * 
 * @author liuruichao
 * Created on 2016-04-14 13:27
 */
@javax.persistence.Entity
@Table
public class Oauth implements Entity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer oauthId;
    private String openId;
    private String token;
    private String realOpenId; // wechat 有两个openId, 一个是openId,一个是unionId,这个相当于openId
    @Enumerated(EnumType.STRING)
    private OauthType type;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "userId", nullable = false)
    private User user;

    public Oauth() {
    }

    public Oauth(String openId, String token, OauthType type, User user) {
        this.openId = openId;
        this.token = token;
        this.type = type;
        this.user = user;
    }

    public Integer getOauthId() {
        return oauthId;
    }

    public void setOauthId(Integer oauthId) {
        this.oauthId = oauthId;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public OauthType getType() {
        return type;
    }

    public void setType(OauthType type) {
        this.type = type;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getRealOpenId() {
        return realOpenId;
    }

    public void setRealOpenId(String realOpenId) {
        this.realOpenId = realOpenId;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }
}
