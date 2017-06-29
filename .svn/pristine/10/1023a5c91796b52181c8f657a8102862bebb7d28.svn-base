package cv.focus.core.interfaces.material.facade.impl;

import cv.focus.common.infrastructure.services.StorageService;
import cv.focus.common.infrastructure.services.impl.VideoTransCodeDTO;
import cv.focus.core.application.ActivityService;
import cv.focus.core.application.AdmissionActivityService;
import cv.focus.core.application.AdmissionProfileService;
import cv.focus.core.application.MaterialService;
import cv.focus.core.application.StudentProfileService;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialFactory;
import cv.focus.core.domain.material.MaterialModule;
import cv.focus.core.domain.material.MaterialStatus;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.domain.school.model.activity.AdmissionActivityId;
import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.user.model.Role;
import cv.focus.core.interfaces.material.facade.MaterialServiceFacade;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by song on 16/3/5.
 */
@Service
public class MaterialServiceFacadeImpl implements MaterialServiceFacade {
    private final Logger logger = Logger.getLogger(MaterialServiceFacadeImpl.class);
    @Resource(name="aliyunOSSStorageService")
    private StorageService storageService;
    @Resource
    private StudentProfileService studentProfileService;
    @Resource
    private ActivityService activityService;
    @Resource
    private AdmissionProfileService admissionProfileService;
    @Resource
    private AdmissionActivityService admissionActivityService;
    @Resource
    private MaterialService materialService;

    public String checkUploadFile(MaterialType type, String fileName, long fileSize) {
        String msg = "";
        if (!checkFileType(type, fileName)) {
            msg = "file type error!";
        }
        if (!checkFileSize(type, fileSize)) {
            msg = "file too large!";
        }
        return msg;
    }

    public boolean checkFileType(MaterialType type, String fileName) {
        boolean result = false;

        String extension = FilenameUtils.getExtension(fileName);
        if (StringUtils.isNotBlank(extension)) {
            extension = extension.toLowerCase();
            switch (type) {
                case VIDEO:
                    if (extension.equals("mp4") || extension.equals("mov") || extension.equals("mkv") || extension.equals("flv") || extension.equals("3gp")
                            || extension.equals("wmv")|| extension.equals("asf")|| extension.equals("webm")|| extension.equals("mpg") || extension.equals("avi")) {
                        result = true;
                    }
                    break;
                case IMG:
                    if (extension.equals("jpg") || extension.equals("jpeg") || extension.equals("png") || extension.equals("gif")) {
                        result = true;
                    }
                    break;
                case DOC:
                    if (extension.equals("doc") || extension.equals("docx") || extension.equals("pdf")|| extension.equals("txt")) {
                        result = true;
                    }
                    break;
            }
        }

        return result;
    }

    public boolean checkFileSize(MaterialType type, long fileSize) {
        long maxFileSize = 0;
        switch (type) {
            case VIDEO:
                // 500MB
                maxFileSize = 514572800;
                break;
            case IMG:
                // 10MB
                maxFileSize = 10485760;
                break;
            case DOC:
                // 20MB
                maxFileSize = 20971520;
                break;
        }
        return fileSize <= maxFileSize;
    }

    public Object putIntoOSS(MaterialType materialType, String fileName, InputStream inputStream, boolean isPrivacy) {
        Object uploadResult = null;
        try {

            switch (materialType) {
                case VIDEO:
                    uploadResult = storageService.putVideo(fileName, inputStream, isPrivacy);
                    break;
                case IMG:
                    uploadResult = storageService.putImage(fileName, inputStream, isPrivacy);
                    break;
                case DOC:
                    uploadResult = storageService.putFile(fileName, inputStream, isPrivacy);
                    break;
            }
        } catch (IOException exception) {
            logger.error(exception.getMessage());
            uploadResult = null;
        }
        return uploadResult;
    }

    public void updateMaterial(String email, MaterialModule module, Material material, String activityId, Role role) {
        if (role == Role.STUDENT) {
            if (module.equals(MaterialModule.ACTIVITY)) {
                ActivityId activityId1 = new ActivityId(activityId);
                activityService.addActivityMaterial(activityId1, material);
            } else {
                studentProfileService.addProfileMaterial(email, module, material);
            }
        } else {
            // 招生官
            if (module.equals(MaterialModule.ACTIVITY)) {
                admissionActivityService.addActivityMaterial(activityId, material);
            } else {
                admissionProfileService.addProfileMaterial(email, module, material);
            }
        }
    }

    public Material genMaterial(Object uploadResult, String title, MaterialType materialType) {
        Material material;
        if (uploadResult instanceof VideoTransCodeDTO) {
            VideoTransCodeDTO videoTransCodeDTO = (VideoTransCodeDTO) uploadResult;
            material = MaterialFactory.createMaterial(videoTransCodeDTO.getUrl(),
                    videoTransCodeDTO.getPreviewImgUrl(), MaterialStatus.TRANSCODE, materialType, videoTransCodeDTO.getTransCodeJobId());
        } else {
            material = MaterialFactory.createMaterial(title, (String) uploadResult, "", MaterialStatus.NORMAL, materialType, "");
        }

        return material;
    }

    public void changeMaterialLocation(String email, MaterialModule module, int beg, int end, String activityId, Role role) {
        if (role == Role.STUDENT) {
            if (StringUtils.isBlank(activityId)) {
                studentProfileService.changeMaterialLocation(email, module, beg, end);
            } else {
                activityService.changeMaterialLocation(new ActivityId(activityId), beg, end);
            }
        } else {
            //  招生官
            if (StringUtils.isBlank(activityId)) {
                admissionProfileService.changeMaterialLocation(email, module, beg, end);
            } else {
                admissionActivityService.changeMaterialLocation(new AdmissionActivityId(activityId), beg, end);
            }
        }
    }

    public void deleteMaterialBySeq(String email, MaterialModule module, int seq, String activityId, Role role) {
        if (role == Role.STUDENT) {
            if (StringUtils.isBlank(activityId)) {
                studentProfileService.deleteMaterial(email, module, seq);
            } else {
                activityService.deleteMaterial(new ActivityId(activityId), seq);
            }
        } else {
            // 招生官
            if (StringUtils.isBlank(activityId)) {
                admissionProfileService.deleteMaterial(email, module, seq);
            } else {
                admissionActivityService.delMaterial(new AdmissionActivityId(activityId), seq);
            }
        }
    }

    public void updateMaterialTitle(String email, String title, Integer index, MaterialModule module, String activityId, Role role) {
        if (role == Role.STUDENT) {
            if (StringUtils.isBlank(activityId)) {
                studentProfileService.updateMaterialTitle(email, title, index, module);
            } else {
                activityService.updateMaterialTitle(title, index, new ActivityId(activityId));
            }
        } else {
            // 招生官
            if (StringUtils.isBlank(activityId)) {
                admissionProfileService.updateMaterialTitle(email, title, index, module);
            } else {
                admissionActivityService.updateMaterialTitle(title, index, new AdmissionActivityId(activityId));
            }
        }
    }

    public void save(Material material) {
        materialService.save(material);
    }

    public void transCodeJobSuccess(String jobId) {
        materialService.updateStatus(jobId, MaterialStatus.NORMAL);
    }

    public void transCodeJobFail(String jobId) {
        materialService.updateStatus(jobId, MaterialStatus.TRANSCODE_FAIL);
    }
}
