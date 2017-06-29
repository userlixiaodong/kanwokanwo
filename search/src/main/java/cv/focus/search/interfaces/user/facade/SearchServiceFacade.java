package cv.focus.search.interfaces.user.facade;

import cv.focus.common.infrastructure.util.paginaction.WebPage;

import java.util.List;

/**
 * Created by lcq on 2016/2/23.
 */
public interface SearchServiceFacade {
    WebPage<Object> queryUsers(String keywords, WebPage<Object> webPage);

    List<String> querySchoolNames(String keywords);
}
