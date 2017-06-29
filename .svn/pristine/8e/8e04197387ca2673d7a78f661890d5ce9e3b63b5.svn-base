package cv.focus.core.interfaces.user.dto;

import cv.focus.core.application.AdmissionProfileService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.Video;
import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.Information;
import cv.focus.core.interfaces.student.dto.MaterialDTO;
import org.apache.commons.lang3.time.DateFormatUtils;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * InformationDTO
 * 
 * @author liuruichao
 * Created on 2016-05-23 14:58
 */
public class InformationDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer informationId;
    private String text;
    private List<MaterialDTO> materials;
    private String avatarUrl;
    private Integer userId;
    private String userName;
    private String publicUri;
    private String createTime;
    private int favorCount;
    private String isFavor = "false"; // 当前登录用户是否赞过这条信息

    public InformationDTO(Information information, AdmissionProfileService admissionProfileService, StudentProfileService studentProfileService) {
        informationId = information.getInformationId();
        text = information.getText();
        userName = information.getUser().getUserName();
        userId = information.getUser().getUserId();
        AdmissionProfile admissionProfile = admissionProfileService.getProfileByEmail(information.getUser().getEmail());
        StudentProfile studentProfile = studentProfileService.findByEmail(information.getUser().getEmail());
        if (admissionProfile != null) {
            avatarUrl = admissionProfile.getBiography().getAvatar();
            publicUri = admissionProfile.getPublicUri();
        } else {
            avatarUrl = studentProfile.getBiography().getAvatar();
            publicUri = studentProfile.getPublicUri();
        }
        if (information.getMaterials() != null && information.getMaterials().size() > 0) {
            materials = new ArrayList<>(information.getMaterials().size());
            for (Material material : information.getMaterials()) {
                materials.add(new MaterialDTO(material));
            }
        }
        createTime = DateFormatUtils.format(information.getCreateTime(), "yyyy-MM-dd HH:mm:ss");
        favorCount = information.getFavorCount();
    }

    public Integer getInformationId() {
        return informationId;
    }

    public void setInformationId(Integer informationId) {
        this.informationId = informationId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public List<MaterialDTO> getMaterials() {
        return materials;
    }

    public void setMaterials(List<MaterialDTO> materials) {
        this.materials = materials;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPublicUri() {
        return publicUri;
    }

    public void setPublicUri(String publicUri) {
        this.publicUri = publicUri;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public int getFavorCount() {
        return favorCount;
    }

    public void setFavorCount(int favorCount) {
        this.favorCount = favorCount;
    }

    public String getIsFavor() {
        return isFavor;
    }

    public void setIsFavor(boolean isFavor) {
        if (isFavor) {
            this.isFavor = "true";
        } else {
            this.isFavor = "false";
        }
    }
}
