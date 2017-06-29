package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.student.model.profile.exam.ExamItem;
import org.apache.commons.lang3.StringUtils;

/**
 * ExamItemDTO
 *
 * @author liuruichao
 *         Created on 2016-03-04 16:25
 */
public class ExamItemDTO {
    private String title;
    private String score;

    public ExamItemDTO(ExamItem item) {
        title = item.getTitle();
        score = item.getScore() + "";
        if (StringUtils.isBlank(score) || "null".equals(score)) {
            score = "N/A";
        }
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }
}
