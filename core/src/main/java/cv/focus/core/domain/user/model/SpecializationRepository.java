package cv.focus.core.domain.user.model;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.activity.*;

import cv.focus.core.interfaces.cisactivity.dto.UserItemDTO;

import java.util.List;

/**
 * Created by Administrator on 2016/9/12.
 */
public interface SpecializationRepository {
    void store(Specialization Specialization);

    List<Specialization> findByTutorName(String tutorName);

    List<Specialization> findByTutorId(Integer tutorId);

    List<Specialization> findByUserId(Integer userId);

    List<Specialization> findCurrentListByUserId(Integer userId);

    List<Specialization> findHistoryListByUserId(Integer userId);

    List<Specialization> findCurrentListByTutorId(Integer tutorId);

    List<Specialization> findHistoryListByTutorId(Integer tutorId);

    List<Specialization> findAll();

    List<ItemEntity> findItemList();

    List<ItemEntity> findTopItemList(int n);

    ItemEntity findItemById(Integer itemId);

    void addPageviews(Integer itemId, Integer afterClickNum);

    List<ItemEntity> findBannerList();

    List<UserItemDTO> findUserItemByUserId(Integer userId);

    void itemSaved(SavedEntity savedEntity);

    void updateCollect(ItemEntity item);

    String checkCollect(Integer userId, Integer itemId);

    SavedEntity findCollection(Integer userId, Integer itemId);

    WebPage collectList(Integer userId,WebPage page);

    List<CourseEntity> findCourseByType(String courseType);

    void saveApplyInfo(ApplyActivity applyActivity);

    void saveApplyActivity(UserApplyActivity userApplyActivity);

    CourseEntity findExamInfoById(String id);

    void saveUserScore(UserScore userScore);

    ApplyActivity findApplyActivityByUserId(Integer userId);

    List<UserApplyActivity> findAllUserApplyActivity(Integer userId);

    List<UserScore> findUserScoreByType(Integer userId, String type);


    UserApplyActivity findUserActivityById(String id);

    void deleteUserActivity(UserApplyActivity userApplyActivity);

    UserScore findUserScoreById(String id);

    void deleteUserScore(UserScore userScore);

    UserApplyActivity findUserActivityByUserId(Integer userId, String activityName);

    UserScore findUserScoreByExamId(String examId,Integer userId);

    void deleteApplyActivity(ApplyActivity existApplyActivity);

    WebPage findItemListByPage(WebPage webPage);

    WebPage findItemListByUserId( Integer userId,WebPage page);

    WebPage queryActivityList(WebPage page, String keywords);


}
