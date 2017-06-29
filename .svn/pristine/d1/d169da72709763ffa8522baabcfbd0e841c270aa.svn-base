package cv.focus.core.application.impl;

import cv.focus.common.infrastructure.services.StorageService;
import cv.focus.core.application.InterviewService;
import cv.focus.core.domain.student.model.interview2.Interview;
import cv.focus.core.domain.student.model.interview2.InterviewRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by song on 16/5/5.
 */
@Service
public class InterviewServiceImpl implements InterviewService {

    @Resource
    InterviewRepository interviewRepository;

    @Resource
    StorageService storageService;

    @Override
    public void createInterview(Interview interview) {
        interviewRepository.store(interview);
    }

    @Override
    public void deleteInterviewById(long id) {
    }

    @Override
    public void updateInterview(Interview interview) {

    }

    @Override
    public Interview findInterviewById(long id) {
        return interviewRepository.findById(id);

    }

    @Override
    public Interview findInterviewByUserId(Integer userId) {
        return interviewRepository.findByUserId(userId);
    }

    @Override
    public boolean checkPassword(Interview interview, String password) {
        return false;
    }

    @Override
    public Interview findInterviewByPublicUrl(String publicUrl) {
        return interviewRepository.findByPublicUrl(publicUrl);
    }

    @Override
    public Interview findInterviewByPublicUrlAndPassword(String publicUrl, String password) {
        return interviewRepository.findByPublicUrlAndPassword(publicUrl, password);
    }
}
