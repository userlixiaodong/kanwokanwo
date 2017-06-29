package cv.focus.core.interfaces.student.dto;

/**
 * Created by Administrator on 2016/3/1.
 */
public class ActivityTagDTO {
    String title;

    public ActivityTagDTO(String title) {
        this.title = title;
    }

    public ActivityTagDTO() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
