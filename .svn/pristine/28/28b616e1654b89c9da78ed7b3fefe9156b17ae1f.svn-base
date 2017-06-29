package cv.focus.core.application;

import cv.focus.core.domain.school.model.activity.AdmissionActivity;
import cv.focus.core.domain.school.model.activity.AdmissionActivityId;
import cv.focus.core.domain.school.model.activity.AdmissionActivityTag;
import cv.focus.core.domain.school.model.profile.AdmissionProfileId;
import cv.focus.core.domain.material.Material;

import java.util.Date;
import java.util.List;

/**
 * AdmissionActivityService
 *
 * @author liuruichao
 * Created on 2016-04-02 13:06
 */
public interface AdmissionActivityService {
    AdmissionActivity addActivity(List<AdmissionActivityTag> activityTags, String title, Date sd, Date ed, String admissionProfileId);

    void updateActivity(AdmissionActivityId admissionActivityId, String title, Date sd, Date ed, List<AdmissionActivityTag> activityTags, String description);

    List<AdmissionActivity> getByAdProfileId(AdmissionProfileId admissionProfileId);

    void addActivityMaterial(String activityId, Material material);

    void changeMaterialLocation(AdmissionActivityId admissionActivityId, int beg, int end);

    void delActivity(String admissionProfileId, String activityId);

    void changeActivityLocation(AdmissionProfileId admissionProfileId, AdmissionActivityId admissionActivityId, int dest);

    void delMaterial(AdmissionActivityId admissionActivityId, int seq);

    void updateMaterialTitle(String title, Integer index, AdmissionActivityId admissionActivityId);
}
