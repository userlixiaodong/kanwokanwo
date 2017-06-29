<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>院校库</title>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css"/>
    <%--<link rel="stylesheet" type="text/css" href="/style/app.css">--%>
    <link rel="stylesheet" type="text/css" href="/style/school-list.css"/>
    <link rel="stylesheet" type="text/css" href="/style/partnersSchool.css">
    <link rel="stylesheet" type="text/css" href="/style/video-js.css"/>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>

<div class="colleges-column text-center col-lg-12 col-xs-12 relative-position clearfix" >
    <img src="/images/colleges-big-pic.jpg" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/universityofsanfrancisco.mp4">
    <div class="colleges-content col-lg-12 col-xs-12">
        <h3>WE LOVE ALL OUR PARTNERS</h3>
        <dl class="absolute-position">
            <dt>Stanley D. Nel</dt>
            <dd>Vice President of University of San Francisco</dd>
            <dd>
            <dd>
            <dd>
                <a href="javascript:;" class="md-trigger video-container" data-modal="cusGuide">
                    <i class="glyphicon glyphicon-play-circle" src="../../../images/colleges-big-pic.jpg" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/universityofsanfrancisco.mp4"></i>
                </a>
            </dd>
            <%--<dd><img src="images/colleges-small-pic.jpg"></dd>--%>
        </dl>
        <a href="javascript:;" class="colleges-btn md-trigger video-container" data-modal="cusGuide">
            <i class="glyphicon glyphicon-play-circle" src="../../../images/colleges-big-pic.jpg" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/universityofsanfrancisco.mp4"></i>
        </a>
    </div>
</div>
<%--手机端将视频切换为图片--%>
<%--<div class="indexBanner" style="margin-top: 6rem;display: none">--%>
    <%--<img src="/images/colleges-big-pic.jpg" style="width: 100%" alt="">--%>
<%--</div>--%>

<div class="content clearfix">
    <!--顶部banner start-->
    <div class="header">
        <!--搜索框 start-->
        <div class="head_banner">
            <div class="banner_box">
                <img src="/images/search_text.png">
                <span>搜学校</span>
                <form action="${staticPath}/admission/profile/searchList" id="formid">
                    <input class="search_box"  name="keywords"  placeholder="搜索学校名" />
                    <input class="search_btn" type="button" value="搜索"/>
                </form>
            </div>
        </div>
        <!--搜索框 end-->
        <!--院校库partnership start-->
        <div class="head_partnership">
            <div class="partnership">
                <h4>成为院校库的Partnership，您可以获得</h4>
                <ul class="imgs">
                    <li>
                        <img src="/images/partnership_1.jpg" >
                        <span>免费的在线宣讲机会</span>
                    </li>
                    <li>
                        <img src="/images/partnership_2.jpg">
                        <span>专属、独特的展示页面</span>
                    </li>
                    <li>
                        <img src="/images/partnership_3.jpg">
                        <span>与潜在生源的直接接触</span>
                    </li>
                </ul>
            </div>
        </div>
        <!--院校库partnership end-->
    </div>
    <!--顶部banner end-->
    <!--内容区choose start-->
    <div class="middle">
        <h4 class="title">他们纷纷选择了看我看我</h4>
        <div class="mid-college school">
            <p><span></span>大学 <a href="/admission/profile/pagelistu" target="/admission/profile/pagelistu" class="more">查看更多 &gt;&gt;</a></p>
           <%-- <a href="/video/pagelistu" target="/video/pagelistu" class="more">查看更多 >></a>--%>
            <ul class="school_list college_list">
                <c:forEach items="${uList}" var="University">
                    <li>
                        <a href="/${University.publicUri}" target="_blank" class="highSchool-video-a">
                            <c:if test="${not empty University.biography.avatar}">
                                <c:set var="string1" value="${University.biography.avatar}"/>
                                <c:set var="string2" value="${fn:replace(string1,'focusedu.oss-cn-hangzhou.aliyuncs.com' , 'img-cdn.kanwokanwo.com')}"/>
                                <img src="${string2}@1e_1c_0o_0l_200h_200w_80q.src">
                            </c:if>
                            <c:if test="${ empty University.biography.avatar}">
                                <img src="../../../images/school_1.png">
                            </c:if>
                        </a>
                        <span><a title="${University.biography.name}" href="/${University.publicUri}" target="_blank" class="video-decoretion">${University.biography.name}</a></span>
                    </li>
                </c:forEach>
                <div class="clear"></div>
            </ul>
        </div>
        <!-- start-->
        <div class="mid_hightSchool school">
            <p><span></span>高中 <a href="/admission/profile/pagelisth" target="/admission/profile/pagelisth" class="more">查看更多 &gt;&gt;</a></p>
            <ul class="school_list hightSchool_list">

               <c:forEach items="${hList}" var="HighSchool">
                    <li>
                        <a href="/${HighSchool.publicUri}" target="_blank" class="highSchool-video-a">
                            <c:if test="${not empty HighSchool.biography.avatar}">
                                <c:set var="string1" value="${HighSchool.biography.avatar}"/>
                                <c:set var="string2" value="${fn:replace(string1,'focusedu.oss-cn-hangzhou.aliyuncs.com' , 'img-cdn.kanwokanwo.com')}"/>
                                <img src="${string2}@1e_1c_0o_0l_200h_200w_80q.src">
                            </c:if>
                            <c:if test="${ empty HighSchool.biography.avatar}">
                                <img src="../../../images/school_1.png">
                            </c:if>
                        </a>
                        <span><a title="${HighSchool.biography.name}" href="/${HighSchool.publicUri}" target="_blank" class="video-decoretion">${HighSchool.biography.name}</a></span>
                    </li>
                </c:forEach>
                <div class="clear"></div>
            </ul>
        </div>
    </div>
    <!--内容区choose end-->
</div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>
<script src="/js/bootstrap.js"></script>
<script src="/js/video.js"></script>
<script type="text/javascript" src="/js/video-popup.js?20160512"></script>
<script>
    $(function () {
        setInterval(function () {
            var clintH = $('.colleges-column').height();
            $('.container').css('paddingTop', clintH + 70 + 'px')
        }, 1);
        //btn按钮点击事件
        $('.search_btn').hover(function () {
            $(this).css('background','#1ac2a4')
        },function () {
            $(this).css('background','#18ad92')
        })
    });
    //表单提交事件
    $('.search_btn').click(function () {
        //var text=$('.search_box').val();
        $('#formid').submit()

    })
    /*变为手机端时将视屏改为图片*/
    var windowW=$(window).width();
    if (windowW<=768){
        $(".colleges-column").css('display','none');
//        $(".indexBanner").css('display','block');
    }


</script>
</html>
