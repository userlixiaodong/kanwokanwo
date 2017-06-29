package cv.focus.core.interfaces.student.facade.impl;

import cv.focus.core.application.ActivityService;
import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.student.model.activity.ActivityTag;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialId;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import cv.focus.core.interfaces.student.facade.ActivityServiceFacade;
import cv.focus.core.interfaces.student.dto.ActivityDTO;
import cv.focus.core.interfaces.student.dto.ActivityTagDTO;
import cv.focus.core.interfaces.student.dto.MaterialDTO;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Created by song on 16/2/21.
 */

//TODO 权限的控制，是统一有个权限service还是？调用的话是在controller还是？
@Service
public class ActivityServiceFacadeImpl implements ActivityServiceFacade {

    @Resource
    ActivityService activityService;

    @Override
    public void delActivityMaterial(String materialId, String activityId, String studentProfileId) {
        ActivityId activityId1 = new ActivityId(activityId);
        MaterialId materialId1 = new MaterialId(materialId);
        StudentProfileId studentProfileId1 = new StudentProfileId(studentProfileId);
        activityService.delActivityMaterial(materialId1, activityId1, studentProfileId1);
    }

    @Override
    public ActivityDTO addActivity(String params, String studentProfileId) throws ParseException {
        StudentProfileId studentProfileId1 = new StudentProfileId(studentProfileId);
        SimpleDateFormat sdf = new SimpleDateFormat("MMM yyyy", Locale.ENGLISH);
        JSONObject paramsObj = new JSONObject(params);
        String title = null;
        if (paramsObj.has("title")) {
            title = (String) paramsObj.get("title");
        }
        JSONArray tags = null;
        List<ActivityTag> activityTags = null;
        if (paramsObj.has("activityTagList")) {
            tags = (JSONArray) paramsObj.get("activityTagList");
            activityTags = new ArrayList<ActivityTag>();
            for (int i = 0; i < tags.length(); i++) {
                JSONObject oj = tags.getJSONObject(i);
                ActivityTag activityTag1 = new ActivityTag();
                activityTag1.setTitle((String) oj.get("title"));
                activityTags.add(activityTag1);
            }
        }
        String startDate;
        String endDate;
        Date sd = null;
        Date ed = null;
        if (paramsObj.has("startDate")) {
            startDate = (String) paramsObj.get("startDate");
            if (startDate != null && !"".equals(startDate)) {
                sd = sdf.parse(startDate);
            }
        }

        if (paramsObj.has("endDate")) {
            endDate = (String) paramsObj.get("endDate");
            if (endDate != null && !"".equals(endDate)) {
                ed = sdf.parse(endDate);
            }
        }
        //新增
        Activity activity = activityService.addActivity(activityTags, title, sd, ed, studentProfileId1);
        ActivityDTO activityDTO = new ActivityDTO();
        BeanUtils.copyProperties(activity, activityDTO);
        activityDTO.setCreateTime(activity.getCreateTime());
        List<ActivityTagDTO> dtoTagList = new ArrayList<ActivityTagDTO>();
        for (ActivityTag activityTag1 : activity.getActivityTagList()) {
            ActivityTagDTO activityTagDTO = new ActivityTagDTO();
            BeanUtils.copyProperties(activityTag1, activityTagDTO);
            dtoTagList.add(activityTagDTO);
        }
        activityDTO.setActivityTagList(dtoTagList);
        return activityDTO;
    }

    @Override
    public void updateActivity(String params, String studentProfileId) throws ParseException {
        StudentProfileId studentProfileId1 = new StudentProfileId(studentProfileId);
        SimpleDateFormat sdf = new SimpleDateFormat("MMM yyyy", Locale.ENGLISH);
        JSONObject paramsObj = new JSONObject(params);
        String title = null;
        if (paramsObj.has("title")) {
            title = (String) paramsObj.get("title");
        }
        JSONArray tags = null;
        List<ActivityTag> activityTags = null;
        if (paramsObj.has("activityTagList")) {
            tags = (JSONArray) paramsObj.get("activityTagList");
            activityTags = new ArrayList<ActivityTag>();
            for (int i = 0; i < tags.length(); i++) {
                JSONObject oj = tags.getJSONObject(i);
                ActivityTag activityTag1 = new ActivityTag();
                activityTag1.setTitle((String) oj.get("title"));
                activityTags.add(activityTag1);
            }
        }
        String startDate;
        String endDate;
        Date sd = null;
        Date ed = null;
        if (paramsObj.has("startDate")) {
            startDate = (String) paramsObj.get("startDate");
            if (startDate != null && !"".equals(startDate)) {
                sd = sdf.parse(startDate);
            }
        }

        if (paramsObj.has("endDate")) {
            endDate = (String) paramsObj.get("endDate");
            if (endDate != null && !"".equals(endDate)) {
                ed = sdf.parse(endDate);
            }
        }
        String description = null;
        if (paramsObj.has("description")) {
             description = (String) paramsObj.get("description");
        }
        String activityId = (String) paramsObj.get("activityId");
        ActivityId activityId1 = new ActivityId(activityId);

        activityService.updateActivity(studentProfileId1, activityId1, title, sd, ed, activityTags, description);
    }


    @Override
    public void addActivityMaterial(MultipartFile file, String materialType, String title, String activityId, String studentProfileId) throws IOException {
        ActivityId activityId1 = new ActivityId(activityId);
        StudentProfileId studentProfileId1 = new StudentProfileId(studentProfileId);
        MaterialType materialType1 = null;
        switch (materialType) {
            case "doc":
                materialType1 = MaterialType.DOC;
                break;
            case "img":
                materialType1 = MaterialType.IMG;
                break;
            case "video":
                materialType1 = MaterialType.VIDEO;
                break;
        }
        if (materialType1 != null) {
            activityService.addActivityMaterial(file, materialType1, title, activityId1, studentProfileId1);
        }
    }

    @Override
    public List<ActivityDTO> findActivityListByStudentProfileId(StudentProfileId studentProfileId) {
        List<Activity> list = activityService.findActivityListByStudentProfileId(studentProfileId);
        return transToActivityDtos(list);
    }

    @Override
    public List<Activity> findDomainActivityListByStudentProfileId(StudentProfileId studentProfileId) {
        List<Activity> list = activityService.findActivityListByStudentProfileId(studentProfileId);
        return list;
    }

    @Override
    public List<ActivityDTO> transToActivityDtos(List<Activity> ats) {
        List<ActivityDTO> dtoList = new ArrayList<ActivityDTO>();
        for (Activity activity : ats) {
            List<ActivityTagDTO> dtoTagList = new ArrayList<ActivityTagDTO>();
            for (ActivityTag activityTag : activity.getActivityTagList()) {
                ActivityTagDTO activityTagDTO = new ActivityTagDTO();
                BeanUtils.copyProperties(activityTag, activityTagDTO);
                dtoTagList.add(activityTagDTO);
            }
            List<MaterialDTO> dtoMaterialList = new ArrayList<MaterialDTO>();
            for (Material material : activity.getMaterials()) {
                MaterialDTO materialDto = new MaterialDTO();
                BeanUtils.copyProperties(material, materialDto);
                materialDto.setMaterialId(material.getMaterialId().toString());
                dtoMaterialList.add(materialDto);
            }
            ActivityDTO activityDTO = new ActivityDTO();
            BeanUtils.copyProperties(activity, activityDTO);
            activityDTO.setActivityTagList(dtoTagList);
            activityDTO.setStartDate(activity.getStartDate());
            activityDTO.setEndDate(activity.getEndDate());
            activityDTO.setMaterials(dtoMaterialList);
            activityDTO.setCreateTime(activity.getCreateTime());
            dtoList.add(activityDTO);
        }
        return dtoList;
    }

    @Override
    public ActivityDTO addActivityDescription(String studentProfileId, String activityId, String description) {
        ActivityId activityId1 = new ActivityId(activityId);
        StudentProfileId studentProfileId1 = new StudentProfileId(studentProfileId);
        Activity activity = activityService.addDescription(studentProfileId1, activityId1, description);
        ActivityDTO activityDTO = new ActivityDTO();
        BeanUtils.copyProperties(activity, activityDTO);
        activityDTO.setCreateTime(activity.getCreateTime());
        return activityDTO;
    }

    @Override
    public ActivityDTO changeLocation(String studentProfileId, String activityId, int orign, int dest) {
        ActivityId activityId1 = new ActivityId(activityId);
        StudentProfileId studentProfileId1 = new StudentProfileId(studentProfileId);
        Activity activity = activityService.changeLocation(studentProfileId1, activityId1, orign, dest);
        ActivityDTO activityDTO = new ActivityDTO();
        BeanUtils.copyProperties(activity, activityDTO);
        activityDTO.setCreateTime(activity.getCreateTime());
        return activityDTO;
    }

    @Override
    public void delActivity(String studentProfileId, String activityId) {
        ActivityId activityId1 = new ActivityId(activityId);
        StudentProfileId studentProfileId1 = new StudentProfileId(studentProfileId);
        activityService.delActivity(studentProfileId1, activityId1);
    }

    @Override
    public void changeActivityLocation(String studentProfileId, String activityId, int dest) {
        ActivityId activityId1 = new ActivityId(activityId);
        StudentProfileId studentProfileId1 = new StudentProfileId(studentProfileId);
        activityService.changeActivityLocation(studentProfileId1, activityId1, dest);

    }

}
