package cv.focus.core.application;

import cv.focus.core.domain.activity.ItemMaterialEntity;

import java.util.List;

/**
 * Created by Administrator on 2017/5/17.
 */
public interface ItemMaterialService {

    List<ItemMaterialEntity> findMaterialByItemId(int id);

    List<ItemMaterialEntity> findMaterialByType(int id,String type);
}
