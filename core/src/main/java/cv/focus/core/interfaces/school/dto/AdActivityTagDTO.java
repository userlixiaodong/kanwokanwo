package cv.focus.core.interfaces.school.dto;

import cv.focus.core.domain.school.model.activity.AdmissionActivityTag;

/**
 * AdActivityTagDTO
 * 
 * @author liuruichao
 * Created on 2016-04-04 18:39
 */
public class AdActivityTagDTO {
    private String title;

    public AdActivityTagDTO(AdmissionActivityTag admissionActivityTag) {
        title = admissionActivityTag.getTitle();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
