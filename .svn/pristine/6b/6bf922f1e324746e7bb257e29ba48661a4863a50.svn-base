package cv.focus.core.domain.material;

import org.hibernate.SessionFactory;

/**
 * MaterialRepository
 * 
 * @author liuruichao
 * Created on 2016-04-22 15:51
 */
public interface MaterialRepository {
    Material findById(String id);

    Material findByTransCodeJobId(String jobId);

    void store(Material material);

    void del(Material material);

    SessionFactory getSessionFactory();
}
