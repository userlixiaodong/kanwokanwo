package cv.focus.core.application.impl;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.application.VideoService;
import cv.focus.core.domain.user.model.VideoArea;
import cv.focus.core.domain.user.model.VideoRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;/**
 * Created by 1009 on 2016/10/31.
 */
@Service
public class VideoServiceImpl implements VideoService {
    @Resource
    private VideoRepository videoRepositoryHibernateImpl;

    public List<VideoArea> findByVideoType(String videoType){
        List<VideoArea> list = videoRepositoryHibernateImpl.findByVideoType(videoType);
        if(list.size()>0)
        {
            return list;
        }
        else{
            return null;
        }

    }

    public WebPage<Object> queryVideos(String videoType,String keywords, WebPage<Object> webPage)
    {
        return videoRepositoryHibernateImpl.queryVideos(videoType,keywords,webPage);
    }

    public WebPage<Object> queryVideos(String keywords, WebPage<Object> webPage)
    {
        return videoRepositoryHibernateImpl.queryVideos(keywords,webPage);
    }
}
