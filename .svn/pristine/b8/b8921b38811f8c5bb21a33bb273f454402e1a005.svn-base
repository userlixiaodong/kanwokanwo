package cv.focus.core.infrastructure.util;

import com.focusedu.utils.lang.PropertiesUtil;
import org.apache.log4j.Logger;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;


public final class MailUtil {
    private static final Logger logger = Logger.getLogger(MailUtil.class);
    // 发送邮件的服务器的IP和端口
    private static final String mailServerHost;
    private static final Integer mailServerPort;
    // 登陆邮件发送服务器的用户名和密码
    private static final String username;
    private static final String password;

    static {
        Properties props = PropertiesUtil.getProperties("mail.properties");
        mailServerHost = props.getProperty("mailServerHost");
        mailServerPort = Integer.valueOf(props.getProperty("mailServerPort"));
        username = props.getProperty("mailUserName");
        password = props.getProperty("mailPassWord");
    }

    /**
     * 发送邮件
     *
     * @param mailSubject 邮件标题
     * @param mailContent 邮件内容
     * @param address     收件人
     */
    public static void sendMail(String mailSubject, String mailContent,
                                InternetAddress[] address) throws MessagingException {
        Transport tran = null;
        try {
            Properties properties = new Properties();
            properties.setProperty("mail.transport.protocol", "smtp");
            properties.setProperty("mail.smtp.auth", "true");

            Session session = Session.getInstance(properties);
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setSubject(mailSubject);
            message.setContent(mailContent, "text/html;charset=utf-8");

            tran = session.getTransport();
            tran.connect(mailServerHost, mailServerPort, username, password);
            tran.sendMessage(message, address);
        } catch (MessagingException e) {
            logger.error("MailUtil.sendMail()", e);
            throw e;
        } finally {
            if (tran != null) {
                try {
                    tran.close();
                } catch (MessagingException ignored) {
                }
            }
        }
    }
}