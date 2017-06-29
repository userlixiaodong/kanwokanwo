package cv.focus.core.application.impl;

import cv.focus.core.application.BadgesCalcuService;
import cv.focus.core.domain.student.model.Badge;
import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import cv.focus.core.domain.student.service.BadgesService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lcq on 2016/3/4.
 */
@Service
public class BadgesCalcuServiceImpl implements BadgesCalcuService {
    @Resource
    private BadgesService badgesService;

    @Override
    public List<Badge> getAccessBadges(StudentProfile sp, List<Activity> ats) {
        return badgesService.generateBadges(sp,ats);
    }

    @Override
    public Integer calcuCompleteDegree(List<Badge> accessBades) {
        return badgesService.calculateCompletion(accessBades);
    }
}
