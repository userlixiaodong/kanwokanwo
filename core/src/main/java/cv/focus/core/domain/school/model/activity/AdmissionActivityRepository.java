package cv.focus.core.domain.school.model.activity;

import cv.focus.core.domain.school.model.profile.AdmissionProfileId;

import java.util.List;

/**
 * AdmissionActivityRepository
 *
 * @author liuruichao
 * Created on 2016-04-02 12:59
 */
public interface AdmissionActivityRepository {
    List findByAdProfileId(AdmissionProfileId admissionProfileId);

    void store(AdmissionActivity activity);

    AdmissionActivity findByActivityId(AdmissionActivityId admissionActivityId);

    void delete(AdmissionActivity activity);

    AdmissionActivity findByAndSeq(AdmissionProfileId admissionProfileId, int i);

    AdmissionActivity findByAdmissionProfileIdAndActivityId(AdmissionProfileId admissionProfileId, AdmissionActivityId admissionActivityId);
}
