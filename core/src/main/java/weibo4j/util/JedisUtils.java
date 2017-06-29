package weibo4j.util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

/**
 * Created by 晓东 on 2017/6/1.
 */
public class JedisUtils {
    //定义连接池配置对象
    private static  final JedisPoolConfig config;
    //定义连接池对象
    private static final JedisPool pool;
    static {
        //创建连接池配置对象
        config=new JedisPoolConfig();
        //最大连接数
        config.setMaxTotal(30);
        //最大空闲连接数
        config.setMaxIdle(2);

        //创建连接池对象：
        pool=new JedisPool(config,"121.40.85.195",6379);
    }
    //提供一个获得jedis的方法
    public static Jedis getJedis(){

        return pool.getResource();
    }
    //提供关闭Jedis的方法
    public static void closeJedis(Jedis jedis){
        if (jedis !=null) {
            jedis.close();
        }
    }
}
