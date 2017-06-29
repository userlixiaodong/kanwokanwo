package cv.focus.core.interfaces.student.web;

import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.CommonUtil;
import cv.focus.core.infrastructure.util.PermissionDeniedException;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.interfaces.student.dto.ActivityDTO;
import cv.focus.core.interfaces.student.facade.ActivityServiceFacade;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/2/22.
 */
@Controller
@RequestMapping("activity")
public class ActivityController extends BaseController {
    private final Logger logger = Logger.getLogger(ActivityController.class);
    @Resource
    private ActivityServiceFacade activityServiceFacade;

    @RequestMapping(value = "/modify/{activityId}", method = RequestMethod.PUT)
    @ResponseBody
    public Result<ActivityDTO> modifyActivity(HttpServletRequest request)  {
        Result<ActivityDTO> result = null;
        String studentProfileId = getLoginProfileId(request);
        try {
            String params = CommonUtil.streamToString(request.getInputStream(), "utf-8");
            if (params != null && params.length() > 0) {
                activityServiceFacade.updateActivity(params, studentProfileId);
                result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
            }

        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            logger.error("ActivityController.modifyActivity()", e);
        }

        return result;
    }

    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    @ResponseBody
    public Result<net.sf.json.JSONObject> addActivity(HttpServletRequest request) throws Exception {
        Result<net.sf.json.JSONObject> result = null;
        String studentProfileId = getLoginProfileId(request);
        try {
            String params = CommonUtil.streamToString(request.getInputStream(), "utf-8");
            if (params.length() > 0) {
                ActivityDTO activityDTO = activityServiceFacade.addActivity(params, studentProfileId);
                result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, net.sf.json.JSONObject.fromObject(activityDTO));
            }

        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            logger.error("ActivityController.addActivity()", e);
        }

        return result;
    }

    @RequestMapping(value = "/modify/{activityId}", method = RequestMethod.DELETE)
    @ResponseBody
    public Result deleteActivity(
            @PathVariable String activityId,
            HttpServletRequest request) {
        Result<String> result = null;
        try {
            String studentProfileId = getLoginProfileId(request);
            activityServiceFacade.delActivity(studentProfileId, activityId);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
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
            String studentProfileId = getLoginProfileId(request);
            activityServiceFacade.changeActivityLocation(studentProfileId, activityId, dest);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            logger.error("ActivityController.changeActivityLocation()", e);
        }
        return result;
    }
}