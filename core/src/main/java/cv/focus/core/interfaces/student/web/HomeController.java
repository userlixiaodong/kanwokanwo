package cv.focus.core.interfaces.student.web;

import com.google.gson.Gson;
import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.application.AdmissionProfileService;
import cv.focus.core.application.SpecializationService;
import cv.focus.core.domain.activity.ApplyActivity;
import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.interfaces.school.dto.AdmissionProfileDTO;
import cv.focus.core.interfaces.school.facade.AdmissionProfileServiceFacade;
import cv.focus.core.interfaces.student.facade.StudentProfileServiceFacade;
import cv.focus.core.interfaces.user.dto.UserDTO;
import cv.focus.core.interfaces.user.facade.UserServiceFacade;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/6/15.
 */
@Controller
@RequestMapping("/home")
public class HomeController extends BaseController {
    private final Logger logger = Logger.getLogger(HomeController.class);
    @Resource
    private StudentProfileServiceFacade studentProfileService;
    @Resource
    private UserServiceFacade userServiceFacade;
    @Resource
    private SpecializationService specializationService;
    @Resource
    private AdmissionProfileService admissionProfileService;
    @Resource
    private AdmissionProfileServiceFacade admissionProfileServiceFacade;


    @RequestMapping("/{uri}")
    public ModelAndView viewProfile(
            @PathVariable String uri,
            HttpServletRequest request){
        ModelAndView view = new ModelAndView();
        try {
            UserDTO loginUser = getLoginUser(request);
            Integer userId  = loginUser.getUserId();
            ApplyActivity applyInfo = specializationService.findApplyActivityByUserId(userId);
            StudentProfile studentProfile = studentProfileService.findStudentProfileByPublicUri(uri);
            if (studentProfile != null) {
                    view.addObject("studentProfile", studentProfile);
                    view.addObject("applyInfo", applyInfo);
                    view.setViewName("home/homepage");

            }else{
                view.setViewName("common/404");
            }
        }
            catch (Exception e) {
            logger.error("ProfileController.viewProfile()", e);
        }

        return view;
    }

    @RequestMapping(value = "/mySchool")
    public String tosearchList(HttpServletRequest request, @ModelAttribute("page") WebPage page, Model model) {
        try{
            if(page == null){
                page = new WebPage();
            }
            UserDTO user = getLoginUser(request);
            if(user == null){
                return "common/404";
            }
            Integer userId = user.getUserId();
            page = admissionProfileService.queryMySchools(userId,page);


            if(null!=page&&page.getPageSize()>0)
            {
                List<AdmissionProfile> dataList = page.getData();
                List<AdmissionProfileDTO> list = new ArrayList<AdmissionProfileDTO>();
                model.addAttribute("schools",list);
                model.addAttribute("page",page);
                if(dataList == null){
                    model.addAttribute("listSize",0);
                }else {
                    for (int i = 0; i < dataList.size(); i++) {
                        AdmissionProfileDTO admission = admissionProfileServiceFacade.getProfileDTOByPublicUri(dataList.get(i).getPublicUri());
                        list.add(admission);
                        model.addAttribute("listSize", dataList.size());
                    }
                }


            }

        }catch (Exception ex){
            logger.error("SpecializationController.inBox2()", ex);
        }
        return "/user/followSchool";
       /* return "school/searchSchools";*/


    }
}
