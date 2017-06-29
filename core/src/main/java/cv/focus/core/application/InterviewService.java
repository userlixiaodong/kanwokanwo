package cv.focus.core.application;

import cv.focus.core.domain.student.model.interview2.Interview;

/**
 * Created by song on 16/5/5.
 */
public interface InterviewService {
    void createInterview(Interview interview);
    void deleteInterviewById(long id);
    void updateInterview(Interview interview);
    Interview findInterviewById(long id);
    Interview findInterviewByUserId(Integer userId);
    boolean checkPassword(Interview interview, String password);
    Interview findInterviewByPublicUrl(String publicUrl);
    Interview findInterviewByPublicUrlAndPassword(String publicUrl, String password);
}
