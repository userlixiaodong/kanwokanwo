<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设置</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <meta http-equiv="Expires" CONTENT="0"/>
    <meta http-equiv="Cache-Control" CONTENT="no-cache"/>
    <meta http-equiv="Pragma" CONTENT="no-cache"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9, IE=8">
    <link rel="stylesheet" type="text/css" href="/style/public.css"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css"/>
    <link rel="stylesheet" type="text/css" href="/style/phone-login-register.css"/>
    <script src="/js/jquery-2.2.1.min.js"></script>
</head>
<body>
    <div class="mid-content">
        <div class="phone-logo">
            <img src="/images/phone-login-logo.png">
        </div>
        <div class="loginPage">
            <span class="accountNumber">账 号</span>
            <ul class="settingList">
                <li>
                    <a href="/mobile/modifyMobileNumber"><span>手机号</span><i><img src="/images/phone-myList-arrow.png"></i></a>
                </li>
                <li>
                    <a href="/mobile/modifyPassword"><span>修改密码</span><i><img src="/images/phone-myList-arrow.png"></i></a>
                </li>
            </ul>
            <p class="otherMethod">关联账号</p>
            <a href="javascript:;" class="login-wx" >
                <img src="/images/phone-setting.png" width="80%"/>
            </a>
            <br/><br/>
            <a href="/mobile/login" id="loginBtn" class="btn">退 出 / Logout</a>
        </div>
    </div>
<%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>
<script type="text/javascript">
    var wid = $(window).width();
    var hei = $(window).height();
    $(function () {
//        列表背景图标添加
        var list = $(".settingList li");
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
</script>
</html>
