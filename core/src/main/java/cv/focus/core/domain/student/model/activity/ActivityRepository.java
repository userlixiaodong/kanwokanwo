package cv.focus.core.domain.student.model.activity;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialId;
import cv.focus.core.domain.student.model.profile.StudentProfileId;

import java.util.List;

/**
 * Created by song on 16/1/23.
 */
public interface ActivityRepository {

    ActivityId nextId();

    Activity findById(ActivityId activityId);

    List findByStudentProfileId(StudentProfileId studentProfileId);

    void store(Activity activity);

    void storeTag(ActivityTag activityTag);

    void del(Activity activity);

    Material findMaterialById(MaterialId materialId);

    Activity findByIdAndSeq(StudentProfileId studentProfileId, int i);

    Activity findByStudentProfileIdAndActivityId(StudentProfileId studentProfileId,ActivityId activityId);
}
