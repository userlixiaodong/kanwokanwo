package cv.focus.core.application;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.user.model.Information;

import java.util.Set;

/**
 * InformationService
 * 
 * @author liuruichao
 * Created on 2016-05-23 13:11
 */
public interface InformationService {

    Information createInfomation(String text, Integer userId, String[] materialIds);

    void delInformation(Integer informationId);

    int favor(Integer informationId, Integer userId);

    int unfavor(Integer informationId, Integer userId);

    WebPage<Information> getInformationList(Integer userId, Integer currentPage);

    boolean isFavor(Integer informationId, Integer userId);

    WebPage<Information> getFollowSchoolNews(Integer userId, Integer currentPage);
}
