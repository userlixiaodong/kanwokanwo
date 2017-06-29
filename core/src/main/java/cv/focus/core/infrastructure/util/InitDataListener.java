package cv.focus.core.infrastructure.util;

import cv.focus.core.application.SpecializationService;
import cv.focus.core.domain.activity.ItemEntity;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.ServletConfigAware;
import org.springframework.web.context.ServletContextAware;

import javax.annotation.Resource;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import java.util.List;

/**
 * Created by 晓东 on 2017/5/25.
 */
public class InitDataListener implements InitializingBean,ServletContextAware {


    @Resource
    private SpecializationService specializationService;

    @Override
    public void afterPropertiesSet() throws Exception {

    }
    @Override
    public void setServletContext(ServletContext servletContext) {
        List<ItemEntity> itemList=specializationService.findItemList();
        System.out.print("您好");
        servletContext.setAttribute("itemList",itemList);
    }
}
