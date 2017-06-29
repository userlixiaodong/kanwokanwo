<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Partner | Kanwokanwo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/school-list.css?201604271"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160322"/>
    <style>
        .school-list-header h2{position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);-webkit-transform:translate(-50%,-50%);color:#fff;font-size:60px;margin:0;}
        @media (max-width: 768px){.school-list-header h2{font-size:29px;}}
        @media (max-width: 414px){.school-list-header h2{font-size:15px;}}
        @media (max-width: 320px){.school-list-header h2{font-size:12px;}}
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="school-list">
    <c:if test="${requestScope.country == 'CHINA'}">
        <div class="school-list-header clearfix relative-position">
            <img src="/statics/images/newschoollist/banner.jpg">
            <h2>WE LOVE ALL OUR COLLEGE PARTNERS</h2>
        </div>
    </c:if>
    <c:if test="${requestScope.country == 'OTHER'}">
        <div class="colleges-column text-center col-lg-12 col-xs-12 relative-position">
            <img src="/images/colleges-big-pic.jpg">
            <div class="colleges-content col-lg-12 col-xs-12">
                <h3>WE LOVE ALL OUR PARTNERS</h3>
                <dl class="absolute-position">
                    <dt>Stanley D. Nel</dt>
                    <dd>Vice President of University of San Francisco</dd>
                    <dd><a href="javascript:;" class="md-trigger video-container" data-modal="cusGuide"><i class="glyphicon glyphicon-play-circle" src="/images/colleges-big-pic.jpg" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/universityofsanfrancisco.mp4"></i>
                    </a></dd>
                    <%--<dd><img src="/images/colleges-small-pic.jpg"></dd>--%>
                </dl>
                <a href="javascript:;" class="md-trigger video-container colleges-btn" data-modal="cusGuide"><i class="glyphicon glyphicon-play-circle" src="/images/colleges-big-pic.jpg" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/universityofsanfrancisco.mp4"></i></a> </div>

            <img style="margin-top: 30px;" src="/images/usf-logo.jpg">
        </div>
    </c:if>

    <div class="row">
        <div class="w1200 school-list-item text-center clearfix">
            <c:forEach items="${requestScope.admissionProfiles}" var="school">
                <div class="col-lg-3 col-xs-12">
                    <a class="school-img" href="/${school.publicUri}" target="_blank">
                        <c:if test="${not empty school.biography.avatarUrl}">
                        <img src="${school.biography.avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_200h_200w_80q.src">
                        </c:if>
                        <c:if test="${ empty school.biography.avatarUrl}">
                            <img src="/images/defaultavatar.jpg">
                        </c:if>
                    </a>
                    <p><a title="${school.biography.name}" href="/${school.publicUri}" target="_blank">${school.biography.name}</a></p>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<script src="/js/video.js"></script>
<script type="text/javascript" src="/js/video-popup.js?20160512"></script>
<%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>
</html>