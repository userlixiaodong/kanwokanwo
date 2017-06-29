package cv.focus.core.infrastructure.chat;

import org.springframework.data.redis.connection.Message;
import org.springframework.data.redis.connection.MessageListener;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import javax.annotation.Resource;

/**
 * UserNewMsgDelegate
 * 
 * @author liuruichao
 * Created on 2016-04-27 16:05
 */
public class UserNewMsgDelegate implements MessageListener {
    @Resource
    private JdkSerializationRedisSerializer jdkSerializationRedisSerializer;

    @Override
    public void onMessage(Message message, byte[] pattern) {
        String key = (String) jdkSerializationRedisSerializer.deserialize(message.getBody());
        ChatLockManager.notifyNewMsg(key);
    }
}
