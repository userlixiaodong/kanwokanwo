<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>微信登录</title>
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
    <p class="welcome">
        <b>欢迎你！<i>XXX，</i></b>完善一下信息，以后你可以<br/>使用手机号码登录看我看我了哦~
    </p>
    <div class="avatar">
        <img src="/images/phone-headImg.png">
    </div>
    <div class="loginPage pageForWechat">
        <div class="input-container">
            <p class="wechatTips">如果您是用邮箱注册的账号，请先登录绑定手机号</p>
            <input type="text" name="telphone" id="telphone" class="telphone" placeholder="请输入手机号" autocomplete="off">
            <p class="warns" id="warns1"></p>
        </div>
        <div class="input-container">
            <input type="text" name="identifyCode" id="identifyCode" class="identifyCode" placeholder="请输入验证码" autocomplete="off">
            <input type="button" value="获取验证码" class="getCode" id="getCode">
            <p class="warns" id="warns2"></p>
        </div>
        <div class="apple-id">
            <div class="input-container">
                <input type="text" name="username" id="username" class="telphone" placeholder="请输入用户名" autocomplete="off">
                <p class="warns" id="warns3"></p>
            </div>
            <div class="input-container">
                <input type="password" name="password" id="pwd" class="telphone" placeholder="设置密码" autocomplete="off">
                <p class="warns" id="warns4"></p>
            </div>
            <div class="input-container">
                <input type="password" name="password" id="pwdt" class="telphone" placeholder="确认密码" autocomplete="off">
                <p class="warns" id="warns5"></p>
            </div>
        </div>
        <div class="userAgreement">
            <input type="checkbox" id="agreementBtn">我已阅读并接受用户协议
        </div>
        <input type="button" id="loginsubmit" value="登 录 / Login" class="btn registerBtn">
    </div>
</div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>
<script type="text/javascript">
    //获取验证码倒计时
    var wait=60;
    function time(o) {
        if (wait == 0) {
            o.removeAttribute("disabled");
            o.value="获取验证码";
            o.style="background:#1bb38c";
            wait = 60;
        } else {
            o.setAttribute("disabled", true);
            o.value="重新发送(" + wait + ")";
            o.style="background:#999";
            $("#warns3")[0].innerText = "";
            wait--;
            setTimeout(function() {
                        time(o)
                    },
                    1000)
        }
    }

    $(function () {
        //输入框边框颜色
        $(".input-container input").focus(function () {
            $(this).css("border-color","#1bb38c");
        }).blur(function () {
            $(this).css("border-color","transparent");
        });
        //表单验证
        //手机号失焦事件
        $("#telphone").blur(function () {
            var telphone=$("#telphone").val();
            var reg = /(1[3-9]\d{9}$)/;//手机号正则表达式
            if (!telphone || telphone == ""){
                $("#warns1")[0].innerText = "手机号不能为空！";
                return false;
            }else if(!reg.test(telphone)){
                $("#warns1")[0].innerText = "请输入正确格式的手机号码！";
                return false;
            }else{
                $("#warns1")[0].innerText = "";
            }
            //输入手机号后验证用户是否存在，已存在则不显示用户名密码设置项（即class为apple-id的div），不存在则显示

        });
        //获取验证码事件对手机号进行验证
        $("#getCode").on("click",function () {
            var telphone=$("#telphone").val();
            var reg = /(1[3-9]\d{9}$)/;//手机号正则表达式
            if (!telphone || telphone == ""){
                $("#warns1")[0].innerText = "手机号不能为空！";
                return false;
            }else if(!reg.test(telphone)){
                $("#warns1")[0].innerText = "请输入正确格式的手机号码！";
                return false;
            }else{
                $("#warns1")[0].innerText = "";
                time(this);
            }
        });
        //验证码失焦事件
        $("#identifyCode").blur(function () {
            var identifyCode=$("#identifyCode").val();
            if(!identifyCode || identifyCode==""){
                $("#warns2")[0].innerText = "验证码不能为空！";
                return false;
            }
        });
        //用户名失焦事件
        $("#username").blur(function () {
            var username=$("#username").val();
            var regu = /^(?![0-9]+$)(?![a-zA-Z]+$)[A-Za-z]{1}[0-9A-Za-z]{5,17}$/;//用户名正则表达式（字母开头，以字母和数字组成）
            if (!username || username == ""){
                $("#warns3")[0].innerText = "用户名不能为空！";
                return false;
            }else if(!regu.test(username)){
                $("#warns3")[0].innerText = "请输入以字母开头的6~18位字母和数字为组合的用户名！";
                return false;
            }else{
                $("#warns3")[0].innerText = "";
            }
        });
        //设置密码失焦事件
        $("#pwd").blur(function () {
            var pwd=$("#pwd").val();
            var regp = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;//密码正则表达式（8~16位字母和数字）
            if(!pwd || pwd==""){
                $("#warns4")[0].innerText = "请输入密码！";
                return false;
            }else if(!regp.test(pwd)){
                $("#warns4")[0].innerText = "请输入8~16位字母加数字组合！";
                return false;
            }else {
                $("#warns4")[0].innerText = "";
            }
        });
        //确认密码失焦事件
        $("#pwdt").blur(function () {
            var pwd=$("#pwd").val();
            var pwdt=$("#pwdt").val();
            if(!pwdt || pwdt==""){
                $("#warns5")[0].innerText = "请确认密码！";
                return false;
            }else if(pwdt!==pwd){
                $("#warns5")[0].innerText = "两次输入密码不同！";
                return false;
            }else {
                $("#warns5")[0].innerText = "";
            }
        })
        //登录按钮提交事件
        $("#loginsubmit").bind("click", function () {
            var username = $("#username").val();
            var telphone = $("#telphone").val();
            var identifyCode=$("#identifyCode").val();
            var pwd=$("#pwd").val();
            var pwdt=$("#pwdt").val();
            var regu = /^(?![0-9]+$)(?![a-zA-Z]+$)[A-Za-z]{1}[0-9A-Za-z]{5,17}$/;//用户名正则表达式（字母开头，以字母和数字组成）
            var reg = /(1[3-9]\d{9}$)/;//手机号正则表达式
            var regp = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;//密码正则表达式（8~16位字母和数字）

            if (!telphone || telphone == ""){
                $("#warns1")[0].innerText = "手机号不能为空！";
                return false;
            }else if(!reg.test(telphone)){
                $("#warns1")[0].innerText = "请输入正确格式的手机号码！";
                return false;
            }else{
                $("#warns1")[0].innerText = "";
            }
            if(!identifyCode || identifyCode==""){
                $("#warns2")[0].innerText = "验证码不能为空！";
                return false;
            }
            if (!username || username == ""){
                $("#warns3")[0].innerText = "用户名不能为空！";
                return false;
            }else if(!regu.test(username)){
                $("#warns3")[0].innerText = "请输入以字母开头的6~18位字母和数字为组合的用户名！";
                return false;
            }else{
                $("#warns3")[0].innerText = "";
            }
            if(!pwd || pwd==""){
                $("#warns4")[0].innerText = "请输入密码！";
                return false;
            }else if(!regp.test(pwd)){
                $("#warns4")[0].innerText = "请输入8~16位字母加数字组合！";
                return false;
            }else {
                $("#warns4")[0].innerText = "";
            }
            if(!pwdt || pwdt==""){
                $("#warns5")[0].innerText = "请确认密码！";
                return false;
            }else if(pwdt!==pwd){
                $("#warns5")[0].innerText = "两次输入密码不同！";
                return false;
            }else {
                $("#warns5")[0].innerText = "";
            }
        });
        //用户协议监测事件
        $(":checkbox").change(function () {
            if ($(this).is(':checked')){
                $(".registerBtn").css("background","#1bb38c");
                $("#submit").disable = false;
            }else {
                $(".registerBtn").css("background","#999");
                $("#submit").disable = true;
                return false;
            }
        })

    })

</script>
</html>
