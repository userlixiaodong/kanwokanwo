package cv.focus.core.interfaces.student.facade.impl;

import cv.focus.core.application.BadgesCalcuService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.domain.student.model.Badge;
import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.material.MaterialModule;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.domain.student.model.profile.*;
import cv.focus.core.domain.student.model.profile.exam.ExamRecord;
import cv.focus.core.domain.student.model.profile.exam.ExamType;
import cv.focus.core.interfaces.student.dto.BiographyDTO;
import cv.focus.core.interfaces.student.facade.StudentProfileServiceFacade;
import cv.focus.core.interfaces.student.dto.RemarkDTO;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/**
 * Created by song on 16/2/21.
 */
@Service
public class StudentProfileServiceFacadeImpl implements StudentProfileServiceFacade {
    @Resource
    private StudentProfileService studentProfileService;

    @Resource
    private BadgesCalcuService badgesCalcuService;

    @Override
    public StudentProfile findStudentProfileByPublicUri(String uri) {
        return studentProfileService.findStudentProfileByPublicUri(uri);
    }

    //repository 要添加通过email sql到uri的方法 避免查询整个对象
    // ps：但是好像对于应用服务是没有必要的，cqrs？没必要又
    @Override
    public String getHomePageUrl(String email) {
        return getProfileByEmail(email).getPublicUri();
    }
    @Override
    public StudentProfile getProfileByEmail(String email) {
        return studentProfileService.findByEmail(email);
    }

    @Override
    public BiographyDTO updateBiography(String studentProfileId, String name, String location, String currentSchool, String graduationYear, String hobby, String graduationSchool) throws ParseException {
        Biography biography = new Biography();
        biography.setName(name);
        biography.setLocation(location);
        biography.setCurrentSchool(currentSchool);
        biography.setGraduation(graduationYear);
        biography.setHobby(hobby);
        StudentProfileId profileId = new StudentProfileId(studentProfileId);
        net.sf.json.JSONArray schoolJson = net.sf.json.JSONArray.fromObject(graduationSchool);
        Iterator it = schoolJson.iterator();
        List<GraduationSchool> graduationSchools = new ArrayList<GraduationSchool>();
        SimpleDateFormat sdf = new SimpleDateFormat("MMM yyyy", Locale.ENGLISH);
        while (it.hasNext()) {
            net.sf.json.JSONObject school = (net.sf.json.JSONObject) it.next();
            String key = (String) school.keySet().toArray()[0];
            SchoolType type = null;
            switch (key) {
                case "High":
                    type = SchoolType.High;
                    break;
                case "Secondary":
                    type = SchoolType.Secondary;
                    break;
                case "Middle":
                    type = SchoolType.Middle;
                    break;
            }
            net.sf.json.JSONObject detail = (net.sf.json.JSONObject) school.get(key);
            GraduationSchool gradSchool = new GraduationSchool(detail.get("schoolName").toString(), type, sdf.parse(detail.get("graYear").toString()));
            graduationSchools.add(gradSchool);
        }
        biography.setGraduationSchoolList(graduationSchools);
        Biography bio=studentProfileService.updateBiography(biography, profileId);
        return new BiographyDTO(bio);
    }

    @Override
    public void updateAndSynchronizeProfile(String email, String school) {
        studentProfileService.updateAndSynchronizeProfile(email,school);
    }

    @Override
    public void updateStoryDesc(String email, String storyDesc) {
        studentProfileService.updateStoryDesc(email, storyDesc);
    }
    @Override
    public void updateHonorDesc(String email, String honorDesc) {
        studentProfileService.updateHonorDesc(email,honorDesc);
    }

    @Override
    public void updateDesc(String params, String module, String email) {
        JSONObject paramsObj = new JSONObject(params);
        String description = (String) paramsObj.get("description");
        if (module.equals("HONOR")) {
            updateHonorDesc(email, description);
        } else if (module.equals("MYSTORY")) {
            updateStoryDesc(email, description);
        }
    }

    @Override
    public String uploadFile(String email, String fileName, InputStream fileInputStream, MaterialType materialType, MaterialModule module) {
        String url = "";
        switch (materialType) {
            case VIDEO:
                studentProfileService.addVideo(email, fileName, fileInputStream, module);
                break;
            case IMG:
                studentProfileService.addImg(email, fileName, fileInputStream, module);
                break;
            case DOC:
                studentProfileService.addDoc(email, fileName, fileInputStream, module);
                break;
        }
        return url;
    }

    @Override
    public void updateRewardDesc(String email, String rewardDesc) {
        studentProfileService.updateRewardDesc(email, rewardDesc);
    }

    @Override
    public String checkUploadFile(MaterialType type, String fileName, long fileSize) {
        String msg = "";
        if (!checkFileType(type, fileName)) {
            msg = "文件类型错误!";
        }
        if (!checkFileSize(type, fileSize)) {
            msg = "文件太大了!";
        }
        return msg;
    }

    @Override
    public void addExamRecord(String email, ExamType type, String[] scores) {
        Float[] floats = new Float[scores.length];
        for (int i = 0; i < scores.length; i++) {
            if (StringUtils.isBlank(scores[i])) {
                floats[i] = null;
            } else {
                floats[i] = Float.parseFloat(scores[i]);
            }
        }
        studentProfileService.addOrUpdateExamRecord(email, type, floats);
    }

    @Override
    public void addExamRecords(String email, List<ExamRecord> ers) {
        studentProfileService.addOrUpdateExamRecords(email,ers);
    }


    @Override
    public List<RemarkDTO> getRemarkByStudentProfileId(String studentProfileId) {
        List<Remark> remarks = studentProfileService.getRemarkByStudentProfileId(studentProfileId);
        return transRemarkListToDTO(remarks);
    }

    @Override
    public List<Badge> getBadges(StudentProfile sp,List<Activity> ats) {
        return badgesCalcuService.getAccessBadges(sp,ats);
    }

    @Override
    public Integer calcuBadgesCompletionDegree(List<Badge> badges) {
        return badgesCalcuService.calcuCompleteDegree(badges);
    }

    private boolean checkFileType(MaterialType type, String fileName) {
        boolean result = false;

        String extension = FilenameUtils.getExtension(fileName);
        if (StringUtils.isNotBlank(extension)) {
            extension = extension.toLowerCase();
            switch (type) {
                case VIDEO:
                    if (extension.equals("mp4") || extension.equals("mov") || extension.equals("mkv") || extension.equals("flv")) {
                        result = true;
                    }
                    break;
                case IMG:
                    if (extension.equals("jpg") || extension.equals("jpeg") || extension.equals("png")) {
                        result = true;
                    }
                    break;
                case DOC:
                    if (extension.equals("doc") || extension.equals("docx") || extension.equals("pdf")) {
                        result = true;
                    }
                    break;
            }
        }

        return result;
    }

    private boolean checkFileSize(MaterialType type, long fileSize) {
        long maxFileSize = 0;
        switch (type) {
            case VIDEO:
                // 20MB
                maxFileSize = 31457280;
                break;
            case IMG:
                // 3MB
                maxFileSize = 3145728;
                break;
            case DOC:
                // 3MB
                maxFileSize = 3145728;
                break;
        }
        return fileSize <= maxFileSize;
    }

    @Override
    public RemarkDTO addRemark(String fromUser,String toUser,String content){
        StudentProfile from = studentProfileService.findStudentProfileById(new StudentProfileId(fromUser));
        StudentProfile to = studentProfileService.findStudentProfileById(new StudentProfileId(toUser));
        Remark remark = studentProfileService.addRemark(from,to,content);
        RemarkDTO remarkDTO = new RemarkDTO();
        remarkDTO.setTitle(remark.getTitle());
        remarkDTO.setFromPublicUri(remark.getFrom().getPublicUri());
        remarkDTO.setFromAvatar(remark.getFrom().getBiography().getAvatar());
        remarkDTO.setOwnerPublicUri(remark.getOwner().getPublicUri());
        return remarkDTO;
    }

    /**
     * remarkDto转换
     * @param remarkList
     * @return
     */
    @Override
    public List<RemarkDTO> transRemarkListToDTO(List<Remark> remarkList) {
        List<RemarkDTO> remarkDTOs = new ArrayList<RemarkDTO>();
        if(remarkList != null && remarkList.size() > 0){
            for (Remark remark : remarkList){
                RemarkDTO dto = new RemarkDTO();
                dto.setTitle(remark.getTitle());
                dto.setFromPublicUri(remark.getFrom().getPublicUri());
                dto.setFromAvatar(remark.getFrom().getBiography().getAvatar());
                dto.setOwnerPublicUri(remark.getOwner().getPublicUri());
                remarkDTOs.add(dto);
            }
        }
        return remarkDTOs;
    }

}
