package cv.focus.common.domain.model;

/**
 * Created by Administrator on 2016/2/19.
 */
public class SendEmail extends DomainEvent {
    private String subject;
    private String content;
    private String address;

    public SendEmail(String subject, String content, String address) {
        this.subject = subject;
        this.content = content;
        this.address = address;
    }

    public String getSubject() {
        return subject;
    }

    public String getContent() {
        return content;
    }

    public String getAddress() {
        return address;
    }

    @Override
    public EventType getEventType() {
        return null;
    }

    @Override
    public boolean sameEventAs(Object other) {
        return false;
    }
}
