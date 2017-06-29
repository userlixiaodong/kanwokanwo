package cv.focus.core.interfaces.user.web;


import cv.focus.core.application.UserItemService;
import cv.focus.core.domain.activity.ConsultationEntity;
import cv.focus.core.domain.activity.UserItemEntity;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialModule;
import cv.focus.core.domain.material.MaterialType;
import cv.focus.core.domain.user.model.User;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.interfaces.material.facade.impl.MaterialServiceFacadeImpl;
import cv.focus.core.interfaces.student.dto.MaterialDTO;
import cv.focus.core.interfaces.user.dto.UserDTO;
import net.sf.json.JSONObject;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.cglib.core.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;

/**
 * Created by Administrator on 2017/3/29.
 */
@Controller
@RequestMapping("/userItem")
public class UserItemController extends BaseController {
    private final Logger logger = Logger.getLogger(UserItemController.class);

    @Resource(name="materialServiceFacadeImpl")
    private MaterialServiceFacadeImpl materialService;

    @Resource
    private UserItemService userItemService;

    @RequestMapping("/index")
    public String toIndex(){
        return "back/index";
    }

    @RequestMapping("/apply")
    public String toapplyList()  {
        return "specialization/cisformlist";
    }

    @RequestMapping("/applyKeru")
    public String toapplyList1()  {
        return "specialization/keruformlist";
    }

    @RequestMapping("/applyITO")
    public String toapplyListITO()  {
        return "specialization/itoformlist";
    }

    @RequestMapping("/applysa")
    public String toapplyList3()  {
        return "specialization/saformlist";
    }

    @RequestMapping("/applymanteng")
    public String toapplyList2()  {
        return "specialization/mantengformlist";
    }

    @RequestMapping("/applyAsr")
    public String toapplyListAsr()  {
        return "specialization/asrformlist";
    }

    @RequestMapping("/applyCCTV")
    public String toapplyListCCTV()  {
        return "specialization/cctvformlist";
    }

    @RequestMapping("/applyAfrica")
    public String toapplyListAfrica()  {
        return "specialization/africaformlist";
    }
    @RequestMapping("/applyMfe")
    public String toapplyListMfe()  {
        return "specialization/mfeformlist";
    }

    @RequestMapping("/applyPacific")
    public String toapplyPacific()  {
        return "specialization/pacificformlist";
    }

    @RequestMapping("/applyinr")
    public String toapplyintr()  {
        return "specialization/staticlistformlist";
    }

    @RequestMapping("/consultation")
    @ResponseBody
    public String consultation(HttpServletRequest request){
        try {
            String phone = request.getParameter("phone");
            String problem = request.getParameter("problem");
            userItemService.storeConsultation(phone,problem);
        }catch (Exception e){
            logger.error("UserItemController.consultation()", e);
        }
        return "1";
    }

    @RequestMapping(value = "/upload")
    public void shangchuan(@RequestParam MultipartFile file,HttpServletRequest request,@RequestParam String userName,
                           @RequestParam String moblie,
                           @RequestParam String email,
                           @RequestParam String itemId) {
        Result<JSONObject> result = null;
        UserDTO loginUser = getLoginUser(request);
        //测试数据
        Integer userId  = loginUser.getUserId();
        try {
            String errMsg = materialService.checkUploadFile(MaterialType.DOC, file.getOriginalFilename(), file.getSize());
            if (StringUtils.isNotBlank(errMsg)) {
                // 上传文件类型不合法或者上传文件太大
                /*return newFaildResult(errMsg);*/
            }

            Object uploadResult = materialService.putIntoOSS(MaterialType.DOC, file.getOriginalFilename(), file.getInputStream(),false);
            if (uploadResult != null) {
                /*return newFaildResult(ResultMessages.UPLOAD_FILE_FAIL);*/
              // materialService.updateFileUrl(uploadResult,);
                String fileURL = uploadResult.toString();
                UserItemEntity userItemEntity=new UserItemEntity();
                userItemEntity= userItemService.findUserItemByItemIdAndUserId(userId,itemId);
                if(userItemEntity==null){
                    userItemService.createUserItem(userName,moblie,email,userId,itemId,fileURL);
                }else {
                    //更新
                    Integer id = userItemEntity.getId();
                    UserItemEntity userItem= userItemService.findUserItemById(id);
                    userItem.setMoblie(moblie);
                    userItem.setUserName(userName);
                    userItem.setEmail(email);
                    userItem.setFileUrl(fileURL);
                    userItemService.updateUserItem(userItem);
                }

            }
            //result = newSuccessResult(ResultMessages.UPLOAD_FILE_SUCCESS, materialJson);
        } catch (Exception e) {
            logger.error("ProfileController.uploadFile()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        /*return result;*/
    }

    @RequestMapping("/download")
    public String download(String fileName, HttpServletRequest request,
                           HttpServletResponse response) {
        response.setCharacterEncoding("utf-8");
        response.setContentType("multipart/form-data");
        response.setHeader("Content-Disposition", "attachment;fileName="
                + fileName);

        try {
            String path = request.getSession().getServletContext().getRealPath
                    ("image") + File.separator;
            InputStream inputStream = new FileInputStream(new File(path
                    + fileName));

            OutputStream os = response.getOutputStream();
            byte[] b = new byte[2048];
            int length;
            while ((length = inputStream.read(b)) > 0) {
                os.write(b, 0, length);
            }

            // 这里主要关闭。
            os.close();

            inputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }


    @RequestMapping("/checkMobileAvail")
    @ResponseBody
    public Result<String> checkMobileAvail(@RequestParam String userName,
                                           @RequestParam String moblie,
                                           @RequestParam String email,
                                           @RequestParam String itemId,
                                           HttpServletRequest request) {
        Result<String> result = null;
        try {
            if (StringUtils.isBlank(moblie)) {
                return newFaildResult(ResultMessages.PARAM_ERROR);
            }
            UserItemEntity userItemEntity = userItemService.findUserItemByMoblie(moblie,itemId);
            if (userItemEntity == null) {
                result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, null);
                UserDTO loginUser = getLoginUser(request);
                //测试数据
                Integer userId  = loginUser.getUserId();
                //userItemEntity = userItemService.createUserItem(userName,moblie,email,userId,itemId);
            } else {
                result = newFaildResult(ResultMessages.MOBILE_EXISTS);
            }
        } catch (Exception e) {
            logger.error("UserItemController.checkMobileAvail()", e);
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
        }
        return result;
    }
}
