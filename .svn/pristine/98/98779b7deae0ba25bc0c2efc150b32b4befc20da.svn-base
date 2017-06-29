package cv.focus.core.interfaces.user.facade.impl;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.application.AdmissionProfileService;
import cv.focus.core.application.InformationService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.user.model.Information;
import cv.focus.core.interfaces.user.dto.InformationDTO;
import cv.focus.core.interfaces.user.facade.InformationServiceFacade;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * InformationServiceFacadeImpl
 * 
 * @author liuruichao
 * Created on 2016-05-23 13:12
 */
@Service
public class InformationServiceFacadeImpl implements InformationServiceFacade {
    @Resource
    private InformationService informationService;
    @Resource
    private AdmissionProfileService admissionProfileService;
    @Resource
    private StudentProfileService studentProfileService;

    @Override
    public InformationDTO addInformation(Integer userId, String text, String materialIds) {
        int len = 0;
        String[] ids = new String[len];
        if (StringUtils.isNotBlank(materialIds)) {
            ids = materialIds.split(",");
        }

        Information information = informationService.createInfomation(text, userId, ids);
        return new InformationDTO(information, admissionProfileService, studentProfileService);
    }

    @Override
    public void delInformation(Integer informationId) {
        informationService.delInformation(informationId);
    }

    @Override
    public int favor(Integer informationId, Integer userId) {
        return informationService.favor(informationId, userId);
    }

    @Override
    public int unfavor(Integer informationId, Integer userId) {
        return informationService.unfavor(informationId, userId);
    }

    @Override
    public WebPage<InformationDTO> getInformationList(Integer userId, Integer currentPage, Integer loginUserId) {
        WebPage<Information> webPage = informationService.getInformationList(userId, currentPage);
        return convertWebPage(webPage, userId, loginUserId);
    }

    @Override
    public WebPage<InformationDTO> getFollowSchoolNews(Integer userId, Integer currentPage) {
        WebPage<Information> webPage = informationService.getFollowSchoolNews(userId, currentPage);
        return convertWebPage(webPage, 0, userId);
    }

    private WebPage<InformationDTO> convertWebPage(WebPage<Information> webPage, Integer userId, Integer loginUserId) {
        WebPage<InformationDTO> webPageDTO = new WebPage<>();
        webPageDTO.setTotalCount(webPage.getTotalCount());
        webPageDTO.setCurrentPage(webPage.getCurrentPage());
        webPageDTO.setEndCount(webPage.getEndCount());
        webPageDTO.setPageSize(webPage.getPageSize());
        webPageDTO.setStartCount(webPage.getStartCount());
        webPageDTO.setTotalPage(webPage.getTotalPage());

        List<InformationDTO> dataList = new ArrayList<>(webPage.getData().size());
        for (Information information: webPage.getData()) {
            InformationDTO informationDTO = new InformationDTO(information, admissionProfileService, studentProfileService);
            if (loginUserId != null && loginUserId > 0 && loginUserId.intValue() != userId) {
                informationDTO.setIsFavor(informationService.isFavor(information.getInformationId(), loginUserId));
            }
            dataList.add(informationDTO);
        }

        webPageDTO.setData(dataList);
        return webPageDTO;
    }

}