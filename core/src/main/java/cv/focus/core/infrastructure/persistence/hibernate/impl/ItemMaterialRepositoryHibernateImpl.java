package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.activity.ItemMaterialEntity;
import cv.focus.core.domain.user.model.ItemMaterialRepository;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/5/17.
 */
@Repository
public class ItemMaterialRepositoryHibernateImpl extends HibernateRepository implements ItemMaterialRepository {
    @Override
    public List<ItemMaterialEntity> findMaterialByItemId(int id) {
        Query query = getSession().createQuery("from ItemMaterialEntity where itemId = :itemId order by createTime");
        query.setParameter("itemId",id);
        List<ItemMaterialEntity> list = query.list();
        return list;
    }

    @Override
    public List<ItemMaterialEntity> findMaterialByType(int id,String type) {
        Query query = getSession().createQuery("from ItemMaterialEntity where itemId = :itemId and type = :type order by createTime");
        query.setParameter("itemId",id);
        query.setParameter("type",type);
        List<ItemMaterialEntity> list = query.list();
        return list;
    }
}
