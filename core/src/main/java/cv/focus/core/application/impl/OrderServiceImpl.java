package cv.focus.core.application.impl;

import cv.focus.core.application.OrderService;
import cv.focus.core.domain.order.Order;
import cv.focus.core.domain.order.OrderRepository;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/4/24.
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderRepository orderRepositoryHibernateImpl;
    @Override
    public Order createOrder(Order order) {
        try{
            orderRepositoryHibernateImpl.store(order);
            return order;
        }catch (Exception ignored) { }
        return null;
    }

    @Override
    public Order findOrderByOrderNo(String orderNo) {
            Order order = orderRepositoryHibernateImpl.findOrderByOrderNo(orderNo);
            return order;

    }

    @Override
    public List findOrderByUserId(Integer userId) {
        List list = orderRepositoryHibernateImpl.findOrderByUserId(userId);
        return list;

    }
}
