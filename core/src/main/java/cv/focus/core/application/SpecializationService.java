package cv.focus.core.application;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.activity.*;
import cv.focus.core.interfaces.cisactivity.dto.UserItemDTO;
import cv.focus.core.domain.user.model.Specialization;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/9/12.
 */
public interface SpecializationService {

    Specialization createSpecialization(Integer userId, String userName,Integer tutorId, String tutorName, Date specializationTime, int specializationPeriod, String nickname, String mobile, String email, String comments, int state, Date insertTime, float cost);

    List<Specialization> findByTutorName(String tutorName);

    List<Specialization> findByTutorId(Integer tutorId);

    List<Specialization> findByUserId(Integer userId);

    List<Specialization> findAll();

    List<ItemEntity> findItemList();

    List<ItemEntity> findTopItemList(int n);

    ItemEntity findItemById(Integer itemId);

    void addPageviews(ItemEntity item);

    List<ItemEntity> findBannerList();

    List<UserItemDTO> findUserItemByUserId(Integer userId);

    void itemSaved(SavedEntity savedEntity);

    void updateCollect(ItemEntity item);

    String checkCollect(Integer userId, Integer itemId);

    SavedEntity findCollection(Integer userId, Integer itemId);

    WebPage collectList(Integer userId , WebPage page);


    List<CourseEntity> findCourseByType(String s);

    void saveApplyInfo(ApplyActivity applyActivity);

    void saveApplyActivity(UserApplyActivity userApplyActivity);

    CourseEntity findExamInfoById(String s);

    void saveUserScore(UserScore userScore);

    ApplyActivity findApplyActivityByUserId(Integer userId);


    List<UserApplyActivity> findAllUserApplyActivity(Integer userId);

    List<UserScore> findUserScoreByType(Integer userId, String s);

    UserApplyActivity findUserActivityById(String id);

    void deleteUserActivity(UserApplyActivity userApplyActivity);

    UserScore findUserScoreById(String id);

    void deleteUserScore(UserScore userScore);

    UserApplyActivity findUserActivityByUserId(Integer userId, String activityName);

    UserScore findUserScoreByExamId(String examId,Integer userId);

    void deleteApplyActivity(ApplyActivity existApplyActivity);

    WebPage findItemListByPage(WebPage page);

    WebPage findItemListByUserId( Integer userId,WebPage page);

    WebPage queryActivityList(String keywords, WebPage page);


}
