package cv.focus.core.domain.user.model;

import cv.focus.common.infrastructure.util.paginaction.WebPage;

import java.util.List;

/**
 * Created by Administrator on 2016/8/31.
 */
public interface VideoRepository {


    List<VideoArea> findByVideoType(String videoType);
    public WebPage<Object> queryVideos(String videoType,String keywords, WebPage<Object> webPage);
    public WebPage<Object> queryVideos(String keywords, WebPage<Object> webPage);

}
