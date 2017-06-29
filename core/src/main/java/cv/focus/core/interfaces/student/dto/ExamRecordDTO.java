package cv.focus.core.interfaces.student.dto;

import cv.focus.core.domain.student.model.profile.exam.ExamItem;
import cv.focus.core.domain.student.model.profile.exam.ExamRecord;
import cv.focus.core.domain.student.model.profile.exam.ExamType;
import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * ExamRecordDTO
 * 
 * @author liuruichao
 * Created on 2016-03-04 16:25
 */
public class ExamRecordDTO {
    private ExamType examType;
    private String total;
    private List<ExamItemDTO> examItemList;

    public ExamRecordDTO(ExamRecord record) {
        examType = record.getExamType();
        total = record.getTotal() + "";
        if (StringUtils.isBlank(total) || "null".equals(total)) {
            total = "N/A";
        }
        if (record.getExamItemList() != null && record.getExamItemList().size() > 0) {
            examItemList = new ArrayList<>(record.getExamItemList().size());
            for (ExamItem item : record.getExamItemList()) {
                examItemList.add(new ExamItemDTO(item));
            }
        }
    }

    public ExamType getExamType() {
        return examType;
    }

    public void setExamType(ExamType examType) {
        this.examType = examType;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public List<ExamItemDTO> getExamItemList() {
        return examItemList;
    }

    public void setExamItemList(List<ExamItemDTO> examItemList) {
        this.examItemList = examItemList;
    }
}
