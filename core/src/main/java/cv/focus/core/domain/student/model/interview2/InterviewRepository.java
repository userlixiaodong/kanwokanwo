package cv.focus.core.domain.student.model.interview2;

import cv.focus.core.domain.student.model.interview2.Interview;

/**
 * Created by song on 16/5/5.
 */
public interface InterviewRepository {
    Interview findById(long id);

    void store(Interview interview);

    Interview findByPassword(String password);

    Interview findByUserId(Integer userId);

    void delete(Interview interview);

    void deleteById(long id);

    Interview findByPublicUrl(String publicUrl);

    void deleteByPublicUrl(String lcq);

    Interview findByPublicUrlAndPassword(String publicUrl, String password);
}
