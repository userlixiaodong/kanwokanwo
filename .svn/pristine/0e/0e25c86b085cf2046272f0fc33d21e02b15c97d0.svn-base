package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.user.model.VideoArea;
import cv.focus.core.domain.user.model.VideoRepository;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

import static java.lang.Math.ceil;

/**
 * Created by Administrator on 2016/8/31.
 */
@Repository
public class VideoRepositoryHibernateImpl extends HibernateRepository implements VideoRepository{



    public List<VideoArea> findByVideoType(String videoType){
        Query query = getSession().createQuery("from VideoArea where videoType = :videoType order by orderNum");
        int firstV = 0;
        int maxV = 8;
        query.setFirstResult(firstV);
        query.setMaxResults(maxV);
        query.setParameter("videoType",videoType);
        List<VideoArea> list = query.list();
        return list;
    }
    public WebPage<Object> queryVideos(String videoType,String keywords, WebPage<Object> webPage){
        //if(keywords == null || keywords.equals("")) return null;
        try{
            //keywords = escapeQueryChars(keywords);

            Query query = getSession().createQuery("from VideoArea where videoType = :videoType and videoName like:videoName order by orderNum");
             query.setParameter("videoType",videoType);
             query.setParameter("videoName","%"+keywords+"%");
            //query.setString(0, videoType);
            //query.setString(1, "%"+keywords+"%");
            List<Object> list = query.list();

            // 查询到的记录总数
            Integer totalRow = Long.valueOf(list.size()).intValue();
            webPage.setTotalCount(totalRow);
            double c = Math.ceil((float)totalRow/(float)webPage.getPageSize());
            webPage.setTotalPage((int)c);
            webPage.setStartCount((webPage.getCurrentPage() - 1 ) * webPage.getPageSize());
            webPage.setEndCount(webPage.getStartCount()+webPage.getPageSize());

            Query query1 = getSession().createQuery("from VideoArea where videoType = :videoType and videoName like:videoName order by orderNum");
            query1.setParameter("videoType",videoType);
            query1.setParameter("videoName","%"+keywords+"%");
            query1.setFirstResult((webPage.getCurrentPage() - 1 ) * webPage.getPageSize());
            query1.setMaxResults(webPage.getPageSize());

            List<Object> list2 = query1.list();


            /*int start =   webPage.getStartCount();
           int end =   webPage.getEndCount();
            List<Object> newlist = query.list();
            for(int i=start;i<=end;i++)
            {
                newlist.add(list.get(i));
            }
            webPage.setPageSize(12);*/
            webPage.setData(list2);



        }catch (Exception e) {
            e.printStackTrace();
        }
        return webPage;
    }
    public WebPage<Object> queryVideos(String keywords, WebPage<Object> webPage){
        //if(keywords == null || keywords.equals("")) return null;
        try{
            //keywords = escapeQueryChars(keywords);

            Query query = getSession().createQuery("from VideoArea where videoName like:videoName order by orderNum");
            query.setParameter("videoName","%"+keywords+"%");
            //query.setString(0, videoType);
            //query.setString(1, "%"+keywords+"%");
            List<Object> list = query.list();

            // 查询到的记录总数
            Integer totalRow = Long.valueOf(list.size()).intValue();
            webPage.setTotalCount(totalRow);
            double c = Math.ceil((float)totalRow/(float)webPage.getPageSize());
            webPage.setTotalPage((int)c);
            webPage.setStartCount((webPage.getCurrentPage() - 1 ) * webPage.getPageSize());
            webPage.setEndCount(webPage.getStartCount()+webPage.getPageSize());

            Query query1 = getSession().createQuery("from VideoArea where videoName like:videoName order by orderNum");
            query1.setParameter("videoName","%"+keywords+"%");
            query1.setFirstResult((webPage.getCurrentPage() - 1 ) * webPage.getPageSize());
            query1.setMaxResults(webPage.getPageSize());

            List<Object> list2 = query1.list();


            /*int start =   webPage.getStartCount();
           int end =   webPage.getEndCount();
            List<Object> newlist = query.list();
            for(int i=start;i<=end;i++)
            {
                newlist.add(list.get(i));
            }
            webPage.setPageSize(12);*/
            webPage.setData(list2);



        }catch (Exception e) {
            e.printStackTrace();
        }
        return webPage;
    }
    public static String escapeQueryChars(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            // 去除检索词中的特殊符号
            if (c == '\\' || c == '-' || c == '!'  || c == '(' || c == ')' || c == ':'
                    || c == '^' || c == '[' || c == ']' || c == '\"' || c == '{' || c == '}' || c == '~'
                    || c == '*' || c == '?' || c == '|' || c == ';' || c == '/') {
                sb.append('\\');
            }
            sb.append(c);
        }
        return sb.toString();
    }

}
