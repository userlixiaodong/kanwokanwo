package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.activity.*;
import cv.focus.common.infrastructure.util.string.StringUtil;
import cv.focus.core.interfaces.cisactivity.dto.UserItemDTO;
import cv.focus.core.domain.user.model.Specialization;
import cv.focus.core.domain.user.model.SpecializationRepository;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import cv.focus.core.interfaces.order.OrderDTO;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/8/31.
 */
@Repository
public class SpecializationRepositoryHibernateImpl extends HibernateRepository implements SpecializationRepository{

    public void store(Specialization Specialization){
        getSession().saveOrUpdate(Specialization);
    };

    public List<Specialization> findByTutorName(String tutorName){
        Query query = getSession().createQuery("from Specialization where tutorName = :tutorName order by specializationTime");
        query.setParameter("tutorName",tutorName);
        List<Specialization> list = query.list();
        return list;
    };

    public List<Specialization> findByTutorId(Integer tutorId){
        Query query = getSession().createQuery("from Specialization where tutorId = :tutorId order by specializationTime ");
        query.setParameter("tutorId",tutorId);
        List<Specialization> list = query.list();
        return list;
    };

    public List<Specialization> findByUserId(Integer userId){
        Query query = getSession().createQuery("from Specialization where userId = :userId order by specializationTime ");
        query.setParameter("userId",userId);
        List<Specialization> list = query.list();
        return list;
    };

    public List<Specialization> findCurrentListByUserId(Integer userId){
        Query query = getSession().createQuery("from Specialization where userId = :userId and specializationTime < NOW() order by specializationTime ");
        query.setParameter("userId",userId);
        List<Specialization> list = query.list();
        return list;
    };

    public List<Specialization> findHistoryListByUserId(Integer userId){
        Query query = getSession().createQuery("from Specialization where userId = :userId and specializationTime >= NOW() order by specializationTime ");
        query.setParameter("userId",userId);
        List<Specialization> list = query.list();
        return list;
    };

    public List<Specialization> findCurrentListByTutorId(Integer tutorId){
        Query query = getSession().createQuery("from Specialization where tutorId = :tutorId and specializationTime < NOW() order by specializationTime ");
        query.setParameter("tutorId",tutorId);
        List<Specialization> list = query.list();
        return list;
    };

    public List<Specialization> findHistoryListByTutorId(Integer tutorId){
        Query query = getSession().createQuery("from Specialization where tutorId = :tutorId and specializationTime >= NOW() order by specializationTime ");
        query.setParameter("tutorId",tutorId);
        List<Specialization> list = query.list();
        return list;
    };

    public List<Specialization> findAll(){
        Query query = getSession().createQuery("from Specialization order by tutorName,insertTime desc ");
        List<Specialization> list = query.list();
        return list;
    }

    @Override
    public List<ItemEntity> findItemList() {
        //Query query = getSession().createQuery("from ItemEntity where isDisplay=1 order by orderNum");
        Query query = getSession().createQuery("from ItemEntity   order by orderNum");
        List<ItemEntity> list=query.list();
        return list;
    }

    @Override
    public List<ItemEntity> findTopItemList(int n) {
        //Query query = getSession().createQuery("from ItemEntity where isDisplay=1 order by orderNum");
        Query query = getSession().createQuery("from ItemEntity   order by orderNum");
        query.setFirstResult(1);
        query.setMaxResults(n);
        List<ItemEntity> list=query.list();
        return list;
    }


    @Override
    public ItemEntity findItemById(Integer itemId) {
        Query query = getSession().createQuery("from ItemEntity where itemId=:itemId");
        query.setInteger("itemId",itemId);
        ItemEntity item =(ItemEntity)query.uniqueResult();
        return item;
    }

    @Override
    public void addPageviews(Integer itemId, Integer afterClickNum) {

        String sql="update ItemEntity set chickNum="+afterClickNum+" where itemId=:itemId";
        Query query = getSession().createQuery(sql);
        query.setParameter("itemId", itemId);
        query.executeUpdate();
    }

    @Override
    public List<ItemEntity> findBannerList() {
        Query query = getSession().createQuery("from ItemEntity where isbanner=1 order by orderNum ");
        List<ItemEntity> list=query.list();
        return list;
    }

    @Override
    public void itemSaved(SavedEntity savedEntity){
        getSession().saveOrUpdate(savedEntity);
    };

    @Override
    public void updateCollect(ItemEntity item){
        getSession().saveOrUpdate(item);
    };

    @Override
    public String checkCollect(Integer userId, Integer itemId){
        String sql="from SavedEntity where userId =:userId and savedId =:savedId and flag = '1'";
        Query query = getSession().createQuery(sql);
        query.setParameter("userId", userId);
        query.setParameter("savedId", itemId);
        List<SavedEntity> list=query.list();
        return list.size()+"";
    }

    @Override
    public WebPage collectList(Integer userId,WebPage webPage) {


        try {
            String sql="from SavedEntity where userId =:userId  and flag = '1'";
            Query query = getSession().createQuery(sql);
            query.setParameter("userId", userId);
            List<SavedEntity> list=query.list();
            // 查询到的记录总数
            Integer totalRow = Long.valueOf(list.size()).intValue();
            webPage.setTotalCount(totalRow);
            webPage.setPageSize(6);
            double c = Math.ceil((float) totalRow / (float) webPage.getPageSize());
            webPage.setTotalPage((int) c);
            webPage.setStartCount((webPage.getCurrentPage() - 1) * webPage.getPageSize());
            webPage.setEndCount(webPage.getStartCount() + webPage.getPageSize());

            Query query1 = getSession().createSQLQuery("select b.* from kw_saved a, kw_item b where a.userid = '"+userId+"' and a.savedid = b.itemId and a.flag = '1'");
            query1.setFirstResult((webPage.getCurrentPage() - 1) * webPage.getPageSize());
            query1.setMaxResults(webPage.getPageSize());

            List<Object> list2 = query1.list();
            List<OrderDTO> list1 = new ArrayList<OrderDTO>();
            for(int i = 0; i < list.size(); i++) {
                Object[] arr = (Object[]) list2.get(i);
                OrderDTO order = new OrderDTO(StringUtil.trimNull(arr[5]),
                        StringUtil.trimNull(""),
                        StringUtil.trimNull(arr[9]),
                        StringUtil.trimNull(arr[0]),
                        StringUtil.trimNull(arr[1]),
                        StringUtil.trimNull(arr[23]),
                        StringUtil.trimNull(""),
                        StringUtil.trimNull(""),
                        StringUtil.trimNull(""),
                        StringUtil.trimNull(arr[7]),
                        StringUtil.trimNull(arr[8]),
                        StringUtil.trimNull(arr[6])
                );
                list1.add(order);
            }
            webPage.setData(list1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return webPage;
    }

    @Override
    public SavedEntity findCollection(Integer userId, Integer itemId) {
        String sql="from SavedEntity where userId =:userId and savedId =:savedId and flag = '1'";
        Query query = getSession().createQuery(sql);
        query.setParameter("userId", userId);
        query.setParameter("savedId", itemId);
        List<SavedEntity> list=query.list();
        if(list.size() == 0){
            return null;
        }else{
            return list.get(0);
        }
    }

    public List<UserItemDTO> findUserItemByUserId(Integer userId){
        String sql = "select  b.itemName,b.itemUrl,a.* from kw_user_item a, kw_item b where a.userId = '"+userId+"' and a.itemId = b.itemId order by createDate desc";
        Query query = getSession().createSQLQuery(sql);
        List list = query.list();
        List<UserItemDTO> list1 = new ArrayList<UserItemDTO>();
        for(int i = 0; i < list.size(); i++){
            Object[] arr = (Object[])list.get(i);
            UserItemDTO userItem = new UserItemDTO(arr[0].toString(),
                    StringUtil.trimNull(arr[1]),
                    StringUtil.trimNull(arr[2]),
                    StringUtil.trimNull(arr[3]),
                    StringUtil.trimNull(arr[4]),
                    StringUtil.trimNull(arr[5]),
                    StringUtil.trimNull(arr[6]),
                    StringUtil.trimNull(arr[7]),
                    StringUtil.trimNull(arr[8]),
                    StringUtil.trimNull(arr[9]),
                    StringUtil.trimNull(arr[10]),
                    StringUtil.trimNull(arr[11]),
                    StringUtil.trimNull(arr[12]));
            list1.add(userItem);
            }
        return list1;
    }

    @Override
    public List<CourseEntity> findCourseByType(String courseType) {
        String sql="from CourseEntity where courseType =:courseType";
        Query query = getSession().createQuery(sql);
        query.setParameter("courseType", courseType);
        List<CourseEntity> list=query.list();
        return list;
    }

    @Override
    public void saveApplyInfo(ApplyActivity applyActivity) {
        getSession().saveOrUpdate(applyActivity);
    }

    @Override
    public void saveApplyActivity(UserApplyActivity userApplyActivity) {
        getSession().saveOrUpdate(userApplyActivity);
    }

    @Override
    public CourseEntity findExamInfoById(String id) {
        Query query = getSession().createQuery("from CourseEntity where id=:id");
        query.setInteger("id",Integer.parseInt(id));
        CourseEntity course =(CourseEntity)query.uniqueResult();
        return course;
    }

    @Override
    public void saveUserScore(UserScore userScore) {
        getSession().saveOrUpdate(userScore);
    }

    @Override
    public ApplyActivity findApplyActivityByUserId(Integer userId) {
        Query query = getSession().createQuery("from ApplyActivity where userId=:userId");
        query.setInteger("userId",userId);
        ApplyActivity applyActivity =(ApplyActivity)query.uniqueResult();
        return applyActivity;
    }

    @Override
    public List<UserApplyActivity> findAllUserApplyActivity(Integer userId) {
        Query query = getSession().createQuery("from UserApplyActivity where userId=:userId");
        query.setInteger("userId",userId);
        List<UserApplyActivity> userApplyActivityList =query.list();
        return userApplyActivityList;
    }

    @Override
    public List<UserScore> findUserScoreByType(Integer userId, String exam_type) {
        Query query = getSession().createQuery("from UserScore where userId=:userId and exam_type=:exam_type");
        query.setInteger("userId",userId);
        query.setParameter("exam_type",exam_type);
        List<UserScore> userScoreList =query.list();
        return userScoreList;
    }

    @Override
    public UserApplyActivity findUserActivityById(String id) {
        Query query = getSession().createQuery("from UserApplyActivity where id=:id");
        query.setInteger("id",Integer.parseInt(id));
        UserApplyActivity userApplyActivity =(UserApplyActivity)query.uniqueResult();
        return userApplyActivity;
    }

    @Override
    public void deleteUserActivity(UserApplyActivity userApplyActivity) {
        getSession().delete(userApplyActivity);
    }

    @Override
    public UserScore findUserScoreById(String id) {
        Query query = getSession().createQuery("from UserScore where id=:id");
        query.setInteger("id",Integer.parseInt(id));
        UserScore userScore =(UserScore)query.uniqueResult();
        return userScore;
    }

    @Override
    public void deleteUserScore(UserScore userScore) {
        getSession().delete(userScore);
    }

    @Override
    public UserApplyActivity findUserActivityByUserId(Integer userId, String activityName) {
        Query query = getSession().createQuery("from UserApplyActivity where userId=:userId and activityName=:activityName");
        query.setInteger("userId",userId);
        query.setParameter("activityName",activityName);
        UserApplyActivity userApplyActivity =(UserApplyActivity)query.uniqueResult();
        return userApplyActivity;
    }

    @Override
    public UserScore findUserScoreByExamId(String examId,Integer userId) {
        Query query = getSession().createQuery("from UserScore where examId=:examId and userId=:userId");
        query.setParameter("examId",examId);
        query.setInteger("userId",userId);
        UserScore userScore =(UserScore)query.uniqueResult();
        return userScore;
    }

    @Override
    public void deleteApplyActivity(ApplyActivity existApplyActivity) {
        getSession().delete(existApplyActivity);
    }

    @Override
    public WebPage findItemListByPage(WebPage webPage) {
        try {
            Query query = getSession().createQuery("from ItemEntity  order by orderNum");
            List<ItemEntity> list=query.list();
            // 查询到的记录总数
            Integer totalRow = Long.valueOf(list.size()).intValue();
            webPage.setTotalCount(totalRow);
            webPage.setPageSize(6);
            double c = Math.ceil((float) totalRow / (float) webPage.getPageSize());
            webPage.setTotalPage((int) c);
            webPage.setStartCount((webPage.getCurrentPage() - 1) * webPage.getPageSize());
            webPage.setEndCount(webPage.getStartCount() + webPage.getPageSize());

            Query query1 = getSession().createQuery("from ItemEntity  order by orderNum");
            query1.setFirstResult((webPage.getCurrentPage() - 1) * webPage.getPageSize());
            query1.setMaxResults(webPage.getPageSize());

            List<Object> list2 = query1.list();

            webPage.setData(list2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return webPage;
    }

    @Override
    public WebPage findItemListByUserId( Integer userId,WebPage webPage) {
        try {
            Query query = getSession().createSQLQuery("select count(1) from kw_item a, kw_order b where b.userId = '"+userId+"' and a.itemId = b.itemId and b.flag <> '3' order by b.createTime desc");
            List<ItemEntity> list=query.list();
            // 查询到的记录总数
            Integer totalRow = Long.valueOf(list.size()).intValue();
            webPage.setTotalCount(totalRow);
            webPage.setPageSize(6);
            double c = Math.ceil((float) totalRow / (float) webPage.getPageSize());
            webPage.setTotalPage((int) c);
            webPage.setStartCount((webPage.getCurrentPage() - 1) * webPage.getPageSize());
            webPage.setEndCount(webPage.getStartCount() + webPage.getPageSize());

            Query query1 = getSession().createSQLQuery("select a.bitmap,b.orderNo,b.type,b.itemId,b.itemName,a.tag,b.fee,b.flag,b.createTime,a.startDate,a.endDate  from kw_item a, kw_order b where b.userId = '"+userId+"' and a.itemId = b.itemId and b.flag <> '3' order by b.createTime desc");
            query1.setFirstResult((webPage.getCurrentPage() - 1) * webPage.getPageSize());
            query1.setMaxResults(webPage.getPageSize());

            List list2 = query1.list();
            List<OrderDTO> list3 = new ArrayList<OrderDTO>();
            for(int i = 0; i < list2.size(); i++){
                Object[] arr = (Object[])list2.get(i);
                OrderDTO order = new OrderDTO(StringUtil.trimNull(arr[0]),
                        StringUtil.trimNull(arr[1]),
                        StringUtil.trimNull(arr[2]),
                        StringUtil.trimNull(arr[3]),
                        StringUtil.trimNull(arr[4]),
                        StringUtil.trimNull(arr[5]),
                        StringUtil.trimNull(arr[6]),
                        StringUtil.trimNull(arr[7]),
                        StringUtil.trimNull(arr[8]),
                        StringUtil.trimNull(arr[9]),
                        StringUtil.trimNull(arr[10])
                      );
                list3.add(order);
            }

            webPage.setData(list3);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return webPage;
    }

    @Override
    public WebPage queryActivityList(WebPage webPage, String itemName) {
        try {
            String sql="from ItemEntity where itemName like:itemName";
            Query query = getSession().createQuery(sql);
            query.setParameter("itemName", "%" + itemName + "%");
            List<ItemEntity> list=query.list();
            // 查询到的记录总数
            Integer totalRow = Long.valueOf(list.size()).intValue();
            webPage.setTotalCount(totalRow);
            webPage.setPageSize(6);
            double c = Math.ceil((float) totalRow / (float) webPage.getPageSize());
            webPage.setTotalPage((int) c);
            webPage.setStartCount((webPage.getCurrentPage() - 1) * webPage.getPageSize());
            webPage.setEndCount(webPage.getStartCount() + webPage.getPageSize());

            Query query1 = getSession().createQuery("from ItemEntity where itemName like :itemName");
            query1.setParameter("itemName", "%" + itemName + "%");
            query1.setFirstResult((webPage.getCurrentPage() - 1) * webPage.getPageSize());
            query1.setMaxResults(webPage.getPageSize());

            List<Object> list2 = query1.list();

            webPage.setData(list2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return webPage;
    }
}
