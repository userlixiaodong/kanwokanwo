package cv.focus.core.infrastructure.chat;

import java.util.Date;
import java.util.List;
import java.util.Vector;

/**
 * 长轮询超时通知任务
 * 
 * @author liuruichao
 * Created on 2016-04-26 11:13
 */
public class MsgTimeoutNotifyTask implements Runnable {
    private List<ChatPullRequest> chatRequestList;

    private long requestTimeOut = 30 * 1000; // 毫秒

    public MsgTimeoutNotifyTask() {
        chatRequestList = new Vector<>();
    }

    @Override
    public void run() {
        while (true) {
            try {
                Thread.sleep(3000);
                if (chatRequestList.size() > 0) {
                    ChatPullRequest chatRequest = chatRequestList.get(0);
                    Date curDate = new Date();
                    if ((curDate.getTime() - chatRequest.getTime()) > requestTimeOut) {
                        ChatLockManager.notifyNewMsg(chatRequest.getSenderId(), chatRequest.getReciverId());
                        chatRequestList.remove(0);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void addChatRequest(ChatPullRequest chatRequest) {
        chatRequestList.add(chatRequest);
    }

    public void removeChatRequest(ChatPullRequest chatRequest) {
        chatRequestList.remove(chatRequest);
    }
}
