<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>手机登录</title>
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
    <div class="login-register">
        <a href="/mobile/login" class="phone-login" style="border-bottom: 1px solid #1bb38c;color: #10a780;">密码登录</a>
        <a href="/mobile/quickLogin" class="phone-register" style="border-bottom: 1px solid #eee;color: #666;">快捷登录</a>
    </div>
    <div class="loginPage">
        <div class="input-container">
            <input type="text" name="telphone" id="telphone" class="telphone" placeholder="请输入手机号" autocomplete="off">
            <p class="warns" id="warns1"></p>
        </div>
        <div class="input-container">
            <input type="password" name="password" id="password" class="password" placeholder="请输入密码" autocomplete="off">
            <p class="warns" id="warns2"></p>
        </div>
        <a href="/user/forgetPassword" class="forgetpwd">忘记密码？</a>
        <div class="clear"></div>
        <a href="javascript:;" id="loginBtn" class="btn loginBtn">登 录 / Login</a>
        <a href="/mobile/register" id="registerBtn" class="btn registerBtn registerBtn-login">注 册 / Register</a>
        <p class="otherMethod">其他登录方式</p>
        <div class="otherLogin">
            <a href="/mobile/wechatLogin" class="login-other">
                <img src="/images/phone-login-wx.png"/>
                <p>微信登录</p>
            </a>
            <a href="/mobile/emailLogin" class="login-other">
                <img src="/images/phone-login-yx.png"/>
                <p>邮箱登录</p>
            </a>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>
<script type="text/javascript" src="/js/video-popup.js?201605121953"></script>
<script src="/js/jquery-2.2.1.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".input-container input").focus(function () {
            $(this).css("border-color", "#1bb38c");
        }).blur(function () {
            $(this).css("border-color", "transparent");
        });

        //手机号异步校验
        $("#telphone").on("blur", function () {
            var mobile = $("#telphone").val();
            if (mobile.search(/^((13[0-9])|(15[^4,\D])|(18[0,5-9])|(17[0-9]))\d{8}$/) == -1) {
                $("#warns1")[0].innerText = "该手机号格式不正确";
                mobileFlag = false;
                return;
            }else {
                $("#warns1")[0].innerText = "";
            }
            $.ajax({
                url: "/mobile/checkMobileAvail",
                data: {'mobile': mobile},
                type: 'POST',
                dataType: 'json',
                cache: false,
                async: false,
                success: function(data) {
                    if (data.status == 1) {
                    } else {
                        $("#warns1")[0].innerText = "该手机号未注册,请先注册";
                    }
                }
            });
        })

//        登录验证
        $("#loginBtn").on("click", function () {
            var telphone = $("#telphone").val();
            var password = $("#password").val();
            var reg = /(1[3-9]\d{9}$)/;//正则表达式
            // var regp = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;//密码正则表达式（8~16位字母和数字）
            //else if(!regp.test(password)){
            // $("#warns2")[0].innerText = "请输入8~16位字母加数字组合！";
            //return false;
            // }
            if (!telphone || telphone == "") {
                $("#warns1")[0].innerText = "手机号不能为空！";
                return false;
            } else if (!reg.test(telphone)) {
                $("#warns1")[0].innerText = "请输入正确格式的手机号码！";
                return false;
            } else {
                $("#warns1")[0].innerText = "";
            }
            if(!password || password==""){
                $("#warns2")[0].innerText = "请输入密码！";
                return false;
            }else {
                $("#warns2")[0].innerText = "";
            }
            $.ajax({
                url: '/mobile/login-submit',
                data: {
                    loginName: $('#telphone').val(),
                    userPwd: $('#password').val()
                },
                type: 'post',
                dataType: 'json',
                success: function (result) {
                    if (result.status == 1) {
                        window.location.href = '/home/'+ result.data;
                    }else {
                        $("#warns2")[0].innerText = "用户名或密码错误！";
                    }
                }, error:function(e){
                    console.log(e);
                }
            })
        });
    })
</script>
</html>
