//package cv.focus.core.application.impl;
//
//import cv.focus.core.domain.student.model.activity.Activity;
//import cv.focus.core.domain.student.model.activity.ActivityId;
//import cv.focus.core.domain.student.model.activity.ActivityRepository;
//import cv.focus.core.domain.material.Material;
//import cv.focus.core.domain.material.MaterialId;
//import cv.focus.core.domain.student.model.profile.StudentProfileId;
//import cv.focus.core.infrastructure.util.PermissionDeniedException;
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Before;
//import org.aspectj.lang.annotation.Pointcut;
//import org.springframework.stereotype.Component;
//
//import javax.annotation.Resource;
//import java.util.List;
//
///**
// * Created by Administrator on 2016/3/1.
// */
//@Component
//@Aspect
//public class AccessAspect {
//    @Resource
//    ActivityRepository activityRepository;
//
//    //配置切入点,该方法无方法体,主要为方便同类中其他方法使用此处配置的切入点
//    @Pointcut("execution(* cv.focus.core.application.impl.ActivityServiceImpl.*(..))")
//    public void iWant() {
//    }
//
//    @Pointcut("execution(* cv.focus.core.application.impl.ActivityServiceImpl.find*(..))")
//    public void iDontWant() {
//    }
//
//    /*
//     * 配置前置通知,使用在方法Pointcut上注册的切入点
//	 * JoinPoint 获取切点方法参数 方法名称。。。。
//	 */
//    @Before("iWant() && !iDontWant()")
//    public void before(JoinPoint joinPoint) throws PermissionDeniedException {
//        Object obj[] = joinPoint.getArgs();//方法参数
//        StudentProfileId studentProfileId = null;
//        ActivityId activityId = null;
//        MaterialId materialId = null;
//        for (Object o : obj) {
//            if (o instanceof StudentProfileId) {
//                studentProfileId = (StudentProfileId) o;
//            } else if (o instanceof ActivityId) {
//                activityId = (ActivityId) o;
//            } else if (o instanceof MaterialId) {
//                materialId = (MaterialId) o;
//            }
//        }
//        if (materialId != null) {
//            if (!hasPermission(studentProfileId, activityId, materialId)) {
//                throw new PermissionDeniedException("您没有权限");
//            }
//        } else if (activityId != null) {
//            if (!hasPermission(studentProfileId, activityId)) {
//                throw new PermissionDeniedException("您没有权限");
//            }
//        }
//
//    }
//
//    public boolean hasPermission(StudentProfileId studentProfileId, ActivityId activityId) {
//        Activity activity = activityRepository.findByStudentProfileIdAndActivityId(studentProfileId, activityId);
//        if (activity != null) {
//            return true;
//        }
//        return false;
//    }
//
//    public boolean hasPermission(StudentProfileId studentProfileId, ActivityId activityId, MaterialId materialId) {
//        Activity activity = activityRepository.findByStudentProfileIdAndActivityId(studentProfileId, activityId);
//        if (activity != null) {
//            List<Material> list = activity.getMaterials();
//            if (list != null && list.size() > 0) {
//                for (Material material : list) {
//                    if (material.getMaterialId().equals(materialId)) {
//                        return true;
//                    }
//                }
//            }
//        }
//        return false;
//    }
//}
