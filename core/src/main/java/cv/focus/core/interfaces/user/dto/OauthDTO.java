package cv.focus.core.interfaces.user.dto;

import cv.focus.core.domain.user.model.Oauth;
import cv.focus.core.domain.user.model.OauthType;
import cv.focus.core.domain.user.model.Role;

import java.io.Serializable;

/**
 * OauthDTO
 * 
 * @author liuruichao
 * Created on 2016-04-14 14:25
 */
public class OauthDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer oauthId;
    private String openId;
    private String token;
    private OauthType type;
    private String publicUri;
    private Integer userId;
    private String mobile;
    private String email;
    private Role role;
    private String roleR;

    public OauthDTO() {
    }

    public OauthDTO(Oauth oauth) {
        oauthId = oauth.getOauthId();
        openId = oauth.getOpenId();
        token = oauth.getToken();
        type = oauth.getType();
        userId = oauth.getUser().getUserId();
        mobile = oauth.getUser().getMobile();
        email = oauth.getUser().getEmail();
        role = oauth.getUser().getType();
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

    public String getPublicUri() {
        return publicUri;
    }

    public void setPublicUri(String publicUri) {
        this.publicUri = publicUri;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRoleR() {
        return roleR;
    }

    public void setRoleR(String roleR) {
        this.roleR = roleR;
    }
}
