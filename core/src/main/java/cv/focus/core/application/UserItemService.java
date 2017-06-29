package cv.focus.core.application;

import cv.focus.core.domain.activity.UserItemEntity;

/**
 * Created by Administrator on 2017/4/5.
 */
public interface UserItemService {

    UserItemEntity createUserItem(String userName, String moblie,String email,Integer id,String itemId,String fileUrl);

    UserItemEntity findUserItemByMoblie(String itemId, String moblie);

    UserItemEntity findUserItemByItemIdAndUserId(Integer userId, String itemId);

    UserItemEntity findUserItemById(Integer id);

    void updateUserItem(UserItemEntity userItem);

    void storeConsultation(String phone, String problem);
}
