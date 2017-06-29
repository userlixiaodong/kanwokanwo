package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialRepository;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * MaterialRepositoryHibernateImpl
 * 
 * @author liuruichao
 * Created on 2016-04-22 15:53
 */
@Repository
public class MaterialRepositoryHibernateImpl extends HibernateRepository implements MaterialRepository {
    @Override
    public Material findById(String id) {
        Query query = getSession().createQuery("from Material where materialId.materialId=:materialId");
        query.setParameter("materialId", id);
        List<Material> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public Material findByTransCodeJobId(String jobId) {
        Query query = getSession().createQuery("from Video where transCodeJobId=:transCodeJobId");
        query.setParameter("transCodeJobId", jobId);
        List<Material> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public void store(Material material) {
        getSession().saveOrUpdate(material);
    }

    @Override
    public void del(Material material) {
        getSession().delete(material);
    }
}
