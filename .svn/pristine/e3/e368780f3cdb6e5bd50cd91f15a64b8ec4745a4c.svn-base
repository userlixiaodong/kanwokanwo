package cv.focus.core.infrastructure.chat;

import java.util.HashMap;
import java.util.Map;

/**
 * ChatManager
 *
 * @author liuruichao
 * Created on 2016-04-18 16:00
 */
public class ChatLockManager {
    private static final Map<String, ChatPullRequest> lockMap = new HashMap<>();
    private static final MsgTimeoutNotifyTask msgTimeoutNotifyTask =  new MsgTimeoutNotifyTask();
    private static final Object notifyLock = new Object();
    private static final Object addNewMsgLock = new Object();

    static {
        new Thread(msgTimeoutNotifyTask).start();
    }

    public static void notifyNewMsg(Integer senderId, Integer reciverId) {
        String key = senderId + "_" + reciverId;
        notifyNewMsg(key);
    }

    public static ChatPullRequest addWaitNewMsg(final ChatPullRequest chatRequest) {
        String key = chatRequest.getSenderId() + "_" + chatRequest.getReciverId();
        ChatPullRequest mapChatRequest = null;
        synchronized (addNewMsgLock) {
            mapChatRequest = lockMap.get(key);
            if (mapChatRequest != null && mapChatRequest.getTime() < chatRequest.getTime()) {
                lockMap.put(key, chatRequest);
                mapChatRequest = chatRequest;
                msgTimeoutNotifyTask.removeChatRequest(mapChatRequest);
            } else if (mapChatRequest == null) {
                lockMap.put(key, chatRequest);
                mapChatRequest = chatRequest;
                msgTimeoutNotifyTask.addChatRequest(chatRequest);
            }
        }
        return mapChatRequest;
    }

    public static void notifyNewMsg(final String key) {
        synchronized (notifyLock) {
            if (lockMap.containsKey(key)) {
                ChatPullRequest chatPullRequest = lockMap.get(key);
                synchronized (chatPullRequest) {
                    chatPullRequest.notifyAll();
                }
                lockMap.remove(key);
            }
        }
    }
}