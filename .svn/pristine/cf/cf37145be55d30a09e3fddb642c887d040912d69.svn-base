package cv.focus.core.infrastructure.messaging.jms.handler;

import akka.actor.UntypedActor;
import cv.focus.core.infrastructure.messaging.jms.model.CreateInformationEvent;
import cv.focus.core.infrastructure.wechat.WechatUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.log4j.Logger;
import org.json.JSONException;
import org.json.JSONObject;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * CreateInformationHandler
 * 
 * @author liuruichao
 * Created on 2016-06-22 22:33
 */
public class CreateInformationHandler extends UntypedActor {
    private final Logger logger = Logger.getLogger(CreateInformationHandler.class);

    @Override
    public void onReceive(Object o) throws Exception {
        if (o instanceof CreateInformationEvent) {
            CreateInformationEvent event = (CreateInformationEvent) o;
            List<CreateInformationEvent.User> users = event.getFollowUsers();
            if (users != null && users.size() > 0) {
                for (CreateInformationEvent.User user : users) {
                    if (StringUtils.isNotBlank(user.openId)) {
                        // 微信模板数据
                        JSONObject sendObj = new JSONObject();
                        JSONObject dataObj = new JSONObject();
                        Map<String, Object> params = new HashMap<String, Object>();
                        sendObj.put("touser", user.openId);
                        sendObj.put("template_id", "MGtB6qF5MiA-gjoDBZz-hKRAYRrYrAV-qelcV63K5PU");
                        sendObj.put("url", "http://www.kanwokanwo.com/" + URLEncoder.encode(event.getPublicUri()) + "?visible=timeline");
                        sendObj.put("topcolor", "#FF0000");


                        params.put("value", "您关注的学校发布了一条新消息.");
                        params.put("color", "#173177");
                        dataObj.put("first", createJsonObject(params));

                        params.put("value", event.getSchoolName());
                        params.put("color", "#173177");
                        dataObj.put("keyword1", createJsonObject(params));

                        params.put("value", "发布新消息");
                        params.put("color", "#173177");
                        dataObj.put("keyword2", createJsonObject(params));

                        params.put("value", user.userName);
                        params.put("color", "#173177");
                        dataObj.put("keyword3", createJsonObject(params));

                        params.put("value", event.getSchoolName());
                        params.put("color", "#173177");
                        dataObj.put("keyword4", createJsonObject(params));

                        params.put("value", DateFormatUtils.format(event.getCreateTime(), "yyyy-MM-dd HH:mm:ss"));
                        params.put("color", "#173177");
                        dataObj.put("keyword5", createJsonObject(params));

                        params.put("value", "点击查看详情。");
                        params.put("color", "#173177");
                        dataObj.put("remark", createJsonObject(params));

                        // 发送的数据
                        sendObj.put("data", dataObj);
                        logger.info("information send template result: " + WechatUtils.sendTemplateMsg(sendObj));
                    }
                }
            }
        }
    }

    public static JSONObject createJsonObject(Map<String, Object> params) throws JSONException {
        JSONObject obj = new JSONObject();
        for (String key : params.keySet()) {
            obj.put(key, params.get(key));
        }
        params.clear();
        return obj;
    }
}
