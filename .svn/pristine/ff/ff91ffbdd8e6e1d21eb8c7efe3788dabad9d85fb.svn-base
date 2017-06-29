package cv.focus.core.domain.user.model;

import java.util.List;

/**
 * OauthRepository
 * 
 * @author liuruichao
 * Created on 2016-04-14 13:31
 */
public interface OauthRepository {
    List<Oauth> findByEmail(String email);

    Oauth findByEmailAndType(String email, OauthType oauthType);

    Oauth findByMobileAndType(String mobile, OauthType oauthType);

    void store(Oauth oauth);

    Oauth findByOpenId(String openId);

    void del(Oauth oauth);
}