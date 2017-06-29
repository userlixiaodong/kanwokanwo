package cv.focus.core.interfaces.user.facade;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.interfaces.user.dto.InformationDTO;

/**
 * InformationServiceFacade
 * 
 * @author liuruichao
 * Created on 2016-05-23 13:12
 */
public interface InformationServiceFacade {

    InformationDTO addInformation(Integer userId, String text, String materialIds);

    void delInformation(Integer informationId);

    int favor(Integer informationId, Integer userId);

    int unfavor(Integer informationId, Integer userId);

    WebPage<InformationDTO> getInformationList(Integer userId, Integer currentPage, Integer loginUserId);

    WebPage<InformationDTO> getFollowSchoolNews(Integer userId, Integer currentPage);
}
