package cv.focus.core.interfaces.school.web;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.school.model.profile.AdmissionProfileId;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.interfaces.school.dto.AdActivityDTO;
import cv.focus.core.interfaces.school.dto.AdmissionProfileDTO;
import cv.focus.core.interfaces.school.dto.SchoolOurStudentDTO;
import cv.focus.core.interfaces.school.facade.AdmissionActivityServiceFacade;
import cv.focus.core.interfaces.school.facade.AdmissionProfileServiceFacade;
import cv.focus.core.interfaces.user.dto.UserDTO;
import cv.focus.core.interfaces.user.facade.InformationServiceFacade;
import cv.focus.core.interfaces.user.facade.UserServiceFacade;
import net.sf.json.JSONArray;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * AdmissionProfileController
 * 
 * @author liuruichao
 * Created on 2016-04-02 13:10
 */
@Controller
@RequestMapping("/school")
public class AdmissionProfileMobileController extends BaseController {
//    private final Logger logger = Logger.getLogger(AdmissionProfileMobileController.class);
    @Resource
    private AdmissionProfileServiceFacade admissionProfileServiceFacade;
    @Resource
    private UserServiceFacade userServiceFacade;
    @Resource
    private InformationServiceFacade informationServiceFacade;
    @Resource
    private AdmissionActivityServiceFacade admissionActivityServiceFacade;

    @RequestMapping("/{publicUri}")
    public String index(@PathVariable String publicUri, HttpServletRequest request) {
        AdmissionProfileDTO admissionProfileDTO = admissionProfileServiceFacade.getProfileDTOByPublicUri(publicUri);
        request.setAttribute("admissionProfile", admissionProfileDTO);
        setUserIsFollow(admissionProfileDTO.getUserId(), request);
        return "mobile/school/index";
    }

    @RequestMapping("/basicinfo/{publicUri}")
    public String basicInfo(@PathVariable String publicUri, HttpServletRequest request) {
        AdmissionProfileDTO admissionProfileDTO = admissionProfileServiceFacade.getProfileDTOByPublicUri(publicUri);
        request.setAttribute("admissionProfile", admissionProfileDTO);
        setUserIsFollow(admissionProfileDTO.getUserId(), request);
        return "mobile/school/basicInfo";
    }

    @RequestMapping("/application/{publicUri}")
    public String application(@PathVariable String publicUri, HttpServletRequest request) {
        AdmissionProfileDTO admissionProfileDTO = admissionProfileServiceFacade.getProfileDTOByPublicUri(publicUri);
        request.setAttribute("admissionProfile", admissionProfileDTO);
        request.setAttribute("profileJson", gson.toJson(admissionProfileDTO));
        setUserIsFollow(admissionProfileDTO.getUserId(), request);
        return "mobile/school/application";
    }

    @RequestMapping("/ourstudent/{publicUri}")
    public String ourStudents(@PathVariable String publicUri, HttpServletRequest request) {
        AdmissionProfileDTO admissionProfileDTO = admissionProfileServiceFacade.getProfileDTOByPublicUri(publicUri);
        WebPage<SchoolOurStudentDTO> page = admissionProfileServiceFacade.getOurStudentList(admissionProfileDTO.getBiography().getName(), 1);
        request.setAttribute("admissionProfile", admissionProfileDTO);
        request.setAttribute("page", page);
        setUserIsFollow(admissionProfileDTO.getUserId(), request);
        return "mobile/school/ourStudents";
    }

    @RequestMapping("/myschool/{publicUri}")
    public String mySchool(@PathVariable String publicUri, HttpServletRequest request) {
        AdmissionProfileDTO admissionProfileDTO = admissionProfileServiceFacade.getProfileDTOByPublicUri(publicUri);
        request.setAttribute("admissionProfile", admissionProfileDTO);
        request.setAttribute("profileJson", gson.toJson(admissionProfileDTO));
        List<AdActivityDTO> activityList = admissionActivityServiceFacade.getActivityListByAdProfileId(new AdmissionProfileId(admissionProfileDTO.getAdmissionProfileId()));
        JSONArray jsonArray = JSONArray.fromObject(activityList);
        request.setAttribute("activityListJson", jsonArray.toString());
        setUserIsFollow(admissionProfileDTO.getUserId(), request);
        return "mobile/school/mySchool";
    }

    private void setUserIsFollow(Integer schoolUserId, HttpServletRequest request) {
        UserDTO loginUser = getLoginUser(request);
        if (loginUser != null && userServiceFacade.isFollow(loginUser.getUserId(), schoolUserId)) {
            request.setAttribute("isFollow", true);
        } else {
            request.setAttribute("isFollow", false);
        }
    }
}
