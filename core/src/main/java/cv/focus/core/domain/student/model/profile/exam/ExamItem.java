package cv.focus.core.domain.student.model.profile.exam;

import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.*;
import java.util.UUID;

/**
 * Created by song on 16/2/23.
 */

@Table
@Entity
public class ExamItem extends IdentifiedDomainObject implements ValueObject {
    String title;
    Float score;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "examRecordId", nullable = false)
    private ExamRecord examRecord;

    public ExamItem() {
        this(null, null);
    }


    public ExamItem(String title, ExamRecord examRecord) {
        setDomainId(UUID.randomUUID().toString());
        this.title = title;
        this.examRecord = examRecord;
    }

    public ExamRecord getExamRecord() {
        return examRecord;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public void setExamRecord(ExamRecord examRecord) {
        this.examRecord = examRecord;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
