package cv.focus.core.interfaces.school.web;

import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.CommonUtil;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.interfaces.school.dto.AdActivityDTO;
import cv.focus.core.interfaces.school.facade.AdmissionActivityServiceFacade;
import cv.focus.core.interfaces.user.dto.UserDTO;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * AdmissionActivityController
 * 
 * @author liuruichao
 * Created on 2016-04-02 18:23
 */
@Controller
@RequestMapping("/admission/activity")
public class AdmissionActivityController extends BaseController {
    private final Logger logger = Logger.getLogger(AdmissionActivityController.class);
    @Resource
    private AdmissionActivityServiceFacade admissionActivityServiceFacade;

    @RequestMapping("/modify")
    @ResponseBody
    public Result<AdActivityDTO> addActivity(HttpServletRequest request) {
        Result<AdActivityDTO> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            String params = CommonUtil.streamToString(request.getInputStream(), "utf-8");
            if (params.length() > 0) {
                AdActivityDTO adActivityDTO = admissionActivityServiceFacade.addActivity(params, userDTO.getAdmissionProfileId());
                result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, adActivityDTO);
            }
        } catch (Exception e) {
            logger.error("AdmissionActivityController.modify()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping(value = "/modify/{activityId}", method = RequestMethod.PUT)
    @ResponseBody
    public Result<String> modifyActivity(HttpServletRequest request)  {
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.SYSTEM_ERROR);
            }
            String params = CommonUtil.streamToString(request.getInputStream(), "utf-8");
            if (params.length() > 0) {
                admissionActivityServiceFacade.updateActivity(params, userDTO.getAdmissionProfileId());
                result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
            }

        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            logger.error("ActivityController.modifyActivity()", e);
        }

        return result;
    }

    @RequestMapping(value = "/modify/{activityId}", method = RequestMethod.DELETE)
    @ResponseBody
    public Result<String> deleteActivity(
            @PathVariable String activityId,
            HttpServletRequest request) {
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            admissionActivityServiceFacade.delActivity(userDTO.getAdmissionProfileId(), activityId);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            e.printStackTrace();
            logger.error("ActivityController.deleteActivity()", e);
        }
        return result;
    }

    @RequestMapping("/changeActivityLocation")
    @ResponseBody
    public Result<String> changeActivityLocation(
            @RequestParam String activityId,
            @RequestParam int dest,
            HttpServletRequest request) {
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            String studentProfileId = getLoginProfileId(request);
            admissionActivityServiceFacade.changeActivityLocation(userDTO.getAdmissionProfileId(), activityId, dest);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            logger.error("ActivityController.changeActivityLocation()", e);
        }
        return result;
    }
}
