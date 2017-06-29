package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.student.model.profile.StudentProfile;
import org.apache.commons.lang3.StringUtils;

/**
 * SchoolOurStudentDTO
 * 
 * @author liuruichao
 * Created on 2016-06-02 10:17
 */
public class SchoolOurStudentDTO {
    private String userPublicUri;
    private String userAvatar;
    private String userName;

    public SchoolOurStudentDTO(StudentProfile studentProfile) {
        userPublicUri = studentProfile.getPublicUri();
        if (StringUtils.isBlank(studentProfile.getBiography().getAvatar())) {
            userAvatar = "//img-cdn.kanwokanwo.com/images/defaultavatar.jpg";
        } else {
            userAvatar = studentProfile.getBiography().getAvatar();
        }
        userName = studentProfile.getBiography().getName();
    }

    public String getUserPublicUri() {
        return userPublicUri;
    }

    public void setUserPublicUri(String userPublicUri) {
        this.userPublicUri = userPublicUri;
    }

    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
