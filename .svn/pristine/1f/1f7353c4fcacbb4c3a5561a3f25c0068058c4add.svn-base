package cv.focus.core.interfaces.student.facade.impl;

import cv.focus.core.application.InterviewService;
import cv.focus.core.domain.material.Image;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.domain.material.Video;
import cv.focus.core.domain.student.model.interview2.Interview;
import cv.focus.core.interfaces.student.dto.InterviewDTO;
import cv.focus.core.interfaces.student.facade.InterviewServiceFacade;
import cv.focus.core.interfaces.user.dto.UserDTO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by song on 16/5/6.
 */
@Service
public class InterviewServiceFacadeImpl implements InterviewServiceFacade {
    @Resource
    InterviewService interviewService;

    @Override
    public String storeInterview(String publicUrl, Material material, MaterialType materialType) {
        Interview interview = interviewService.findInterviewByPublicUrl(publicUrl);
        if (interview == null) {
            interview = new Interview();
            interview.genPassword();
            interview.setPublicUrl(publicUrl);
        }
        switch (materialType) {
            case VIDEO:
                interview.setVideo((Video) material);
                break;
            case IMG:
                interview.setImage((Image) material);
                break;
        }
        interviewService.createInterview(interview);
        return interview.getPassword();
    }

    @Override
    public InterviewDTO findByUserId(Integer userId) {
        Interview interview = interviewService.findInterviewByUserId(userId);
        return transToDTO(interview);
    }

    @Override
    public InterviewDTO findByPublicUrl(String publicUrl) {
        Interview interview = interviewService.findInterviewByPublicUrl(publicUrl);
        return transToDTO(interview);
    }

    @Override
    public InterviewDTO findByPublicUrlAndPassword(String publicUrl, String password) {
        Interview interview = interviewService.findInterviewByPublicUrlAndPassword(publicUrl, password);
        return transToDTO(interview);
    }

    public InterviewDTO transToDTO(Interview interview){
        if(interview == null)
            return null;
        return new InterviewDTO(interview);
    }
}
