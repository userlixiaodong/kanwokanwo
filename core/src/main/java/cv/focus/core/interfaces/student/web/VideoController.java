package cv.focus.core.interfaces.student.web;

import com.google.gson.Gson;
import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.application.VideoService;
import cv.focus.core.domain.user.model.VideoArea;
import cv.focus.core.infrastructure.util.BaseController;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.*;
/**
 * Created by Administrator on 2016/10/25.
 */
@Controller
@RequestMapping("/video")
public class VideoController extends BaseController {

    @Resource
    private VideoService reservationService;
    private final Logger logger = Logger.getLogger(VideoController.class);
    //导师跳转页面
    @RequestMapping("/list")
    public String videoList(HttpServletRequest request) {

        try {
            List<VideoArea> list1 = reservationService.findByVideoType("1");
            if(list1!=null)
            {
                request.setAttribute("list1size",list1.size());
                request.setAttribute("listVideo1",list1);
            }
            List<VideoArea> list2 = reservationService.findByVideoType("2");
            if(list2!=null)
            {
                request.setAttribute("list2size",list2.size());
                request.setAttribute("listVideo2",list2);
            }

            List<VideoArea> list3= reservationService.findByVideoType("3");
            if(list3!=null)
            {
                request.setAttribute("list3size",list3.size());
                request.setAttribute("listVideo3",list3);
            }

        } catch (Exception e) {
            logger.error("SpecializationController.inBox2()", e);
        }
        return "video/videolist";
    }

    @RequestMapping("/pagelist")
    public String videopageList(HttpServletRequest request,  @ModelAttribute("page") WebPage page, Model model) {
        try{
            if(page == null){
                page = new WebPage();
            }
            String keywords= request.getParameter("keywords");
            if("搜索高中/本科/研究生视频".equals(keywords) || keywords == null){
                keywords = "";
            }
            page = reservationService.queryVideos(keywords,page);
            if(null!=page&&page.getPageSize()>0)
            {
                List dataList = page.getData();
                Gson gson = new Gson();
                model.addAttribute("videos",gson.toJson(dataList));
                model.addAttribute("page",page);
                model.addAttribute("keywords",keywords);
            }

        }catch (Exception ex){
            logger.error("SpecializationController.inBox2()", ex);
        }
        return "video/videopagelist";
    }

    @RequestMapping("/pagelistm")
    public String videopageList1(HttpServletRequest request,  @ModelAttribute("page") WebPage page, Model model) {
        try{
            if(page == null){
                page = new WebPage();
            }
            String keywords= request.getParameter("keywords");
            if("搜索高中视频".equals(keywords) || keywords == null){
                keywords = "";
            }
            page = reservationService.queryVideos("1",keywords,page);
            if(null!=page&&page.getPageSize()>0)
            {
                List dataList = page.getData();
                Gson gson = new Gson();
                model.addAttribute("videos",gson.toJson(dataList));
                model.addAttribute("page",page);
                model.addAttribute("keywords",keywords);
            }

        }catch (Exception ex){
            logger.error("SpecializationController.inBox2()", ex);
        }
        return "video/videopagelistm";
    }
    @RequestMapping("/pagelistu")
    public String videopageList2(HttpServletRequest request,  @ModelAttribute("page") WebPage page, Model model) {
        try{
            if(page == null){
                page = new WebPage();
            }
            String keywords= request.getParameter("keywords");
            if("搜索本科视频".equals(keywords) || keywords == null){
                keywords = "";
            }
            page = reservationService.queryVideos("2",keywords,page);
            if(null!=page&&page.getPageSize()>0)
            {
                List dataList = page.getData();
                Gson gson = new Gson();
                model.addAttribute("videos",gson.toJson(dataList));
                model.addAttribute("page",page);
                model.addAttribute("keywords",keywords);
            }

        }catch (Exception ex){
            logger.error("SpecializationController.inBox2()", ex);
        }
        return "video/videopagelistu";
    }
    @RequestMapping("/pagelistg")
    public String videopageList3(HttpServletRequest request,  @ModelAttribute("page") WebPage page, Model model) {
        try{
            if(page == null){
                page = new WebPage();
            }
            String keywords= request.getParameter("keywords");
            if("搜索研究生视频".equals(keywords) || keywords == null){
                keywords = "";
            }
            page = reservationService.queryVideos("3",keywords,page);
            if(null!=page&&page.getPageSize()>0)
            {
                List dataList = page.getData();
                Gson gson = new Gson();
                model.addAttribute("videos",gson.toJson(dataList));
                model.addAttribute("page",page);
                model.addAttribute("keywords",keywords);
            }

        }catch (Exception ex){
            logger.error("SpecializationController.inBox2()", ex);
        }
        return "video/videopagelistg";
    }
}
