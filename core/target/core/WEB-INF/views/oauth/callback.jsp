<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160422"/>
    <link rel="stylesheet" type="text/css" href="/style/public.css?201603224"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160322"/>
    <link rel="stylesheet" type="text/css" href="/style/index.css?201604061"/>
    <script src="/js/video.js"></script>

    <style>
        .oauth-modal{z-index:0;position: relative;max-height: inherit;}
       /* #content a {  color: #1BB38C; font-size: 16px;}
        .tip-error-text {color: red;}
        .tip-success-text {color: green;}
        .title {font-size:18px;margin: 10px;}*/
        .thirdparty-register-bind{margin-bottom: 40px;}
        .thirdparty-register-bind .title {font-size: 40px;margin: 20px auto; font-family: inherit;}
        .thirdparty-register-bind h5{ letter-spacing: -1.4px;color: #19b28a;font-size: 24px;margin: 10px auto;text-transform: inherit;font-family: inherit;}
        .thirdparty-register-bind .reveal-button2{margin-top: 20px;}
        .showRegisterBtn{display:inline-block; padding: 8px 30px;border-radius: 1000px;color: #fff;font-size: 20px;background: #1bb38c !important;}
    </style>
</head>

<body class="index">
<%@include file="/WEB-INF/views/common/top.jsp" %>

<div class="main-wrapper thirdparty-register-bind">
    <div class="title text-center">Hi,${requestScope.qqUserName} Welcome to KANWOKANWO</div>
    <div class="md-effect-1 reveal-modal oauth-modal md-show" id="content">

    </div>
</div>

<%@ include file="/WEB-INF/views/common/bottom.jsp"%>

<script type="text/template" id="bind_template">
    <div class="md-content">
        <h4 class="lead-in">BIND TO YOUR ACCOUNT</h4>
        <span>Last step: bind your (*Wechat/Weibo/QQ*) to an existing account.</span>
        <form>
            <h5>Enter an existing account:</h5>
            <label>Mobile Number/Email <span class="tip-error-text" id="bindLoginNameTip"></span></label>
            <input type="text" id="bindLoginName">

            <label>Password (8 characters minimum)<span class="tip-error-text" id="bindPwdTip"></span></label>
            <input type="password" id="bindPwd">

            <input type="button" value="Bind" class="reveal-button2" id="bindBtn">
        </form>
        <label class="small-text">Don't have an account?</label>
        <a class="showRegisterBtn" href="javascript:;" id="showRegisterBtn">Sign up</a>
    </div>
</script>
<script type="text/template" id="register_template">
    <div class="md-content">
        <h4 class="lead-in">CREATE TO YOUR ACCOUNT</h4>
        <span>Creat a kanwokanwo account and bind to your (*Wechat/Weibo/QQ*).</span>
        <form>
            <label>Mobile Number / Email<span class="tip-error-text" id="registerLoginNameTip"></span></label>
            <input name="loginName" type="text" id="registerLoginName">

            <span id="mobileVerfiCode" style="display: none;">
                <label>Mobile Number/Email <span class="tip-error-text" id="oauthregisterSendVCodeTip"></span></label>
                <input style="width: 40%;" name="verificationCode" type="text" id="oauthregisterSendVCode" maxlength="4">
                <a id="oauthsendMobileVerifyCodeBtn" href="javascript:$('#oauthsendMobileVerifyCodeImg').attr('src', '/sendMobileRandomCode?q=' + Math.random());">
                    <img id="oauthsendMobileVerifyCodeImg" src="/sendMobileRandomCode" />
                </a>

                <label>Password (8 characters minimum)<span class="tip-error-text" id="registerOauthCodeTip"></span></label>
                <input style="width: 40%;" name="verificationCode" type="text" id="registerCode">
                <input style="width: 40%;" class="reveal-button2" name="sendVerifCode" type="button" id="sendOauthVerifCode" value="Get verification code">
            </span>

            </span>

            <label>Password (8 characters minimum)<span class="tip-error-text" id="registerOauthPwdTip"></span></label>
            <input name="password" type="password" id="registerOauthPwd">

            <label>Name<span class="tip-error-text" id="registerOauthNameTip"></span></label>
            <input name="name" type="text" id="registerOauthName">

            <input type="button" value="Sign up" class="reveal-button2" id="registerBtn">
        </form>
        <label class="small-text">Already have an account? </label>
        <a class="showRegisterBtn" href="javascript:;" id="showBindBtn">Bind</a>
    </div>
</script>
<script type="text/javascript" src="/js/oauth.js?version=201604271351"></script>
</body>
</html>