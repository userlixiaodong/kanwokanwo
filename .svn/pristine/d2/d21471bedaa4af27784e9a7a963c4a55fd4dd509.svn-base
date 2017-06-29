package cv.focus.core.interfaces.student.web;

import cv.focus.core.application.OrderService;
import cv.focus.core.application.SpecializationService;
import cv.focus.core.domain.activity.ApplyActivity;
import cv.focus.core.domain.activity.ItemEntity;
import cv.focus.core.domain.activity.SavedEntity;
import cv.focus.core.domain.order.Order;
import cv.focus.core.infrastructure.util.BaseController;
import cv.focus.core.infrastructure.util.Result;
import cv.focus.core.infrastructure.util.ResultMessages;
import cv.focus.core.interfaces.user.dto.UserDTO;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by 晓东 on 2017/5/3.
 */
@Controller
@RequestMapping("/order")
public class OrderController extends BaseController {

    private final Logger logger = Logger.getLogger(OrderController.class);
    @Resource
    private SpecializationService specializationService;
    @Resource
    private OrderService orderService;

    @RequestMapping("/enroll/{itemId}")
    public String enroll(@PathVariable Integer itemId, HttpServletRequest request){

        try {
            UserDTO loginUser = getLoginUser(request);
            Integer userId  = loginUser.getUserId();

            ApplyActivity applyActivity=specializationService.findApplyActivityByUserId(userId);
            ItemEntity item=specializationService.findItemById(itemId);

            request.setAttribute("applyActivity",applyActivity);
            request.setAttribute("item",item);

        }catch (Exception e){
            logger.error("OrderController.enroll()", e);
        }
        return "specialization/orderdetails";
    }

    @RequestMapping("/cancelOrder")
    @ResponseBody
    public Result<Order> cancelOrder(
            @RequestParam String orderNo,
            HttpServletRequest request) {
        Result<Order> result = null;
        try {

            UserDTO userDTO = getLoginUser(request);
            Integer userId = userDTO.getUserId();

            Order order = orderService.findOrderByOrderNo(orderNo);
            //标记位变成取消3

            order.setFlag("3");
            orderService.createOrder(order);
            result = newSuccessResult(ResultMessages.OPERATE_SUCCESS, order);
        } catch (Exception e) {
            result = newFaildResult(ResultMessages.SYSTEM_ERROR);
            logger.error("OrderController.cancelOrder()", e);
        }
        return result;
    }
}
