package cv.focus.core.interfaces;

import org.junit.Test;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * Created by 晓东 on 2017/5/26.
 */
public class Test2 {


    @Test
    public void testJedis() {
        //创建一个Jedis的连接
        Jedis jedis = new Jedis("121.40.85.195", 6379);
        //执行redis命令
        jedis.set("mytest", "hello world, this is jedis client!");
        //从redis中取值
        String result = jedis.get("mytest");
        //打印结果
        System.out.println(result);
        //关闭连接
        jedis.close();

    }
}
