package cv.focus.core.interfaces.school.facade;

import cv.focus.core.domain.school.model.profile.AdmissionProfileId;
import cv.focus.core.interfaces.school.dto.AdActivityDTO;

import java.util.List;

/**
 * AdmissionActivityServiceFacade
 * 
 * @author liuruichao
 * Created on 2016-04-02 13:12
 */
public interface AdmissionActivityServiceFacade {
    List<AdActivityDTO> getActivityListByAdProfileId(AdmissionProfileId admissionProfileId);

    void updateActivity(String params, String admissionProfileId);

    AdActivityDTO addActivity(String params, String admissionProfileId);

    void delActivity(String admissionProfileId, String activityId);

    void changeActivityLocation(String admissionProfileId, String activityId, int dest);
}
