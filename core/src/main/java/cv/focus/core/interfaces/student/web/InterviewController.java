package cv.focus.core.interfaces.student.web;

import cv.focus.common.domain.model.SyncEventEngine;
import cv.focus.common.infrastructure.services.StorageService;
import cv.focus.core.application.InterviewService;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.interfaces.material.facade.impl.MaterialServiceFacadeImpl;
import cv.focus.core.interfaces.material.facade.impl.MaterialServicePrivacyFacadeImpl;
import cv.focus.core.interfaces.school.facade.AdmissionActivityServiceFacade;
import cv.focus.core.interfaces.school.facade.AdmissionProfileServiceFacade;
import cv.focus.core.interfaces.student.dto.InterviewDTO;
import cv.focus.core.interfaces.student.dto.MaterialDTO;
import cv.focus.core.interfaces.student.facade.InterviewServiceFacade;
import cv.focus.core.interfaces.student.facade.StudentProfileServiceFacade;
import cv.focus.core.interfaces.user.dto.UserDTO;
import net.sf.json.JSONObject;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.net.URLDecoder;

/**
 * Created by song on 16/5/6.
 */
@Controller
@RequestMapping("/interview")
public class InterviewController extends BaseController{

    private final Logger logger = Logger.getLogger(InterviewController.class);
    @Resource(name="materialServicePrivacyFacadeImpl")
    private MaterialServicePrivacyFacadeImpl materialService;
    @Resource
    private InterviewServiceFacade interviewService;
    @Resource
    private StudentProfileServiceFacade studentProfileServiceFacade;
    //    @Resource
    @RequestMapping(value = "/upload")
    @ResponseBody
    public Result<String> adminAddInterview(
            @RequestParam String publicUrl,
            @RequestParam MaterialType materialType,
            @RequestParam MultipartFile interview,
            @RequestParam(required = false) String title,
            HttpServletRequest request) {
        Result<String> result = null;
        try {

            StudentProfile studentProfile = studentProfileServiceFacade.findStudentProfileByPublicUri(publicUrl);
            if(studentProfile == null){
                return newFaildResult(ResultMessages.PUBLICURL_ERROR);
            }
            String errMsg = materialService.checkUploadFile(materialType, interview.getOriginalFilename(), interview.getSize());
            if (StringUtils.isNotBlank(errMsg)) {
                return newFaildResult(errMsg);
            }
            Object uploadResult = materialService.putIntoOSS(materialType, interview.getOriginalFilename(), interview.getInputStream(), true);
            if (uploadResult == null) {
                return newFaildResult(ResultMessages.UPLOAD_FILE_FAIL);
            }

            Material material = materialService.genMaterial(uploadResult, title, materialType);
            String password = interviewService.storeInterview(publicUrl, material, materialType);
            result = newSuccessResult(ResultMessages.UPLOAD_FILE_SUCCESS, password);
        } catch (Exception e) {
            logger.error("InterviewController.uploadFile()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping(value = "/toAddInterView")
    public String toAddInterView(){
        return "back/addInterview";
    }


    @RequestMapping(value = "/check", method = RequestMethod.GET)
    @ResponseBody
    public Result<String> checkPassword(@RequestParam String publicUrl, @RequestParam String password) {
        Result<String> result = null;
        try {
            publicUrl= URLDecoder.decode(publicUrl,"utf-8");
            InterviewDTO interviewDTO = interviewService.findByPublicUrlAndPassword(publicUrl, password);
            if (interviewDTO == null) {
                return  newFaildResult(ResultMessages.INTERVIEW_PASSWORD_ERROR);
            }
            if (interviewDTO.getVideo() != null) {
                interviewDTO.getVideo().setMaterialSrc(materialService.genPublicUrl(interviewDTO.getVideo().getMaterialSrc()));
                interviewDTO.getVideo().setVideoPreviewImg(materialService.genPublicUrl(interviewDTO.getVideo().getVideoPreviewImg()));
            }
            if (interviewDTO.getImage() != null)
                interviewDTO.getImage().setMaterialSrc(materialService.genPublicUrl(interviewDTO.getImage().getMaterialSrc()));
            JSONObject interviewJson = JSONObject.fromObject(interviewDTO);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, interviewJson.toString());
        }catch (Exception e){
            logger.error("InterviewController.getInterview()", e);
            result = newFaildResult(ResultMessages.OPERATE_FAIL);
        }
        return result;
    }
}
