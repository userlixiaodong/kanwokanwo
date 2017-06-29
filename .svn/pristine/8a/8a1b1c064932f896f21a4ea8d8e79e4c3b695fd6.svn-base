package cv.focus.search.infrastructure;

import com.google.gson.Gson;
import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.search.interfaces.user.facade.SearchServiceFacade;
import junit.framework.TestCase;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by lcq on 2016/3/1.
 */
public class SearchServiceFacadeImplTest extends TestCase {
    ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");

    SearchServiceFacade searchServiceFacade = (SearchServiceFacade) applicationContext.getBean("searchServiceFacadeImpl");

    public void testQueryUsers(){
        WebPage page = new WebPage();
        page = searchServiceFacade.queryUsers("beijing",page);
        List dataList = page.getData();
        Gson gson = new Gson();
        System.out.println("data:" + gson.toJson(dataList));
    }

}
