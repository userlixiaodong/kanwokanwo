package cv.focus.core.domain.school.model.profile;

import cv.focus.core.domain.shared.ValueObject;

import java.util.UUID;

/**
 * AdmissionOfficer 主键
 *
 * @author liuruichao
 * Created on 2016-04-02 12:06
 */
public class AdmissionProfileId implements ValueObject {
    private String admissionProfileId;

    public AdmissionProfileId() {
        admissionProfileId = UUID.randomUUID().toString();
    }

    public AdmissionProfileId(String admissionProfileId) {
        this.admissionProfileId = admissionProfileId;
    }

    public String getAdmissionProfileId() {
        return admissionProfileId;
    }

    public void setAdmissionProfileId(String admissionProfileId) {
        this.admissionProfileId = admissionProfileId;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
