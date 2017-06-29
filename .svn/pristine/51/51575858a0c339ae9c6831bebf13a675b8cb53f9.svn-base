package cv.focus.core.infrastructure.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.interfaces.user.dto.UserDTO;
import org.apache.commons.lang3.Validate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@SuppressWarnings({"unchecked", "rawtypes"})
public abstract class BaseController {
    protected Gson gson = new GsonBuilder().serializeNulls().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
    protected final String TOHOME = "redirect:/";

    /**
     * 获取当前登录用户
     *
     * @return
     */
    protected String getLoginProfileId(HttpServletRequest request) {
        UserDTO userDTO = getLoginUser(request);
        if (userDTO != null) {
            return userDTO.getStudentProfileId();
        }
        return null;
    }

    protected String getLoginEmail(HttpServletRequest request) {
        UserDTO userDTO = getLoginUser(request);
        if (userDTO != null) {
            return userDTO.getEmail();
        }
        return null;
    }

    protected UserDTO getLoginUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (UserDTO) session.getAttribute("loginUser");
    }

    protected <E> Result<E> newFaildResult(String message) {
        Result<E> result = new Result<>();
        result.setStatus(-1);
        result.setMessage(message);
        return result;
    }

    protected <E> Result<E> newSuccessResult(String message, E data) {
        Result<E> result = new Result<>();
        result.setStatus(1);
        result.setMessage(message);
        result.setData(data);
        return result;
    }

    protected void setSession(Integer userId, String mobile, String email, String roleR, StudentProfile studentProfile, HttpSession session) {
        Validate.notNull(studentProfile);

        UserDTO userDTO = new UserDTO();
        if (studentProfile.getBiography() != null) {
            userDTO.setAvatarUrl(studentProfile.getBiography().getAvatar());
            userDTO.setUserName(studentProfile.getBiography().getName());
        }
        userDTO.setPublicUri(studentProfile.getPublicUri());
        userDTO.setEmail(email);
        userDTO.setStudentProfileId(studentProfile.getStudentProfileId().getStudentProfileId());
        userDTO.setMobile(mobile);
        userDTO.setRole(Role.STUDENT);
        userDTO.setRoleR(roleR);
        userDTO.setUserId(userId);
        session.setAttribute("loginUser", userDTO);
    }

    protected void setSession(Integer userId, String email, AdmissionProfile admissionProfile, HttpSession session) {
        Validate.notNull(admissionProfile);

        UserDTO userDTO = new UserDTO();
        if (admissionProfile.getBiography() != null) {
            userDTO.setAvatarUrl(admissionProfile.getBiography().getAvatar());
            userDTO.setUserName(admissionProfile.getBiography().getName());
        }
        userDTO.setPublicUri(admissionProfile.getPublicUri());
        userDTO.setEmail(email);
        userDTO.setAdmissionProfileId(admissionProfile.getAdmissionProfileId().getAdmissionProfileId());
        userDTO.setRole(Role.AD_REP);
        userDTO.setUserId(userId);
        session.setAttribute("loginUser", userDTO);
    }
}
