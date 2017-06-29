package cv.focus.core.domain.student.model.profile.exam;

import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;
import cv.focus.core.domain.student.model.profile.StudentProfile;

import javax.persistence.*;
import java.util.List;
import java.util.UUID;

/**
 * Created by song on 16/2/23.
 */

@Table
@Entity
public class ExamRecord extends IdentifiedDomainObject implements ValueObject{

    ExamType examType;

    Float total;

    @OneToMany(fetch = FetchType.EAGER,cascade = javax.persistence.CascadeType.ALL,mappedBy = "examRecord")
    List<ExamItem> examItemList;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "studentProfileId", nullable = false)
    private StudentProfile studentProfile;


    public void addRecordList(Float[] floats){
        for (int i = 0; i < floats.length - 1; i++){
            ExamItem item = this.examItemList.get(i);
            item.setScore(floats[i]);
            this.examItemList.set(i, item);
        }
        // 最后一个是总分
        total = floats[floats.length - 1];
    }

    public ExamRecord(ExamType examType, Float total, List<ExamItem> examItemList, StudentProfile studentProfile) {
        setDomainId(UUID.randomUUID().toString());
        this.examType = examType;
        this.total = total;
        this.examItemList = examItemList;
        this.studentProfile = studentProfile;
    }

    public ExamRecord() {
        this(null, null, null, null);
    }

    public StudentProfile getStudentProfile() {
        return studentProfile;
    }

    public void setExamType(ExamType examType) {
        this.examType = examType;
    }

    public void setTotal(Float total) {
        this.total = total;
    }

    public void setExamItemList(List<ExamItem> examItemList) {
        this.examItemList = examItemList;
    }

    public void setStudentProfile(StudentProfile studentProfile) {
        this.studentProfile = studentProfile;
    }

    public ExamType getExamType() {
        return examType;
    }

    public Float getTotal() {
        return total;
    }

    public List<ExamItem> getExamItemList() {
        return examItemList;
    }

    public void calculateTotalScore() {
        total = 0f;
        if (examItemList != null && examItemList.size() > 0) {
            for (ExamItem item : examItemList) {
                total += item.getScore();
            }
        }

    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
