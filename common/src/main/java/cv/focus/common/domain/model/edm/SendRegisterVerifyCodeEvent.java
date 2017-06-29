package cv.focus.common.domain.model.edm;

import com.webpower.NewRecipientArrayType;
import cv.focus.common.domain.model.EventType;

import java.util.HashMap;
import java.util.Map;


/**
 * SendRegisterVerifyCodeEvent
 * 
 * @author liuruichao
 * Created on 2016-05-17 16:31
 */
public class SendRegisterVerifyCodeEvent extends EDMBaseEvent {

    public SendRegisterVerifyCodeEvent(String email, String emailVerifyCode) {
        campaignID = 8;
        mailingID = 69;
        this.email = email;
        this.emailVerifyCode = emailVerifyCode;
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
        fields.put("name", "");
        fields.put("email_verify_code", emailVerifyCode);
        return buildRecipientData(fields);
    }

}
