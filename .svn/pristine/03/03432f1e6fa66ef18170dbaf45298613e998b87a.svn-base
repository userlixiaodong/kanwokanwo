package cv.focus.core.application;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialId;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.student.model.activity.ActivityTag;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/2/1.
 */
public interface ActivityService {
    void delActivityMaterial(MaterialId materialId, ActivityId activityId, StudentProfileId studentProfileId);

    Activity addActivity(List<ActivityTag> activityTags, String title, Date startDate, Date endDate, StudentProfileId studentProfileId);

    void delActivity(StudentProfileId studentProfileId, ActivityId activityId);

    void addActivityMaterial(MultipartFile file, MaterialType materialType, String title, ActivityId activityId, StudentProfileId studentProfileId) throws IOException;

    List<Activity> findActivityListByStudentProfileId(StudentProfileId studentProfileId);

    Activity findActivityByActivityId(ActivityId activityId);

    Activity addDescription(StudentProfileId studentProfileId, ActivityId activityId, String description);

    Activity changeLocation(StudentProfileId studentProfileId, ActivityId activityId, int orign, int dest);

    void changeActivityLocation(StudentProfileId studentProfileId, ActivityId activityId1, int dest);

    void updateActivity(StudentProfileId studentProfileId, ActivityId activityId1, String title, Date startDate, Date endDate, List<ActivityTag> activityTags, String description);

    void addActivityMaterial(ActivityId activityId, Material material);

    void changeMaterialLocation(ActivityId activityId, int beg, int end);

    void deleteMaterial(ActivityId activityId, int module);

    void updateMaterialTitle(String title, Integer index, ActivityId activityId);
}
