<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <meta http-equiv="Expires" CONTENT="0"/>
    <meta http-equiv="Cache-Control" CONTENT="no-cache"/>
    <meta http-equiv="Pragma" CONTENT="no-cache"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9, IE=8">
    <link rel="stylesheet" type="text/css" href="/style/public.css?201604278722121100000"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/homepage.css"/>
</head>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<body>
<div class="mid-content">
    <div class="headImg">
        <div class="head-portrait">
            <c:if test="${not empty studentProfile.biography.avatar}">
                <img  src="${studentProfile.biography.avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_480h_460w_100q.src"/>
            </c:if>
            <c:if test="${empty studentProfile.biography.avatar}">
            <img src="/images/phone-headImg.png">
            </c:if>
        </div>


        <p class="sname"><c:if test="${not empty applyInfo.name}">${applyInfo.name}</c:if></p>
        <p class="sothers"><c:if test="${not empty applyInfo.currentSchool}">${applyInfo.currentSchool}</c:if></p>
        <p class="sothers"><c:if test="${not empty applyInfo.GPA}">${applyInfo.GPA}</c:if></p>
        <a href="javascript:toform('/specialization/applicationIndex');"><i><img src="/images/phone-head-arrow.png"></i></a>
    </div>
    <ul class="phone-myList">
        <li>
            <a href="javascript:toform('/specialization/myOrder');"><span>订单</span><i><img src="/images/phone-myList-arrow.png"></i></a>
        </li>
        <li>
            <a href="javascript:toform('/${studentProfile.publicUri}');"><span>个人简历</span><i><img src="/images/phone-myList-arrow.png"></i></a>
        </li>
        <li>
            <a href="javascript:toform('/specialization/myCollection');"><span>活动收藏</span><i><img src="/images/phone-myList-arrow.png"></i></a>
        </li>
        <li>
            <a href="javascript:toform('/home/mySchool');"><span>关注院校</span><i><img src="/images/phone-myList-arrow.png"></i></a>
        </li>
        <li>
            <a href="javascript:toform('/user/setup');"><span>设置</span><i><img src="/images/phone-myList-arrow.png"></i></a>
        </li>
    </ul>
    <div class="toQuit">
        <a href="javascript:toform('/user/logout');">退出账号</a>
    </div>
</div>

<%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>
<script type="text/javascript">
    var wid = $(window).width();
    var hei = $(window).height();
    $(function () {
//        列表背景图标添加
        var list = $(".phone-myList li");
        for (var i = 0; i < list.length ; i++) {
            var listUrl = '/images/phone-myList'+parseInt(i+1)+'.png';
            list.eq(i).css({"background":"url("+listUrl+") no-repeat 2rem center #fff","background-size":"6%"});
        }
        if (wid < 769) {
            for (var i = 0; i < list.length ; i++) {
                var listUrl = '/images/phone-myList'+parseInt(i+1)+'.png';
                list.eq(i).css({"background":"url("+listUrl+") no-repeat 2rem center #fff","background-size":"6%"});
            }
            if(wid < 640){
                for (var i = 0; i < list.length ; i++) {
                    var listUrl = '/images/phone-myList'+parseInt(i+1)+'.png';
                    list.eq(i).css({"background":"url("+listUrl+") no-repeat 2rem center #fff","background-size":"8%"});
                }
            }
        }
    })

    function toform(url){
        location.href=url;
    }
</script>
</html>
