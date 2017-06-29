package cv.focus.core.interfaces.user.web;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.interfaces.user.dto.InformationDTO;
import cv.focus.core.interfaces.user.dto.UserDTO;
import cv.focus.core.interfaces.user.facade.InformationServiceFacade;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 用户消息(说说、状态、心情)
 * 
 * @author liuruichao
 * Created on 2016-05-23 13:06
 */
@Controller
@RequestMapping("/user/information")
public class InformationController extends BaseController {
    private final Logger logger = Logger.getLogger(InformationController.class);
    @Resource
    private InformationServiceFacade informationServiceFacade;

    @RequestMapping("/school/news/{currentPage}.json")
    @ResponseBody
    public Result<WebPage<InformationDTO>> getFollowSchoolNews(
            @PathVariable Integer currentPage,
            HttpServletRequest request) {
        Result<WebPage<InformationDTO>> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            if (currentPage < 0) {
                return newFaildResult(ResultMessages.PARAM_ERROR);
            }
            WebPage<InformationDTO> webPage = informationServiceFacade.getFollowSchoolNews(userDTO.getUserId(), currentPage);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, webPage);
        } catch (Exception e) {
            logger.error("InformationController.informationList()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/list/{userId}/{currentPage}.json")
    @ResponseBody
    public Result<WebPage<InformationDTO>> informationList(
            @PathVariable Integer userId,
            @PathVariable Integer currentPage,
            HttpServletRequest request) {
        Result<WebPage<InformationDTO>> result = null;
        try {
            Integer loginUserId = null;
            UserDTO userDTO = getLoginUser(request);
            if (userDTO != null) {
                loginUserId = userDTO.getUserId();
            }
            if (userId < 0 || currentPage < 0) {
                return newFaildResult(ResultMessages.PARAM_ERROR);
            }
            WebPage<InformationDTO> webPage = informationServiceFacade.getInformationList(userId, currentPage, loginUserId);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, webPage);
        } catch (Exception e) {
            logger.error("InformationController.informationList()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Result<InformationDTO> addInformation(
            @RequestParam String text,
            @RequestParam String materialIds,
            HttpServletRequest request) {
        Result<InformationDTO> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            if (StringUtils.isBlank(text) || (StringUtils.isNotBlank(materialIds) && materialIds.split(",").length > 9)) {
                return newFaildResult(ResultMessages.PARAM_ERROR);
            }
            InformationDTO informationDTO =
                    informationServiceFacade.addInformation(userDTO.getUserId(), text, materialIds);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, informationDTO);
        } catch (Exception e) {
            logger.error("InformationController.addInformation()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Result<String> delInformation(@RequestParam Integer informationId) {
        Result<String> result = null;
        try {
            informationServiceFacade.delInformation(informationId);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch (Exception e) {
            logger.error("InformationController.delInformation()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/favor")
    @ResponseBody
    public Result<String> favor(@RequestParam Integer informationId, HttpServletRequest request) {
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            int favorCount = informationServiceFacade.favor(informationId, userDTO.getUserId());
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, favorCount + "");
        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            logger.error("InformationController.favor()", e);
        }
        return result;
    }

    @RequestMapping("/unfavor")
    @ResponseBody
    public Result<String> unfavor(@RequestParam Integer informationId, HttpServletRequest request) {
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            int favorCount = informationServiceFacade.unfavor(informationId, userDTO.getUserId());
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, favorCount + "");
        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            logger.error("InformationController.favor()", e);
        }
        return result;
    }
}
