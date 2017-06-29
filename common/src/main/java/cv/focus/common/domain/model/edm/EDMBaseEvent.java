package cv.focus.common.domain.model.edm;

import com.webpower.NewRecipientArrayType;
import com.webpower.NewRecipientType;
import com.webpower.RecipientNameValuePairType;
import cv.focus.common.domain.model.DomainEvent;

import java.util.Map;

/**
 * EDMBaseEvent
 * 
 * @author liuruichao
 * Created on 2016-05-17 16:31
 */
public abstract class EDMBaseEvent extends DomainEvent {
    public static final String USERNAME = "admin";
    public static final String PASSWORD = "bLisg_uu6";

    protected int groupID = 81;
    // 子类去控制
    protected int campaignID;
    protected int mailingID;
    protected String email;
    protected String name;
    protected String emailVerifyCode;
    protected String resetPasswordUrl;

    protected NewRecipientArrayType buildRecipientData(Map<String, String> fields) {
        NewRecipientArrayType recipientDatas = new NewRecipientArrayType();
        NewRecipientType newrecip1 = new NewRecipientType();

        for (String key : fields.keySet()) {
            RecipientNameValuePairType datavalue_1_1 = new RecipientNameValuePairType();
            datavalue_1_1.setName(key);
            datavalue_1_1.setValue(fields.get(key));
            newrecip1.getFields().add(datavalue_1_1);
        }

        recipientDatas.getRecipients().add(newrecip1);
        return recipientDatas;
    }

    public int getGroupID() {
        return groupID;
    }

    public int getCampaignID() {
        return campaignID;
    }

    public int getMailingID() {
        return mailingID;
    }

    public String getEmail() {
        return email;
    }
    public abstract NewRecipientArrayType buildRecipientData();
}
