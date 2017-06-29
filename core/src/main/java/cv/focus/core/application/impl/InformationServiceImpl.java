package cv.focus.core.application.impl;

import cv.focus.common.domain.model.AsyncEventEngine;
import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.application.AdmissionProfileService;
import cv.focus.core.application.InformationService;
import cv.focus.core.application.MaterialService;
import cv.focus.core.application.OauthService;
import cv.focus.core.application.UserService;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialListUtil;
import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.user.model.Information;
import cv.focus.core.domain.user.model.InformationFavor;
import cv.focus.core.domain.user.model.InformationRepository;
import cv.focus.core.domain.user.model.InformationStatus;
import cv.focus.core.domain.user.model.Oauth;
import cv.focus.core.domain.user.model.OauthType;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.infrastructure.messaging.jms.model.CreateInformationEvent;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * InformationServiceImpl
 * 
 * @author liuruichao
 * Created on 2016-05-23 13:11
 */
@Service
public class InformationServiceImpl implements InformationService {
    @Resource
    private InformationRepository informationRepository;
    @Resource
    private UserService userService;
    @Resource
    private MaterialService materialService;
    @Resource
    private OauthService oauthService;
    @Resource
    private AdmissionProfileService admissionProfileService;

    @Override
    public Information createInfomation(String text, Integer userId, String[] materialIds) {
        User user = userService.findUserById(userId);
        List<Material> materials = null;
        if (materialIds != null && materialIds.length > 0) {
            materials = new ArrayList<>(materialIds.length);
            for (String materialId : materialIds) {
                materials = MaterialListUtil.addMaterial(materials, materialService.getMaterialById(materialId));
            }
        }
        Information information = new Information(text, user, materials, 0, InformationStatus.NORMAL);
        informationRepository.store(information);
        // 给关注的用户发送微信通知
        AdmissionProfile admissionProfile = admissionProfileService.getProfileByEmail(user.getEmail());
        Set<User> users = userService.getFollowUser(userId);
        if (users != null && users.size() > 0) {
            List<CreateInformationEvent.User> followUsers = new ArrayList<>(users.size());
            for (User u : users) {
                Oauth oauth = oauthService.getOauthByEmailAndType(u.getEmail(), OauthType.WECHAT);
                if (oauth != null) {
                    followUsers.add(CreateInformationEvent.createEventUser(u.getUserName(), oauth.getRealOpenId()));
                }
            }
            AsyncEventEngine.fireEvent(
                    new CreateInformationEvent(information.getCreateTime(),
                            followUsers, admissionProfile.getPublicUri(), admissionProfile.getBiography().getName()));
        }
        return information;
    }

    @Override
    public void delInformation(Integer informationId) {
        Information information = informationRepository.findById(informationId);
        if (information != null) {
            information.setStatus(InformationStatus.DELETE);
            informationRepository.store(information);
        }
    }

    @Override
    public int favor(Integer informationId, Integer userId) {
        int result = 0;

        InformationFavor favor = informationRepository.findFavor(informationId, userId);
        Information information = informationRepository.findById(informationId);
        User user = userService.findUserById(userId);
        result = information.getFavorCount();
        if (user != null && favor == null) {
            favor = new InformationFavor();
            favor.setUser(user);
            favor.setInformation(information);
            information.plusFavor();
            informationRepository.storeFavor(favor);
            informationRepository.store(information);
            result = information.getFavorCount();
        }
        return result;
    }

    @Override
    public int unfavor(Integer informationId, Integer userId) {
        int result = 0;

        InformationFavor favor = informationRepository.findFavor(informationId, userId);
        Information information = informationRepository.findById(informationId);
        User user = userService.findUserById(userId);
        result = information.getFavorCount();
        if (user != null && favor != null) {
            information.minusFavor();
            informationRepository.delFavor(favor);
            informationRepository.store(information);
            result = information.getFavorCount();
        }
        return result;
    }

    @Override
    public WebPage<Information> getInformationList(Integer userId, Integer currentPage) {
        WebPage<Information> webPage = new WebPage<>();
        webPage.setCurrentPage(currentPage);
        List<Information> messages = informationRepository.findInformationByUserId(userId, webPage.getStartCount(), webPage.getPageSize());
        webPage.setData(messages);
        webPage.setTotalCount(informationRepository.queryMsgBySenderAndReciverCount(userId));
        return webPage;
    }

    @Override
    public boolean isFavor(Integer informationId, Integer userId) {
        InformationFavor favor = informationRepository.findFavor(informationId, userId);
        return favor != null;
    }

    @Override
    public WebPage<Information> getFollowSchoolNews(Integer userId, Integer currentPage) {
        WebPage<Information> webPage = new WebPage<>();
        webPage.setCurrentPage(currentPage);
        webPage.setData(informationRepository.findInformationByFollowSchool(userId, webPage.getStartCount(), webPage.getPageSize()));
        webPage.setTotalCount(informationRepository.queryCountByFollowSchool(userId));
        return webPage;
    }
}
