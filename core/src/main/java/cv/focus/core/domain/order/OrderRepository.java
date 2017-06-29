package cv.focus.core.domain.order;


import java.util.List;

/**
 * Created by Administrator on 2017/4/24.
 */
public interface OrderRepository {

    void store(Order order);

    Order findOrderByOrderNo(String orderNo);

    List<Order> findOrderByUserId(Integer userId);

}
