package cv.focus.core.infrastructure.permissionAspact;

import cv.focus.core.domain.student.model.activity.ActivityRepository;
import cv.focus.core.infrastructure.util.PermissionDeniedException;
import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2016/3/1.
 */
@Component
@Aspect
public class LoginAspect {
    private final Logger logger = Logger.getLogger(LoginAspect.class);
    @Resource
    ActivityRepository activityRepository;

    //配置切入点,该方法无方法体,主要为方便同类中其他方法使用此处配置的切入点
    @Pointcut("execution(* cv.focus.core.interfaces..*Controller.add*(..))")
    public void add() {
    }

    @Pointcut("execution(* cv.focus.core.interfaces..*Controller.update*(..))")
    public void update() {
    }

    @Pointcut("execution(* cv.focus.core.interfaces..*Controller.modify*(..))")
    public void modify() {
    }

    @Pointcut("execution(* cv.focus.core.interfaces..*Controller.change*(..))")
    public void change() {
    }

    @Pointcut("execution(* cv.focus.core.interfaces..*Controller.upload*(..))")
    public void upload() {
    }

    @Pointcut("execution(* cv.focus.core.interfaces..*Controller.delete*(..))")
    public void delete() {
    }


    /*
     * 方法运行前切入
	 * JoinPoint 获取切点方法参数 方法名称。。。。
	 */
    @Before("add() || update() || modify() || change() || upload() || delete()")
    public void before(JoinPoint joinPoint) throws PermissionDeniedException {
        Object obj[] = joinPoint.getArgs();//方法参数
        HttpServletRequest request = null;
        for (Object o : obj) {
            if (o instanceof HttpServletRequest) {
                request = (HttpServletRequest) o;
            }
        }
        if (!isLogin(request)) {
            throw new PermissionDeniedException("未登陆");
        }
    }

    @AfterThrowing(pointcut = "add() || update() || modify() || change() || upload()|| delete()", throwing = "e")
    public void handleException(JoinPoint jp, Exception e) {
        if (e != null) {
            logger.error("LoginAspect", e);
        }
    }


    private boolean isLogin(HttpServletRequest request) {
        if (request.getSession().getAttribute("loginUser") != null) {
            return true;
        } else {
            return false;
        }
    }

}