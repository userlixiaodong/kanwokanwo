package cv.focus.core.application.impl;

import cv.focus.common.infrastructure.services.StorageService;
import cv.focus.core.application.ActivityService;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialId;
import cv.focus.core.domain.material.MaterialListUtil;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.student.model.activity.ActivityRepository;
import cv.focus.core.domain.student.model.activity.ActivityTag;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import cv.focus.core.domain.student.model.profile.StudentProfileRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/2/1.
 */
@Service
public class ActivityServiceImpl implements ActivityService {
    @Resource
    ActivityRepository activityRepository;

    @Resource
    StudentProfileRepository studentProfileRepository;

    @Resource(name="aliyunOSSStorageService")
    private StorageService storageService;

    @Override
    public Activity addActivity(List<ActivityTag> activityTags, String title, Date startDate, Date endDate, StudentProfileId studentProfileId) {
        List<Activity> list = activityRepository.findByStudentProfileId(studentProfileId);
        Activity activity = new Activity(activityRepository.nextId(), studentProfileId, title, startDate, endDate, list.size());
        activity.addTag(activityTags);
        activity.setCreateTime(new Date());
        activityRepository.store(activity);
        return activity;
    }


    @Override
    public void delActivity(StudentProfileId studentProfileId, ActivityId activityId) {
        Activity activity = activityRepository.findById(activityId);
        activityRepository.del(activity);
    }

    @Override
    public void delActivityMaterial(MaterialId materialId, ActivityId activityId, StudentProfileId studentProfileId) {
        Activity activity = activityRepository.findById(activityId);
        List<Material> list = MaterialListUtil.delMaterialById(activity.getMaterials(), materialId);
        activity.setMaterials(list);
        activityRepository.store(activity);

        Material material = activityRepository.findMaterialById(materialId);
        storageService.delFile(material.getMaterialSrc(), false);
    }

    @Override
    public void addActivityMaterial(MultipartFile file, MaterialType materialType, String title, ActivityId activityId, StudentProfileId studentProfileId) throws IOException {
        Activity activity = activityRepository.findById(activityId);
        String src = storageService.putFile(file.getOriginalFilename(), file.getInputStream(), false);
        Material material = new Material(materialType, src, title);
        activity.setMaterials(MaterialListUtil.addMaterial(activity.getMaterials(), material));
        activityRepository.store(activity);
    }

    @Override
    public List<Activity> findActivityListByStudentProfileId(StudentProfileId studentProfileId) {
        return activityRepository.findByStudentProfileId(studentProfileId);
    }

    @Override
    public Activity findActivityByActivityId(ActivityId activityId) {
        return activityRepository.findById(activityId);
    }

    @Override
    public Activity addDescription(StudentProfileId studentProfileId, ActivityId activityId, String description) {
        Activity activity = activityRepository.findById(activityId);
        activity.setDescription(description);
        activityRepository.store(activity);
        return activity;
    }

    @Override
    public Activity changeLocation(StudentProfileId studentProfileId, ActivityId activityId, int orign, int dest) {
        Activity activity = activityRepository.findById(activityId);
        MaterialListUtil.exchangeMaterialLocation(activity.getMaterials(), orign, dest);
        activityRepository.store(activity);
        return activity;
    }

    @Override
    public void changeActivityLocation(StudentProfileId studentProfileId, ActivityId activityId1, int dest) {
        Activity activity = activityRepository.findById(activityId1);
        Activity activity1 = activityRepository.findByIdAndSeq(activity.getStudentProfileId(), activity.getSeq() + dest);
        if (activity1 == null) {
            return;
        }
        int temp = activity.getSeq();
        activity.setSeq(activity1.getSeq());
        activity1.setSeq(temp);
        activityRepository.store(activity);
        activityRepository.store(activity1);

    }

    @Override
    public void updateActivity(StudentProfileId studentProfileId, ActivityId activityId1, String title, Date startDate, Date endDate, List<ActivityTag> activityTags, String description) {
        Activity activity = activityRepository.findById(activityId1);
        activity.updateActivity(title, startDate, endDate, activityTags, description);
        activityRepository.store(activity);
    }

    @Override
    public void addActivityMaterial(ActivityId activityId, Material material) {
        Activity activity = activityRepository.findById(activityId);
        MaterialListUtil.addMaterial(activity.getMaterials(), material);
        activityRepository.store(activity);
    }

    @Override
    public void changeMaterialLocation(ActivityId activityId, int beg, int end) {
        Activity activity = activityRepository.findById(activityId);
        MaterialListUtil.exchangeMaterialLocation(activity.getMaterials(), beg, end);
        activityRepository.store(activity);
    }

    @Override
    public void deleteMaterial(ActivityId activityId, int seq) {
        Activity activity = activityRepository.findById(activityId);
        MaterialListUtil.delMaterialByLocation(activity.getMaterials(), seq);
        activityRepository.store(activity);
    }

    @Override
    public void updateMaterialTitle(String title, Integer index, ActivityId activityId) {
        Activity activity = activityRepository.findById(activityId);
        activity.getMaterials().get(index).setTitle(title);
        activityRepository.store(activity);
    }
}
