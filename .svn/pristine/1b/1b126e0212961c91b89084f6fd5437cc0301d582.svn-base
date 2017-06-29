package cv.focus.core.infrastructure.messaging.jms.handler;

import akka.actor.UntypedActor;
import cv.focus.common.domain.model.SendEmail;
import cv.focus.core.infrastructure.util.MailUtil;
import org.apache.log4j.Logger;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;

/**
 * 发送邮件Actor
 *
 * @author liuruichao
 * @date 15/8/11 下午1:47
 */
public class SendMailHandler extends UntypedActor {
    private final Logger logger = Logger.getLogger(SendMailHandler.class);

    @Override
    public void onReceive(Object message) throws Exception {
        if (message instanceof SendEmail) {
            SendEmail mailEntity = (SendEmail) message;
            try {
                MailUtil.sendMail(mailEntity.getSubject(), mailEntity.getContent(), new InternetAddress[]{
                        new InternetAddress(mailEntity.getAddress())
                });
                logger.info("SendMailHandler send mail to " + mailEntity.getAddress() + " success.");
            } catch (MessagingException e) {
                logger.info("SendMailHandler send mail to " + mailEntity.getAddress() + " fail.");
            }
        }
    }
}
