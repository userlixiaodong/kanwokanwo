package cv.focus.core.application;

import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.material.MaterialId;
import cv.focus.core.domain.student.model.profile.StudentProfileId;

/**
 * Created by song on 16/2/21.
 */
public interface AccessService {
    boolean hasPermission(StudentProfileId studentProfileId, ActivityId activityId );

    boolean hasPermission(StudentProfileId studentProfileId, ActivityId activityId, MaterialId materialId);

}
