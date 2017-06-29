package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.user.model.Oauth;
import cv.focus.core.domain.user.model.OauthRepository;
import cv.focus.core.domain.user.model.OauthType;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * OauthRepositoryHibernateImpl
 * 
 * @author liuruichao
 * Created on 2016-04-14 13:34
 */
@Repository
public class OauthRepositoryHibernateImpl extends HibernateRepository implements OauthRepository {
    @Override
    public List<Oauth> findByEmail(String email) {
        Query query = getSession().createQuery("from Oauth where email=:email");
        query.setParameter("email", email);
        return query.list();
    }

    @Override
    public Oauth findByEmailAndType(String email, OauthType oauthType) {
        Query query = getSession().createQuery("from Oauth where user.email=:email and type=:type");
        query.setParameter("email", email);
        query.setParameter("type", oauthType);
        List<Oauth> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public Oauth findByMobileAndType(String mobile, OauthType oauthType) {
        Query query = getSession().createQuery("from Oauth where user.mobile=:mobile and type=:type");
        query.setParameter("mobile", mobile);
        query.setParameter("type", oauthType);
        List<Oauth> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public void store(Oauth oauth) {
        getSession().saveOrUpdate(oauth);
    }

    @Override
    public Oauth findByOpenId(String openId) {
        Query query = getSession().createQuery("from Oauth where openId=:openId");
        query.setParameter("openId", openId);
        List<Oauth> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public void del(Oauth oauth) {
        getSession().delete(oauth);
    }
}
