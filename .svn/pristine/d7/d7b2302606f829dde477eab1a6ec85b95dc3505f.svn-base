package cv.focus.core.application;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.core.domain.user.model.VideoArea;

import java.util.List;

/**
 * Created by Administrator on 2016/9/12.
 */
public interface VideoService {


    public List<VideoArea> findByVideoType(String videoType);

    WebPage<Object> queryVideos(String videoType,String keywords, WebPage<Object> webPage);

    WebPage<Object> queryVideos(String keywords, WebPage<Object> webPage);


}
