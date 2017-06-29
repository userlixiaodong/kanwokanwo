package cv.focus.core.application.impl;

import cv.focus.common.infrastructure.services.StorageService;
import cv.focus.core.application.AdmissionActivityService;
import cv.focus.core.domain.school.model.activity.AdmissionActivity;
import cv.focus.core.domain.school.model.activity.AdmissionActivityId;
import cv.focus.core.domain.school.model.activity.AdmissionActivityRepository;
import cv.focus.core.domain.school.model.activity.AdmissionActivityTag;
import cv.focus.core.domain.school.model.profile.AdmissionProfileId;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialListUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * AdmissionActivityServiceImpl
 *
 * @author liuruichao
 * Created on 2016-04-02 13:07
 */
@Service
public class AdmissionActivityServiceImpl implements AdmissionActivityService {
    @Resource
    private AdmissionActivityRepository admissionActivityRepository;
    @Resource(name = "aliyunOSSStorageService")
    private StorageService storageService;

    @Override
    public AdmissionActivity addActivity(List<AdmissionActivityTag> activityTags, String title, Date startDate, Date endDate, String admissionProfileId) {
        List<AdmissionActivity> list = admissionActivityRepository.findByAdProfileId(new AdmissionProfileId(admissionProfileId));
        AdmissionActivity activity = new AdmissionActivity(new AdmissionProfileId(admissionProfileId), title, startDate, endDate, list.size());
        activity.addTag(activityTags);
        admissionActivityRepository.store(activity);
        return activity;
    }

    @Override
    public void updateActivity(AdmissionActivityId admissionActivityId, String title, Date startDate, Date endDate, List<AdmissionActivityTag> activityTags, String description) {
        AdmissionActivity activity = admissionActivityRepository.findByActivityId(admissionActivityId);
        activity.updateActivity(title, startDate, endDate, activityTags, description);
        admissionActivityRepository.store(activity);
    }

    @Override
    public List<AdmissionActivity> getByAdProfileId(AdmissionProfileId admissionProfileId) {
        return admissionActivityRepository.findByAdProfileId(admissionProfileId);
    }

    @Override
    public void addActivityMaterial(String activityId, Material material) {
        AdmissionActivity activity = admissionActivityRepository.findByActivityId(new AdmissionActivityId(activityId));
        MaterialListUtil.addMaterial(activity.getMaterials(), material);
        admissionActivityRepository.store(activity);
    }

    @Override
    public void changeMaterialLocation(AdmissionActivityId admissionActivityId, int beg, int end) {
        AdmissionActivity activity = admissionActivityRepository.findByActivityId(admissionActivityId);
        MaterialListUtil.exchangeMaterialLocation(activity.getMaterials(), beg, end);
        admissionActivityRepository.store(activity);
    }

    @Override
    public void delActivity(String admissionProfileId, String activityId) {
        AdmissionActivity activity = admissionActivityRepository.findByActivityId(new AdmissionActivityId(activityId));
        if (activity.getAdmissionProfileId().getAdmissionProfileId().equals(admissionProfileId)) {
            admissionActivityRepository.delete(activity);
        }
    }

    @Override
    public void changeActivityLocation(AdmissionProfileId admissionProfileId, AdmissionActivityId admissionActivityId, int dest) {
        AdmissionActivity activity = admissionActivityRepository.findByActivityId(admissionActivityId);
        if (activity.getAdmissionProfileId().getAdmissionProfileId().equals(admissionProfileId.getAdmissionProfileId())) {
            AdmissionActivity activity1 = admissionActivityRepository.findByAndSeq(admissionProfileId, activity.getSeq() + dest);
            if (activity1 == null) {
                return;
            }
            int temp = activity.getSeq();
            activity.setSeq(activity1.getSeq());
            activity1.setSeq(temp);
            admissionActivityRepository.store(activity);
            admissionActivityRepository.store(activity1);
        }
    }

    @Override
    public void delMaterial(AdmissionActivityId admissionActivityId, int seq) {
        AdmissionActivity activity = admissionActivityRepository.findByActivityId(admissionActivityId);
        MaterialListUtil.delMaterialByLocation(activity.getMaterials(), seq);
        admissionActivityRepository.store(activity);
    }

    @Override
    public void updateMaterialTitle(String title, Integer index, AdmissionActivityId admissionActivityId) {
        AdmissionActivity activity = admissionActivityRepository.findByActivityId(admissionActivityId);
        activity.getMaterials().get(index).setTitle(title);
        admissionActivityRepository.store(activity);
    }
}
