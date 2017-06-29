package cv.focus.search.interfaces.user.facade.impl;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.search.application.SearchService;
import cv.focus.search.interfaces.user.facade.SearchServiceFacade;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lcq on 2016/2/23.
 */
@Service
public class SearchServiceFacadeImpl implements SearchServiceFacade{

    @Resource
    private SearchService searchService;

    public WebPage<Object> queryUsers(String keywords, WebPage<Object> webPage) {
        return searchService.queryUsers(keywords,webPage);
    }

    public List<String> querySchoolNames(String keywords) {
        return searchService.querySchoolName(keywords);
    }
}
