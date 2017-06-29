package cv.focus.search.interfaces.user.web;

import com.google.gson.Gson;
import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.search.interfaces.user.facade.SearchServiceFacade;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

/**
 * Created by lcq on 2016/2/23.
 */
@Controller
@RequestMapping("search")
public class SearchController {
    private final Logger logger = Logger.getLogger(SearchController.class);

    @RequestMapping("/users")
    public String queryUsers(@RequestParam(value = "q",required = true) String q, @ModelAttribute("page") WebPage page, Model model){
        try{
            if(page == null){
                page = new WebPage();
            }
            page.setPageSize(9);
            page = searchServiceFacade.queryUsers(q,page);
            List dataList = page.getData();
            Gson gson = new Gson();
            model.addAttribute("users",gson.toJson(dataList));
            model.addAttribute("page",page);
            model.addAttribute("q",q);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return "/query/result";
    }

    @RequestMapping("/schoolnames")
    @ResponseBody
    public List<String> querySchoolName(@RequestParam String keywords) {
        List<String> list = Collections.emptyList();
        try {
            list = searchServiceFacade.querySchoolNames(keywords);
        } catch (Exception e) {
            logger.error("SearchController.querySchoolName()", e);
        }
        return list;
    }

    @Resource
    private SearchServiceFacade searchServiceFacade;

}
