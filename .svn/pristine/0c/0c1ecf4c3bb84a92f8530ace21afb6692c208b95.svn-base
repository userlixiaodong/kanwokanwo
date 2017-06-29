package cv.focus.core.infrastructure.permissionAspact;

import cv.focus.core.domain.school.model.activity.AdmissionActivity;
import cv.focus.core.domain.school.model.activity.AdmissionActivityId;
import cv.focus.core.domain.school.model.activity.AdmissionActivityRepository;
import cv.focus.core.domain.school.model.profile.AdmissionProfileId;
import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.activity.ActivityId;
import cv.focus.core.domain.student.model.activity.ActivityRepository;
import cv.focus.core.domain.student.model.profile.StudentProfileId;
import cv.focus.core.infrastructure.util.CommonUtil;
import cv.focus.core.infrastructure.util.MultiReadHttpServletRequest;
import cv.focus.core.infrastructure.util.PermissionDeniedException;
import cv.focus.core.interfaces.user.dto.UserDTO;
import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/3/1.
 */
@Component
@Aspect
public class ActivityAspect {
    private final Logger logger = Logger.getLogger(ActivityAspect.class);
    @Resource
    ActivityRepository activityRepository;
    @Resource
    AdmissionActivityRepository admissionActivityRepository;

    //配置切入点,该方法无方法体,主要为方便同类中其他方法使用此处配置的切入点
    @Pointcut("execution(* cv.focus.core.interfaces..*ActivityController.modify*(..))")
    public void modify() {
    }

    @Pointcut("execution(* cv.focus.core.interfaces..*ActivityController.change*(..))")
    public void change() {
    }

    @Pointcut("execution(* cv.focus.core.interfaces..*ActivityController.delete*(..))")
    public void delete() {
    }

    @Pointcut("execution(* cv.focus.core.interfaces.material.MaterialController.*(..))")
    public void material() {
    }


    @Around("modify()")
    public void around(ProceedingJoinPoint joinPoint) throws Throwable {

        Object[] obj = joinPoint.getArgs();//方法参数
        HttpServletRequest request = null;
        for (Object o : obj) {
            if (o instanceof HttpServletRequest) {
                request = (HttpServletRequest) o;
            }
        }
        String studentProfileId = getStudentProfileId(request);
        String admissionProfileId = getAdmissionProfileId(request);
        // modify 参数都在request inputstream中
        //request inputstream只能读取一次，指针会指向最后一位，无法复位，需重新封装使其能多次读取
        MultiReadHttpServletRequest multiReadRequest = new MultiReadHttpServletRequest(request);
        String activityId = getActivityIdFromStream(multiReadRequest);
        if (studentProfileId != null && activityId != null && !hasPermission(new StudentProfileId(studentProfileId), new ActivityId(activityId))) {
            throw new PermissionDeniedException("您没有权限");
        }
        if (admissionProfileId != null && activityId != null && !hasPermission(new AdmissionProfileId(admissionProfileId), new AdmissionActivityId(activityId))) {
            throw new PermissionDeniedException("您没有权限");
        }
        joinPoint.proceed(new Object[]{multiReadRequest});
    }

    @Before("change() || delete()")
    public void before(JoinPoint joinPoint) throws Throwable {
        Object[] obj = joinPoint.getArgs();
        HttpServletRequest request = (HttpServletRequest) obj[obj.length - 1];
        String studentProfileId = getStudentProfileId(request);
        String admissionProfileId = getAdmissionProfileId(request);
        String activityId = (String) obj[0];
        if (studentProfileId != null && activityId != null && !hasPermission(new StudentProfileId(studentProfileId), new ActivityId(activityId))) {
            throw new PermissionDeniedException("您没有权限");
        }
        if (admissionProfileId != null && activityId != null && !hasPermission(new AdmissionProfileId(admissionProfileId), new AdmissionActivityId(activityId))) {
            throw new PermissionDeniedException("您没有权限");
        }
    }

    @Before("material() && !execution(* cv.focus.core.interfaces.material.MaterialController.videoTranscodeDoneNotify(..))")
    public void materialbefore(JoinPoint joinPoint) throws Throwable {
        Object[] obj = joinPoint.getArgs();
        HttpServletRequest request = (HttpServletRequest) obj[obj.length - 1];
        String studentProfileId = getStudentProfileId(request);
        String admissionProfileId = getAdmissionProfileId(request);
        String activityId = (String) obj[obj.length - 2];
        if (studentProfileId != null && activityId != null && !activityId.equals("undefined")) {
            if (!hasPermission(new StudentProfileId(studentProfileId), new ActivityId(activityId))) {
                throw new PermissionDeniedException("您没有权限");
            }
        }

        if (admissionProfileId != null && activityId != null && !activityId.equals("undefined")) {
            if (!hasPermission(new AdmissionProfileId(admissionProfileId), new AdmissionActivityId(activityId))) {
                throw new PermissionDeniedException("您没有权限");
            }
        }

    }

    @AfterThrowing(pointcut = "modify() || change() || delete() || material()", throwing = "e")
    public void handleException(JoinPoint jp, Exception e) {
        if (e != null) {
            logger.error("ActivityAspect", e);
        }
    }

    public boolean hasPermission(StudentProfileId studentProfileId, ActivityId activityId) {
        Activity activity = activityRepository.findByStudentProfileIdAndActivityId(studentProfileId, activityId);
        if (activity != null) {
            return true;
        }
        return false;
    }

    public boolean hasPermission(AdmissionProfileId admissionProfileId, AdmissionActivityId admissionActivityId) {
        AdmissionActivity activity = admissionActivityRepository.findByAdmissionProfileIdAndActivityId(admissionProfileId, admissionActivityId);
        if (activity != null) {
            return true;
        }
        return false;
    }

    private String getStudentProfileId(HttpServletRequest request) {
        UserDTO userDto = (UserDTO) request.getSession().getAttribute("loginUser");
        if (userDto != null) {
            String studentProfileId = userDto.getStudentProfileId();
            return studentProfileId;
        } else {
            return null;
        }
    }

    private String getAdmissionProfileId(HttpServletRequest request) {
        UserDTO userDto = (UserDTO) request.getSession().getAttribute("loginUser");
        if (userDto != null) {
            String admissionProfileId = userDto.getAdmissionProfileId();
            return admissionProfileId;
        } else {
            return null;
        }
    }

    private String getActivityIdFromStream(MultiReadHttpServletRequest request) {
        String activityId = null;
        try {
            String params = CommonUtil.streamToString(request.getInputStream(), "utf-8");
            JSONObject paramsObj = new JSONObject(params);
            activityId = (String) paramsObj.get("activityId");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return activityId;
    }

}
