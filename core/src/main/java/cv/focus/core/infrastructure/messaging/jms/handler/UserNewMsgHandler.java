package cv.focus.core.infrastructure.messaging.jms.handler;

import akka.actor.UntypedActor;
import cv.focus.core.infrastructure.chat.UserNewMsg;
import cv.focus.core.infrastructure.chat.ChatLockManager;
import org.apache.log4j.Logger;

/**
 * UserNewMsgHandler
 * 
 * @author liuruichao
 * Created on 2016-04-25 17:27
 */
public class UserNewMsgHandler extends UntypedActor {
    private final Logger logger = Logger.getLogger(UserNewMsgHandler.class);

    @Override
    public void onReceive(Object msg) throws Exception {
        // 用户收到新消息
        if (msg instanceof UserNewMsg) {
            UserNewMsg newMsg = (UserNewMsg) msg;
            ChatLockManager.notifyNewMsg(newMsg.getSenderId(), newMsg.getReciverId());
        }
    }
}
