package cv.focus.core.infrastructure.messaging.jms.handler;

import akka.actor.UntypedActor;
import com.webpower.AddRecipientsResultType;
import com.webpower.ArrayOfIntType;
import com.webpower.NewRecipientArrayType;
import com.webpower.WebpowerLoginType;
import com.webpower.WebpowerSoapAPI;
import com.webpower.WebpowerSoapAPIPort;
import cv.focus.common.domain.model.edm.EDMBaseEvent;
import org.apache.log4j.Logger;

/**
 * EDMSendMailHandler
 * 
 * @author liuruichao
 * Created on 2016-05-17 17:01
 */
public class EDMSendMailHandler extends UntypedActor  {
    private final Logger logger = Logger.getLogger(EDMSendMailHandler.class);

    @Override
    public void onReceive(Object o) throws Exception {
        if (o instanceof EDMBaseEvent) {
            EDMBaseEvent edmEmail = (EDMBaseEvent) o;
            AddRecipientsResultType result = null;
            String username = EDMBaseEvent.USERNAME;
            String password = EDMBaseEvent.PASSWORD;
            int campaignID = edmEmail.getCampaignID();           //campaign id
            int mailingID = edmEmail.getMailingID();             //which mail you'll send

            WebpowerLoginType login = new WebpowerLoginType();
            login.setUsername(username);
            login.setPassword(password);

            ArrayOfIntType groupIDs = new ArrayOfIntType();
            groupIDs.getInt().add(edmEmail.getGroupID());              // which group you will send

            WebpowerSoapAPI API = new WebpowerSoapAPI();
            WebpowerSoapAPIPort service = API.getWebpowerSoapAPIPort();

            NewRecipientArrayType recipientDatas = edmEmail.buildRecipientData();
            result = service.addRecipientsSendMailing(
                    login,              //use
                    campaignID,         //campaign
                    mailingID,          //which mailings to send
                    groupIDs,           //groups
                    recipientDatas,     //recipient datas
                    true,           //overwrite if email has existed
                    true
            );

            System.out.println(result.getStatus());

            if (result.getStatus().equals("OK") || result.getStatus().equals("DUPLICATE")) {
                logger.info("EDMSendMailHandler send mail to " + edmEmail.getEmail() + " success.");
            } else {
                logger.error("EDMSendMailHandler send mail to " + edmEmail.getEmail() + " error. statusMsg: " + result.getStatusMsg());
            }
        }
    }

}
