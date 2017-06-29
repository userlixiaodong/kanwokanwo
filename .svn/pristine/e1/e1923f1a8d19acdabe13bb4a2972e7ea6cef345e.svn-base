package cv.focus.core.interfaces.user.web;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.student.model.Badge;
import cv.focus.core.domain.student.model.profile.Remark;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.infrastructure.chat.ChatLockManager;
import cv.focus.core.infrastructure.chat.ChatPullRequest;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.interfaces.school.dto.AdRemarkDTO;
import cv.focus.core.interfaces.school.dto.AdmissionProfileDTO;
import cv.focus.core.interfaces.school.facade.AdmissionProfileServiceFacade;
import cv.focus.core.interfaces.student.dto.BiographyDTO;
import cv.focus.core.interfaces.student.dto.RemarkDTO;
import cv.focus.core.interfaces.student.dto.StudentProfileDTO;
import cv.focus.core.interfaces.student.facade.ActivityServiceFacade;
import cv.focus.core.interfaces.student.facade.StudentProfileServiceFacade;
import cv.focus.core.interfaces.user.dto.MessageDTO;
import cv.focus.core.interfaces.user.dto.UserDTO;
import cv.focus.core.interfaces.user.facade.MessageServiceFacade;
import cv.focus.core.interfaces.user.facade.UserServiceFacade;
import net.sf.json.JSONArray;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import scala.runtime.StringFormat;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Collections;
import java.util.List;

/**
 * MessageController
 * 
 * @author liuruichao
 * Created on 2016-04-13 14:11
 */
@Controller
@RequestMapping("/msg")
public class MessageController extends BaseController {
    private final Logger logger = Logger.getLogger(MessageController.class);
    @Resource
    private MessageServiceFacade messageServiceFacade;
    @Resource
    private StudentProfileServiceFacade studentProfileServiceFacade;
    @Resource
    private ActivityServiceFacade activityServiceFacade;
    @Resource
    private AdmissionProfileServiceFacade admissionProfileServiceFacade;
    @Resource
    private UserServiceFacade userServiceFacade;

    @RequestMapping("/pull")
    @ResponseBody
    public Result<List<MessageDTO>> pull(
            @RequestParam Integer senderId,
            @RequestParam long time,
            HttpServletRequest request) {
        Result<List<MessageDTO>> result = null;
        try {
            // 长轮询
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            List<MessageDTO> list = messageServiceFacade.getNewMsg(userDTO.getUserId(), senderId);
            // 30s没有消息则返回
            if (list == null || list.size() <= 0) {
                Object lock = ChatLockManager.addWaitNewMsg(new ChatPullRequest(senderId, userDTO.getUserId(), time));
                synchronized (lock) {
                    lock.wait();
                }
                list = messageServiceFacade.getNewMsg(userDTO.getUserId(), senderId);
            }
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, list);
        } catch (Exception e) {
            logger.error("MessageController.pull()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/del")
    @ResponseBody
    public Result<String> delMsg(@RequestParam Integer senderId, HttpServletRequest request) {
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            messageServiceFacade.delMsgBySender(userDTO.getUserId(), senderId);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch (Exception e) {
            logger.error("MessageController.delMsg()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/chat/{senderId}/{currentPage}.json")
    @ResponseBody
    public Result<WebPage<MessageDTO>> chatRecord(
            @PathVariable Integer senderId,
            @PathVariable Integer currentPage,
            HttpServletRequest request) {
        Result<WebPage<MessageDTO>> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            if (senderId == userDTO.getUserId().intValue()) {
                return newFaildResult(ResultMessages.OPERATE_FAIL);
            }
            WebPage<MessageDTO> webPage = messageServiceFacade.getChatRecord(userDTO.getUserId(), senderId, currentPage);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, webPage);
        } catch (Exception e) {
            logger.error("MessageController.chatRecord()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/chat/{senderId}/{currentPage}")
    public String chatRecordUI(
            @PathVariable Integer senderId,
            @PathVariable Integer currentPage,
            HttpServletRequest request) {
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return TOHOME;
            }
            if (userDTO.getUserId().intValue() == senderId) {
                return "redirect:/msg/messages/1";
            }
            WebPage<MessageDTO> webPage = messageServiceFacade.getChatRecord(userDTO.getUserId(), senderId, currentPage);
            User user = null;
            StudentProfile studentProfile = null;
            AdmissionProfile admissionProfile = null;
            if (senderId != 0) {
                user = userServiceFacade.findUserByUserId(senderId);
                if (user.getType() == Role.STUDENT) {
                    studentProfile = studentProfileServiceFacade.getProfileByEmail(user.getEmail());
                } else {
                    admissionProfile = admissionProfileServiceFacade.getProfileByEmail(user.getEmail());
                }
            }
            setLeftUserData(userDTO, request);
            request.setAttribute("sender", user);
            request.setAttribute("studentProfile", studentProfile);
            request.setAttribute("admissionProfile", admissionProfile);
            request.setAttribute("page", gson.toJson(webPage));
        } catch (Exception e) {
            logger.error("MessageController.chatRecord()", e);
            return TOHOME;
        }
        return "message/detail";
    }

    @RequestMapping("/chat/{userId}")
    public String chatRecord(@PathVariable Integer userId) {
        return "redirect:/msg/chat/" + userId + "/1";
    }

    @RequestMapping("/messages/{currentPage}")
    public String inBox(@PathVariable Integer currentPage, HttpServletRequest request) {
        Result<WebPage<MessageDTO>> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return TOHOME;
            }
            WebPage<MessageDTO> webPage = messageServiceFacade.getUserPreviewMsgList(userDTO.getUserId(), currentPage);
            setLeftUserData(userDTO, request);
            request.setAttribute("page", webPage);
        } catch (Exception e) {
            logger.error("MessageController.inBox()", e);
        }
        return "message/list";
    }

    @RequestMapping("/messages")
    public String inBox() {
        return "redirect:/msg/messages/1";
    }

    @RequestMapping("/unreadMsgCount")
    @ResponseBody
    public Result<Integer> getUnreadMsgCount(HttpServletRequest request) {
        Result<Integer> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            int count = messageServiceFacade.getUnreadMsgCount(userDTO.getUserId());
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, count);
        } catch (Exception e) {
            logger.error("MessageController.getNewMsg()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/sendMsg")
    @ResponseBody
    public Result<MessageDTO> sendMsg(
            @RequestParam Integer reciverId,
            @RequestParam String title,
            @RequestParam String content,
            HttpServletRequest request) {
        Result<MessageDTO> result = null;
        try {
            if (reciverId < 0 || StringUtils.isBlank(title) || StringUtils.isBlank(content)) {
                return newFaildResult(ResultMessages.PARAM_ERROR);
            }
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            if (content.length() > 2048) {
                return newFaildResult(ResultMessages.MSG_CONTENT_TOO_LONG);
            }
            if (userDTO.getRole() == Role.STUDENT) {
                // student profile进度必须是100%才能发消息
                StudentProfile studentProfile = studentProfileServiceFacade.getProfileByEmail(userDTO.getEmail());
                List<Badge> badges = studentProfileServiceFacade
                        .getBadges(studentProfile,
                                activityServiceFacade.findDomainActivityListByStudentProfileId(studentProfile.getStudentProfileId()));
                Integer degree = studentProfileServiceFacade.calcuBadgesCompletionDegree(badges);

                if (degree < 100) {
                    return newFaildResult(ResultMessages.PROFILE_COMPLETE_DEGREE);
                }
            }

            if (userDTO.getUserId().intValue() == reciverId) {
                return newFaildResult(ResultMessages.SENDER_RECIVER_SAME);
            }
            MessageDTO messageDTO = messageServiceFacade.sendMsg(userDTO.getUserId(), reciverId, title, content);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, messageDTO);
        } catch(RuntimeException e) {
            logger.error("MessageController.sendMsg()", e);
            result = newFaildResult(ResultMessages.SENDER_RECIVER_TYPE_ERROR);
        } catch (Exception e) {
            logger.error("MessageController.sendMsg()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/msgList")
    @ResponseBody
    public Result<WebPage<MessageDTO>> sendMsgList(
            @RequestParam(defaultValue = "1") Integer currentPage,
            @RequestParam String type,
            HttpServletRequest request) {
        Result<WebPage<MessageDTO>> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            WebPage<MessageDTO> messageDTOWebPage = messageServiceFacade.getMsgList(userDTO.getUserId(), currentPage, type);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, messageDTOWebPage);
        } catch (Exception e) {
            logger.error("MessageController.msgList()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/updateMsgStatus")
    @ResponseBody
    public Result<String> updateMsgStatus(
            @RequestParam Integer msgId,
            HttpServletRequest request) {
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            messageServiceFacade.readMsg(userDTO.getUserId(), msgId);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch(RuntimeException e) {
            logger.error("MessageController.updateMsgStatus()", e);
            result = newFaildResult(ResultMessages.OPERATE_FAIL);
        } catch (Exception e) {
            logger.error("MessageController.updateMsgStatus()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping("/readMsgStatus")
    @ResponseBody
    public Result<String> readMsg(
            @RequestParam Integer senderId,
            HttpServletRequest request) {
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            messageServiceFacade.readMsgBySender(userDTO.getUserId(), senderId);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch(RuntimeException e) {
            logger.error("MessageController.updateMsgStatus()", e);
            result = newFaildResult(ResultMessages.OPERATE_FAIL);
        } catch (Exception e) {
            logger.error("MessageController.updateMsgStatus()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    private void setLeftUserData(UserDTO userDTO, HttpServletRequest request) {
        if (userDTO.getRole() == Role.STUDENT) {
            StudentProfile studentProfile = studentProfileServiceFacade.getProfileByEmail(userDTO.getEmail());
            StudentProfileDTO studentProfileDTO = new StudentProfileDTO(studentProfile);
            List<RemarkDTO> remarkDTOs = studentProfileServiceFacade.getRemarkByStudentProfileId(studentProfile.getStudentProfileId().getStudentProfileId());
            request.setAttribute("remarkJson", JSONArray.fromObject(remarkDTOs));
            request.setAttribute("profileJson", net.sf.json.JSONObject.fromObject(studentProfileDTO));
            request.setAttribute("biographyJson", net.sf.json.JSONObject.fromObject(new BiographyDTO(studentProfile.getBiography())));
        } else {
            AdmissionProfile admissionProfile = admissionProfileServiceFacade.getProfileByEmail(userDTO.getEmail());
            AdmissionProfileDTO admissionProfileDTO = new AdmissionProfileDTO(admissionProfile);
            List<AdRemarkDTO> remarkDTOs = admissionProfileServiceFacade.getRemarkByAdProfileId(admissionProfile.getAdmissionProfileId().getAdmissionProfileId());
            request.setAttribute("remarkJson", JSONArray.fromObject(remarkDTOs));
            request.setAttribute("profileJson", net.sf.json.JSONObject.fromObject(admissionProfileDTO));
        }
    }
}
