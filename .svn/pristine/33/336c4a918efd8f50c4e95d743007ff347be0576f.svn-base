package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.school.model.activity.AdmissionActivity;
import cv.focus.core.domain.school.model.activity.AdmissionActivityTag;
import cv.focus.core.domain.material.Material;
import cv.focus.core.interfaces.student.dto.MaterialDTO;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * AdActivityDTO
 * 
 * @author liuruichao
 * Created on 2016-04-04 18:39
 */
public class AdActivityDTO {
    private String activityId;
    private List<AdActivityTagDTO> activityTagList;
    private List<MaterialDTO> materials;
    private String admissionProfileId;
    private String title;
    private String description;
    private String startDate;
    private String endDate;
    private Integer seq;
    private SimpleDateFormat sdf = new SimpleDateFormat("MMM yyyy", Locale.ENGLISH);

    public AdActivityDTO(AdmissionActivity activity) {
        activityId = activity.getAdmissionActivityId().getActivityId();
        if (activity.getActivityTagList() != null && activity.getActivityTagList().size() > 0) {
            activityTagList = new ArrayList<>(activity.getActivityTagList().size());
            for (AdmissionActivityTag tag : activity.getActivityTagList()) {
                activityTagList.add(new AdActivityTagDTO(tag));
            }
        }
        materials = new ArrayList<MaterialDTO>();
        if (activity.getMaterials() != null && activity.getMaterials().size() > 0) {
            for (Material material : activity.getMaterials()) {
                materials.add(new MaterialDTO(material));
            }
        }
        admissionProfileId = activity.getAdmissionProfileId().getAdmissionProfileId();
        title = activity.getTitle();
        description = activity.getDescription() == null ? "" : activity.getDescription();
        if (activity.getStartDate() != null) {
            startDate = sdf.format(activity.getStartDate());
        }
        if (activity.getEndDate() != null) {
            endDate = sdf.format(activity.getEndDate());
        }
        seq = activity.getSeq();
    }

    public String getActivityId() {
        return activityId;
    }

    public void setActivityId(String activityId) {
        this.activityId = activityId;
    }

    public List<AdActivityTagDTO> getActivityTagList() {
        return activityTagList;
    }

    public void setActivityTagList(List<AdActivityTagDTO> activityTagList) {
        this.activityTagList = activityTagList;
    }

    public List<MaterialDTO> getMaterials() {
        return materials;
    }

    public void setMaterials(List<MaterialDTO> materials) {
        this.materials = materials;
    }

    public String getAdmissionProfileId() {
        return admissionProfileId;
    }

    public void setAdmissionProfileId(String admissionProfileId) {
        this.admissionProfileId = admissionProfileId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }
}
