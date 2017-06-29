package cv.focus.core.interfaces.student.facade;

import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import cv.focus.core.interfaces.student.dto.ActivityDTO;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

/**
 * Created by song on 16/2/21.
 */
public interface ActivityServiceFacade {
    void delActivityMaterial(String materialId, String activityId, String studentProfileId);

    ActivityDTO addActivity(String params, String studentProfileId) throws ParseException;

    void updateActivity(String params, String studentProfileId) throws ParseException;

    void addActivityMaterial(MultipartFile file, String materialType, String title, String activityId, String studentProfileId) throws IOException;

    List<ActivityDTO> findActivityListByStudentProfileId(StudentProfileId studentProfileId);

    List<Activity> findDomainActivityListByStudentProfileId(StudentProfileId studentProfileId);

    List<ActivityDTO> transToActivityDtos(List<Activity> ats);

    ActivityDTO addActivityDescription(String studentProfileId, String activityId, String description);

    ActivityDTO changeLocation(String studentProfileId, String activityId, int orign, int dest);

    void delActivity(String studentProfileId, String activityId);

    void changeActivityLocation(String studentProfileId, String activityId, int dest);
}
