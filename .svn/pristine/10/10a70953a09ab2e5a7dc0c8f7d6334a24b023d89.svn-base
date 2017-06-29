package cv.focus.common.domain.model.edm;

import com.webpower.NewRecipientArrayType;
import cv.focus.common.domain.model.EventType;

import java.util.HashMap;
import java.util.Map;

/**
 * 国内学校注册成功欢迎邮件
 * 
 * @author liuruichao
 * Created on 2016-06-08 17:50
 */
public class ChinaSchoolRegisterEvent extends EDMBaseEvent {

    public ChinaSchoolRegisterEvent(String email, String name) {
        campaignID = 8;
        mailingID = 72;
        this.name = name;
        this.email = email;
    }

    @Override
    public NewRecipientArrayType buildRecipientData() {
        Map<String, String> fields = new HashMap<>();
        fields.put("email", email);
        fields.put("name", name);
        return buildRecipientData(fields);
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
