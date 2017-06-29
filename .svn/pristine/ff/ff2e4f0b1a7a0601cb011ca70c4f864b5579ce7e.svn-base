package cv.focus.core.interfaces.student.facade;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.interfaces.student.dto.InterviewDTO;
import cv.focus.core.interfaces.user.dto.UserDTO;

/**
 * Created by song on 16/5/6.
 */
public interface InterviewServiceFacade {

    String storeInterview(String publicUrl, Material material, MaterialType materialType);
    InterviewDTO findByUserId(Integer userId);
    InterviewDTO findByPublicUrl(String publicUrl);
    InterviewDTO findByPublicUrlAndPassword(String publicUrl, String password);
}
