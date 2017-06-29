package cv.focus.core.application.impl;

import cv.focus.core.application.SpecializationService;
import cv.focus.core.application.UserItemService;
import cv.focus.core.domain.activity.ConsultationEntity;
import cv.focus.core.domain.activity.ItemEntity;
import cv.focus.core.domain.activity.UserItemEntity;
import cv.focus.core.domain.activity.UserItemRepository;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/4/5.
 */
@Service
public class UserItemServiceImpl implements UserItemService{

    @Resource
    private SpecializationService specializationService;
    @Resource
    private UserItemRepository userItemRepositoryHibernateImpl;

    @Override
    public UserItemEntity createUserItem(String userName, String moblie, String email,Integer id,String itemId,String fileUrl) {
        UserItemEntity userItemEntity = new UserItemEntity(userName, moblie, email);
        try{
            if(null == userItemRepositoryHibernateImpl.findUserItemByMoblie(itemId, userItemEntity.getMoblie())){

                //获取活动id
                Integer ItemID = Integer.parseInt(itemId);
                ItemEntity Item=specializationService.findItemById(ItemID);
                userItemEntity.setItemId(ItemID);
                //获取登录id
                userItemEntity.setUserId(id);
                //创建时间
                Date date=new Date();
                //设置状态
                userItemEntity.setStatus("1");
                userItemEntity.setIsFree(Item.getIsFree());
                userItemEntity.setMoney(Item.getMoney());
                userItemEntity.setCreateDate(date);
                userItemEntity.setFileUrl(fileUrl);
                userItemRepositoryHibernateImpl.store(userItemEntity);
                return userItemEntity;
            }
        }catch (Exception ignored) { }
        return null;
    }

    @Override
    public UserItemEntity findUserItemByMoblie(String itemId, String moblie) {
        return userItemRepositoryHibernateImpl.findUserItemByMoblie(moblie,itemId);
    }

    @Override
    public UserItemEntity findUserItemByItemIdAndUserId(Integer userId, String itemId) {
        return userItemRepositoryHibernateImpl.findUserItemByItemIdAndUserId(userId,itemId);
    }

    @Override
    public UserItemEntity findUserItemById(Integer id) {
        return userItemRepositoryHibernateImpl.findUserItemById(id);
    }

    @Override
    public void updateUserItem(UserItemEntity userItem) {
        userItemRepositoryHibernateImpl.updateUserItem(userItem);
    }

    @Override
    public void storeConsultation(String phone, String problem) {
        ConsultationEntity consultationEntity=new ConsultationEntity();
        consultationEntity.setPhone(phone);
        consultationEntity.setProblem(problem);
        SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = sdf.format(new Date());
        consultationEntity.setCreatetime(str);
        //发送短信
        String Url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
        HttpClient client = new HttpClient();
        PostMethod method = new PostMethod(Url);

        client.getParams().setContentCharset("GBK");
        method.setRequestHeader("ContentType","application/x-www-form-urlencoded;charset=GBK");

        String content = new String("有新学生咨询咱们网站啦，他的手机号为+ "+ phone+"+，他的问题为"+problem);
        NameValuePair[] data = {//
                new NameValuePair("account", "cf_360class"),
                new NameValuePair("password", "ce703f4354b38f4c9c370c12ada9ba8f"),

                new NameValuePair("mobile", "18813156171"),
                new NameValuePair("content", content),
        };
        method.setRequestBody(data);
        try {
            client.executeMethod(method);

            String SubmitResult =method.getResponseBodyAsString();
            Document doc = DocumentHelper.parseText(SubmitResult);
            Element root = doc.getRootElement();

            String code = root.elementText("code");
            String msg = root.elementText("msg");
            String smsid = root.elementText("smsid");

            System.out.println(code);
            System.out.println(msg);
            System.out.println(smsid);

            if("2".equals(code)){
                System.out.println("提交成功");
            }

        } catch (HttpException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        method.setRequestBody(data);
        userItemRepositoryHibernateImpl.storeConsultation(consultationEntity);
    }

}
