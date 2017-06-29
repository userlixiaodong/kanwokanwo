package cv.focus.core.domain.user.model;

import cv.focus.core.domain.activity.ItemMaterialEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/5/17.
 */
public interface ItemMaterialRepository {
    List<ItemMaterialEntity> findMaterialByItemId(int id);

    List<ItemMaterialEntity> findMaterialByType(int id,String type);
}
