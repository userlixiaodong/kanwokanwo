package cv.focus.core.interfaces.material;

import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialModule;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.CommonUtil;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.interfaces.student.dto.MaterialDTO;
import cv.focus.core.interfaces.material.facade.impl.MaterialServiceFacadeImpl;
import cv.focus.core.interfaces.user.dto.UserDTO;
import net.sf.json.JSONObject;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import java.awt.image.BufferedImage;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by song on 16/3/5.
 */

@Controller
@RequestMapping("/material")
public class MaterialController extends BaseController {
    private final Logger logger = Logger.getLogger(MaterialController.class);
    @Resource(name="materialServiceFacadeImpl")
    private MaterialServiceFacadeImpl materialService;

    /**
     * 视频转码完成后回调
     * 返回状态码必须是204
     *
     */
    @RequestMapping("/mtsJobDone")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void videoTranscodeDoneNotify(HttpServletRequest request) {
        // 视频转码完成后需要修改视频状态
        try {
            InputStream inputStream = request.getInputStream();
            String xmlStr = CommonUtil.streamToString(inputStream, "utf-8");
            if (StringUtils.isNotBlank(xmlStr)) {
                Document doc = DocumentHelper.parseText(xmlStr);
                Element rootElement = doc.getRootElement();
                Element msgElement = rootElement.element("Message");

                org.json.JSONObject jsonObj = new org.json.JSONObject(msgElement.getStringValue());
                String jobId = jsonObj.getString("jobId");
                String state = jsonObj.getString("state");
                String type = jsonObj.getString("type");
                if ("Transcode".equals(type)) {
                    if ("Success".equals(state)) {
                        // 转码成功
                        materialService.transCodeJobSuccess(jobId);
                    }
                    if ("Fail".equals(state)) {
                        // 转码失败
                        materialService.transCodeJobFail(jobId);
                    }
                }
            }
        } catch (Exception e) {
            logger.error("ProfileController.videoTranscodeDoneNotify()", e);
        }
    }

    @RequestMapping(value = "/uploadMultiple")
    @ResponseBody
    public Result<List<MaterialDTO>> uploadMultipleFile(
            @RequestParam MaterialType materialType,
            @RequestParam MaterialModule module,
            @RequestParam MultipartFile[] file,
            @RequestParam(required = false) String title,
            @RequestParam(required = false) String activityId,
            HttpServletRequest request) {
        Result<List<MaterialDTO>> result = null;
        try {
            List<MaterialDTO> resultList = new ArrayList<>(file.length);
            for (MultipartFile f : file) {
                String email = getLoginEmail(request);
                if (StringUtils.isBlank(email)) {
                    return newFaildResult(ResultMessages.NO_LOGIN);
                }
                String errMsg = materialService.checkUploadFile(materialType, f.getOriginalFilename(), f.getSize());
                if (StringUtils.isNotBlank(errMsg)) {
                    // 上传文件类型不合法或者上传文件太大
                    return newFaildResult(errMsg);
                }

                Object uploadResult = materialService.putIntoOSS(materialType, f.getOriginalFilename(), f.getInputStream(), false);
                if (uploadResult == null) {
                    return newFaildResult(ResultMessages.UPLOAD_FILE_FAIL);
                }
                Material material = materialService.genMaterial(uploadResult, title, materialType);
                // information 直接返回materialId
                if (module.equals(MaterialModule.INFORMATION)) {
                    if (material.getType() == MaterialType.IMG) {
                        // 获取图片的高和宽
                        BufferedImage image = ImageIO.read(f.getInputStream());
                        material.setImgHeight(image.getHeight());
                        material.setImgWidth(image.getWidth());
                    }
                    materialService.save(material);
                    MaterialDTO materialDTO = new MaterialDTO(material);
                    resultList.add(materialDTO);
                    continue;
                }
                UserDTO userDTO = getLoginUser(request);
                materialService.updateMaterial(email, module, material, activityId, userDTO.getRole());
                if (module == MaterialModule.AVATAR) {
                    //update session
                    userDTO.setAvatarUrl(material.getMaterialSrc());
                    request.getSession().setAttribute("loginUser", userDTO);
                }
                MaterialDTO materialDTO = new MaterialDTO(material);
                //JSONObject materialJson = JSONObject.fromObject(materialDTO);
                resultList.add(materialDTO);
            }
            result = newSuccessResult(ResultMessages.UPLOAD_FILE_SUCCESS, resultList);
        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            logger.error("MaterialController.uploadMultipleFile()", e);
        }
        return result;
    }

    @RequestMapping(value = "/upload")
    @ResponseBody
    public Result<JSONObject> uploadProfileFile(
            @RequestParam MaterialType materialType,
            @RequestParam MaterialModule module,
            @RequestParam MultipartFile file,
            @RequestParam(required = false) String title,
            @RequestParam(required = false) String activityId,
            HttpServletRequest request) {
        //String ossUrl = "";
        Result<JSONObject> result = null;
        try {
            String email = getLoginEmail(request);
            if (StringUtils.isBlank(email)) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            String errMsg = materialService.checkUploadFile(materialType, file.getOriginalFilename(), file.getSize());
            if (StringUtils.isNotBlank(errMsg)) {
                // 上传文件类型不合法或者上传文件太大
                return newFaildResult(errMsg);
            }

            Object uploadResult = materialService.putIntoOSS(materialType, file.getOriginalFilename(), file.getInputStream(),false);
            if (uploadResult == null) {
                return newFaildResult(ResultMessages.UPLOAD_FILE_FAIL);
            }
            Material material = materialService.genMaterial(uploadResult, title, materialType);
            // information 直接返回materialId
            if (module.equals(MaterialModule.INFORMATION)) {
                if (material.getType() == MaterialType.IMG) {
                    // 获取图片的高和宽
                    BufferedImage image = ImageIO.read(file.getInputStream());
                    material.setImgHeight(image.getHeight());
                    material.setImgWidth(image.getWidth());
                }
                materialService.save(material);
                MaterialDTO materialDTO = new MaterialDTO(material);
                JSONObject materialJson = JSONObject.fromObject(materialDTO);
                return newSuccessResult(ResultMessages.OPERATE_SUCCESS, materialJson);
            }
            // profile 继续处理
            UserDTO userDTO = getLoginUser(request);
            materialService.updateMaterial(email, module, material, activityId, userDTO.getRole());
            if(module == MaterialModule.AVATAR){
                //update session
                userDTO.setAvatarUrl(material.getMaterialSrc());
                request.getSession().setAttribute("loginUser", userDTO);
            }
            MaterialDTO materialDTO = new MaterialDTO(material);
            JSONObject materialJson = JSONObject.fromObject(materialDTO);
            result = newSuccessResult(ResultMessages.UPLOAD_FILE_SUCCESS, materialJson);
        } catch (Exception e) {
            logger.error("ProfileController.uploadFile()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }

    @RequestMapping(value = "/delete")
    @ResponseBody
    public Result<String> deleteMaterial(
            @RequestParam MaterialModule module,
            @RequestParam int seq,
            @RequestParam(required = false) String activityId,
            HttpServletRequest request) {
        //String ossUrl = "";
        Result<String> result = null;
        try {
            String email = getLoginEmail(request);
            UserDTO userDTO = getLoginUser(request);
            if (StringUtils.isBlank(email)) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }

            materialService.deleteMaterialBySeq(email, module, seq, activityId, userDTO.getRole());
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch (Exception e) {
            result = newFaildResult(ResultMessages.OPERATE_FAIL);
            logger.error("MaterialController.deleteMaterial()", e);
        }
        return result;
    }

    @RequestMapping(value = "/location")
    @ResponseBody
    public Result changeLocation(
            @RequestParam MaterialModule module,
            @RequestParam int beg,
            @RequestParam int end,
            @RequestParam(required = false) String activityId,
            HttpServletRequest request) {
        //String ossUrl = "";
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            materialService.changeMaterialLocation(userDTO.getEmail(), module, beg, end, activityId, userDTO.getRole());
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
        } catch (Exception e) {
            logger.error("MaterialController.changeLocation()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }
    @RequestMapping(value = "/updateMaterialTitle")
    @ResponseBody
    public Result updateMaterialTitle(
            @RequestParam(required = false) String title,
            @RequestParam Integer index,
            @RequestParam MaterialModule module,
            @RequestParam(required = false) String activityId,
            HttpServletRequest request){
        Result<String> result = null;
        try {
            UserDTO userDTO = getLoginUser(request);
            if (userDTO == null) {
                return newFaildResult(ResultMessages.NO_LOGIN);
            }
            materialService.updateMaterialTitle(userDTO.getEmail(), title, index, module, activityId, userDTO.getRole());
            result = newSuccessResult(ResultMessages.UPDATE_DESC_SUCCESS, title);
        } catch (Exception e) {
            logger.error("MaterialController.updateMaterialTitle()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }
}
