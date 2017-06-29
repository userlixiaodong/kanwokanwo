package cv.focus.core.infrastructure.chat;

/**
 * ChatRequest
 * 
 * @author liuruichao
 * Created on 2016-04-25 17:58
 */
public class ChatPullRequest {
    private int senderId;
    private int reciverId;
    private long time;

    public ChatPullRequest(int senderId, int reciverId, long time) {
        this.senderId = senderId;
        this.reciverId = reciverId;
        this.time = time;
    }

    public int getSenderId() {
        return senderId;
    }

    public void setSenderId(int senderId) {
        this.senderId = senderId;
    }

    public int getReciverId() {
        return reciverId;
    }

    public void setReciverId(int reciverId) {
        this.reciverId = reciverId;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ChatPullRequest that = (ChatPullRequest) o;

        if (senderId != that.senderId) return false;
        if (reciverId != that.reciverId) return false;
        if (time != that.time) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = senderId;
        result = 31 * result + reciverId;
        result = 31 * result + (int) (time ^ (time >>> 32));
        return result;
    }

    @Override
    public String toString() {
        return "ChatPullRequest{" +
                "senderId=" + senderId +
                ", reciverId=" + reciverId +
                ", time=" + time +
                '}';
    }
}
