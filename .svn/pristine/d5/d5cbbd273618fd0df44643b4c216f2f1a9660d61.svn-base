package cv.focus.core.domain.student.model.profile.exam;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by song on 16/2/23.
 */
public class ExamRecordFactory {
    public static ExamRecord createExamRecord(ExamType type, Float[] floats) {

        ExamRecord examRecord = new ExamRecord();
        List<ExamItem> examItemList = new ArrayList<ExamItem>();
        switch (type) {
            case TOEFL:
            case IELTS:
                examItemList.add(new ExamItem("Reading", examRecord));
                examItemList.add(new ExamItem("Listening", examRecord));
                examItemList.add(new ExamItem("Speaking", examRecord));
                examItemList.add(new ExamItem("Writing", examRecord));
                break;
            case GRE:
            case GMAT:
                examItemList.add(new ExamItem("Verbal", examRecord));
                examItemList.add(new ExamItem("Quantitative", examRecord));
                examItemList.add(new ExamItem("Writing", examRecord));
                break;
            case SAT:
                examItemList.add(new ExamItem("Reading", examRecord));
                examItemList.add(new ExamItem("Mathematics", examRecord));
                examItemList.add(new ExamItem("Writing", examRecord));
                break;

        }
        examRecord.setExamType(type);
        examRecord.examItemList = examItemList;
        examRecord.addRecordList(floats);
        return examRecord;
    }
}

