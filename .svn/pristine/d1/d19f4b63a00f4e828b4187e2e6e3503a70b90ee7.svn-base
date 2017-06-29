package cv.focus.common.domain.model.edm;

import com.webpower.NewRecipientArrayType;
import com.webpower.NewRecipientType;
import com.webpower.RecipientNameValuePairType;
import cv.focus.common.domain.model.EventType;

import java.util.HashMap;
import java.util.Map;


/**
 * WelcomeSendMail
 * 
 * @author liuruichao
 * Created on 2016-05-17 16:29
 */
public class RegisterSuccessEvent extends EDMBaseEvent {

    public RegisterSuccessEvent(String email, String name) {
        campaignID = 8;
        mailingID = 70;
        this.name = name;
        this.email = email;
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
        return buildRecipientData(fields);
    }
}
