package cv.focus.core.interfaces.school.facade.impl;

import cv.focus.core.application.AdmissionActivityService;
import cv.focus.core.domain.school.model.activity.AdmissionActivity;
import cv.focus.core.domain.school.model.activity.AdmissionActivityId;
import cv.focus.core.domain.school.model.activity.AdmissionActivityTag;
import cv.focus.core.domain.school.model.profile.AdmissionProfileId;
import cv.focus.core.interfaces.school.dto.AdActivityDTO;
import cv.focus.core.interfaces.school.dto.AdActivityTagDTO;
import cv.focus.core.interfaces.school.facade.AdmissionActivityServiceFacade;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * AdmissionActivityServiceFacadeImpl
 * 
 * @author liuruichao
 * Created on 2016-04-02 13:12
 */
@Service
public class AdmissionActivityServiceFacadeImpl implements AdmissionActivityServiceFacade {
    @Resource
    private AdmissionActivityService admissionActivityService;

    @Override
    public List<AdActivityDTO> getActivityListByAdProfileId(AdmissionProfileId admissionProfileId) {
        List<AdmissionActivity> activities = admissionActivityService.getByAdProfileId(admissionProfileId);
        List<AdActivityDTO> dtoList = new ArrayList<>(activities.size());
        if (activities.size() > 0) {
            for (AdmissionActivity admissionActivity : activities) {
                dtoList.add(new AdActivityDTO(admissionActivity));
            }
        }
        return dtoList;
    }

    @Override
    public void updateActivity(String params, String admissionProfileId) {
        SimpleDateFormat sdf = new SimpleDateFormat("MMM yyyy", Locale.ENGLISH);
        JSONObject paramsObj = new JSONObject(params);
        String title = null;
        if (paramsObj.has("title")) {
            title = (String) paramsObj.get("title");
        }
        JSONArray tags = null;
        List<AdmissionActivityTag> activityTags = null;
        if (paramsObj.has("activityTagList")) {
            tags = (JSONArray) paramsObj.get("activityTagList");
            activityTags = new ArrayList<>();
            for (int i = 0; i < tags.length(); i++) {
                JSONObject obj = tags.getJSONObject(i);
                AdmissionActivityTag tag = new AdmissionActivityTag();
                tag.setTitle(obj.getString("title"));
                activityTags.add(tag);
            }
        }
        String startDate;
        String endDate;
        Date sd = null;
        Date ed = null;
        if (paramsObj.has("startDate")) {
            startDate = (String) paramsObj.get("startDate");
            if (startDate != null && !"".equals(startDate)) {
                try {
                    sd = sdf.parse(startDate);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }
        }

        if (paramsObj.has("endDate")) {
            endDate = (String) paramsObj.get("endDate");
            if (endDate != null && !"".equals(endDate)) {
                try {
                    ed = sdf.parse(endDate);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }
        }
        String description = null;
        if (paramsObj.has("description")) {
            description = (String) paramsObj.get("description");
        }
        String activityId = (String) paramsObj.get("activityId");
        AdmissionActivityId admissionActivityId = new AdmissionActivityId(activityId);
        admissionActivityService.updateActivity(admissionActivityId, title, sd, ed, activityTags, description);
    }

    @Override
    public AdActivityDTO addActivity(String params, String admissionProfileId) {
        SimpleDateFormat sdf = new SimpleDateFormat("MMM yyyy", Locale.ENGLISH);
        JSONObject paramsObj = new JSONObject(params);
        String title = null;
        if (paramsObj.has("title")) {
            title = (String) paramsObj.get("title");
        }
        JSONArray tags = null;
        List<AdmissionActivityTag> activityTags = null;
        if (paramsObj.has("activityTagList")) {
            tags = (JSONArray) paramsObj.get("activityTagList");
            activityTags = new ArrayList<>();
            for (int i = 0; i < tags.length(); i++) {
                JSONObject oj = tags.getJSONObject(i);
                AdmissionActivityTag activityTag1 = new AdmissionActivityTag();
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
                try {
                    sd = sdf.parse(startDate);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }
        }

        if (paramsObj.has("endDate")) {
            endDate = (String) paramsObj.get("endDate");
            if (endDate != null && !"".equals(endDate)) {
                try {
                    ed = sdf.parse(endDate);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }
        }
        //新增
        AdmissionActivity activity = admissionActivityService.addActivity(activityTags, title, sd, ed, admissionProfileId);
        AdActivityDTO activityDTO = new AdActivityDTO(activity);
        List<AdActivityTagDTO> dtoTagList = new ArrayList<AdActivityTagDTO>();
        for (AdmissionActivityTag tag : activity.getActivityTagList()) {
            AdActivityTagDTO activityTagDTO = new AdActivityTagDTO(tag);
            dtoTagList.add(activityTagDTO);
        }
        activityDTO.setActivityTagList(dtoTagList);
        return activityDTO;
    }

    @Override
    public void delActivity(String admissionProfileId, String activityId) {
        admissionActivityService.delActivity(admissionProfileId, activityId);
    }

    @Override
    public void changeActivityLocation(String admissionProfileId, String activityId, int dest) {
        admissionActivityService.changeActivityLocation(new AdmissionProfileId(admissionProfileId), new AdmissionActivityId(activityId), dest);
    }
}
