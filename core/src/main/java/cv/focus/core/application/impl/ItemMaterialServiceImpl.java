package cv.focus.core.application.impl;

import cv.focus.core.application.ItemMaterialService;
import cv.focus.core.domain.activity.ItemMaterialEntity;
import cv.focus.core.domain.user.model.ItemMaterialRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/5/17.
 */
@Service
public class ItemMaterialServiceImpl implements ItemMaterialService {

    @Resource
    private ItemMaterialRepository itemMaterialRepository;
    @Override
    public List<ItemMaterialEntity> findMaterialByItemId(int id) {
        List list = itemMaterialRepository.findMaterialByItemId(id);
        return list;
    }

    @Override
    public List<ItemMaterialEntity> findMaterialByType(int id,String type) {
        List list = itemMaterialRepository.findMaterialByType(id,type);
        return list;
    }
}
