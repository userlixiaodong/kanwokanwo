package cv.focus.common.domain.model.edm;

import com.webpower.NewRecipientArrayType;
import cv.focus.common.domain.model.EventType;

import java.util.HashMap;
import java.util.Map;

/**
 * ForgetPwdEvent
 * 
 * @author liuruichao
 * Created on 2016-05-17 16:33
 */
public class ForgetPwdEvent extends EDMBaseEvent {

    public ForgetPwdEvent(String email, String name, String resetPwdUrl) {
        campaignID = 8;
        mailingID = 71;
        this.email = email;
        this.name = name;
        this.resetPasswordUrl = resetPwdUrl;
    }

    @Override
    public EventType getEventType() {
        return null;
    }

    @Override
    public boolean sameEventAs(Object other) {
        return false;
    }

    @Override
    public NewRecipientArrayType buildRecipientData() {
        Map<String, String> fields = new HashMap<>();
        fields.put("email", email);
        fields.put("name", name);
        fields.put("reset_password_url", resetPasswordUrl);
        return buildRecipientData(fields);
    }

}
