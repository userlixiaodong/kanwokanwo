package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.student.model.interview2.Interview;

/**
 * Created by song on 16/5/6.
 */
public class InterviewDTO {

    public InterviewDTO(Interview interview){
        if(interview == null)
            return;
        if(interview.getImage() != null)
            this.image = new MaterialDTO(interview.getImage());
        if(interview.getVideo() != null)
            this.video = new MaterialDTO(interview.getVideo());
    }

    MaterialDTO video;

    MaterialDTO image;

    public MaterialDTO getVideo() {
        return video;
    }

    public void setVideo(MaterialDTO video) {
        this.video = video;
    }

    public MaterialDTO getImage() {
        return image;
    }

    public void setImage(MaterialDTO image) {
        this.image = image;
    }

}
