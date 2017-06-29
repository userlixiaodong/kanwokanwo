<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>邮箱登录</title>
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
    <div class="avatarforEmail">
        <img src="/images/emailLogin.png">
        <p>邮箱登录</p>
    </div>
    <div class="loginPage pageForWechat">
        <div class="input-container">
            <input type="text" name="telphone" id="email" class="telphone" placeholder="请输入邮箱号" autocomplete="off">
            <p class="warns" id="warns1"></p>
        </div>
        <div class="input-container">
            <input type="text" name="telphone" id="pwd" class="telphone" placeholder="请输入密码" autocomplete="off">
            <p class="warns" id="warns2"></p>
        </div>
        <a href="/user/forgetPassword" class="forgetpwd">忘记密码？</a>
        <p class="welcome email-tips">
            <b>*</b> 网站系统升级，所有用户需要绑定手机号，绑定之后您可以用手机号直接登录，更方便快捷哦~
        </p>
        <div class="apple-id">
            <div class="input-container">
                <input type="text" name="telphone" id="telphone" class="telphone" placeholder="请输入手机号" autocomplete="off">
                <p class="warns" id="warns3"></p>
            </div>
            <div class="input-container">
                <input type="text" name="identifyCode" id="identifyCode" class="identifyCode" placeholder="请输入验证码" autocomplete="off">
                <input type="button" value="获取验证码" class="getCode" id="getCode">
                <p class="warns" id="warns4"></p>
            </div>
        </div>
        <a href="javascript:;" id="loginBtn" class="btn loginBtn btnForEmail">登 录 / Login</a>
        <a href="/mobile/register" id="registerBtn" class="registerForEmail">注 册 / Register</a>
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
        //邮箱号失焦事件
        $("#email").blur(function () {
            var email = $("#email").val();
            var rege = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;//邮箱正则表达式
            if (!email || email == ""){
                $("#warns1")[0].innerText = "邮箱号不能为空！";
                return false;
            }else if(!rege.test(email)){
                $("#warns1")[0].innerText = "请输入正确格式的邮箱号码！";
                return false;
            }else{
                $("#warns1")[0].innerText = "";
            }
            //验证邮箱号是否存在，已存在则显示手机号项（class为apple-id的div），否则提示“该邮箱未注册看我看我账号”
            $.ajax({
                url: "/mobile/checkEmailAvail",
                data: {'email': email},
                type: 'POST',
                dataType: 'json',
                cache: false,
                async: false,
                success: function(data) {
                    if (data.status == 1) {
                        $(".apple-id").show();
                    }else if(data.status == 2){
                        //$("#warns1")[0].innerText = "该邮箱已经绑定了手机号请用手机号登录";
                    } else {
                        $("#warns1")[0].innerText = "该邮箱未注册看我看我账号";
                    }
                }
            });

        })
        //密码失焦事件
        $("#pwd").blur(function () {
            var pwd=$("#pwd").val();
            //var regp = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;//密码正则表达式（8~16位字母和数字）
           /* else if(!regp.test(pwd)){
                $("#warns2")[0].innerText = "请输入8~16位字母加数字组合！";
                return false;
            }*/
            if(!pwd || pwd==""){
                $("#warns2")[0].innerText = "请输入密码！";
                return false;
            }else {
                $("#warns2")[0].innerText = "";
            }
        });
        //手机号失焦事件
        $("#telphone").blur(function () {
            var telphone=$("#telphone").val();
            var reg = /(1[3-9]\d{9}$)/;//手机号正则表达式
            if (!telphone || telphone == ""){
                $("#warns3")[0].innerText = "手机号不能为空！";
                return false;
            }else if(!reg.test(telphone)){
                $("#warns3")[0].innerText = "请输入正确格式的手机号码！";
                return false;
            }else{
                $("#warns3")[0].innerText = "";
            }
        });
        //获取验证码事件对手机号进行验证
        $("#getCode").on("click",function () {
            var intervalTime = 180; // 180s
            var currentSecond = intervalTime;
            var timer = null;
            var telphone=$("#telphone").val();
            var reg = /(1[3-9]\d{9}$)/;//手机号正则表达式
            if (!telphone || telphone == ""){
                $("#warns3")[0].innerText = "手机号不能为空！";
                return false;
            }else if(!reg.test(telphone)){
                $("#warns3")[0].innerText = "请输入正确格式的手机号码！";
                return false;
            }else{
                $("#warns3")[0].innerText = "";
                //time(this);
                $.ajax({
                    url: '/mobile/sendPhoneVerificationCode',
                    data: {'mobile': telphone,'flag':'forgetPassword'},
                    type: 'POST',
                    dataType: 'json',
                    success: function(data) {
                        if (data.status == 1) {
                            // 发送验证码成功
                            timer = setInterval(function(){
                                if (currentSecond < 0) {
                                    // $('#sendVerifCode').val('Get verification code');
                                    window.clearInterval(timer);
                                    currentSecond = 1;
                                    currentSecond = intervalTime;
                                    sendVerfiFlag = false;
                                    return;
                                }
                                //$('#getCode').val(currentSecond + 's');
                                if(currentSecond==0){
                                    $('#getCode').val("重新发送");
                                }else {
                                    $('#getCode').val("重新发送(" + currentSecond + ")");
                                }
                                currentSecond--;
                            }, 1000);
                        } else {
                            $('#sendMobileVerifyCodeImg').attr('src', '/sendMobileRandomCode?q=' + Math.random());
                            sendVerfiFlag = false;
                            //alert(data.message);
                        }
                    },
                    error: function() {
                        sendVerfiFlag = false;
                    }
                })
            }
        });
        //验证码失焦事件
        $("#identifyCode").blur(function () {
            var identifyCode=$("#identifyCode").val();
            if(!identifyCode || identifyCode==""){
                $("#warns4")[0].innerText = "验证码不能为空！";
                return false;
            }
        });

        //登录验证
        $("#loginBtn").on("click", function () {
            var display=$(".apple-id").css('display');
            var telphone = $("#telphone").val();
            var password = $("#pwd").val();
            var reg = /(1[3-9]\d{9}$)/;//正则表达式
            //console.log(display)
            if(display!="none"){
                if (!telphone || telphone == "") {
                    $("#warns1")[0].innerText = "手机号不能为空！";
                    return false;
                } else if (!reg.test(telphone)) {
                    $("#warns1")[0].innerText = "请输入正确格式的手机号码！";
                    return false;
                } else {
                    $("#warns1")[0].innerText = "";
                }
            }
            if(!password || password==""){
                $("#warns2")[0].innerText = "请输入密码！";
                return false;
            }else {
                $("#warns2")[0].innerText = "";
            }
            $.ajax({
                url: '/mobile/bind-submit',
                data: {
                    mobile: $('#telphone').val(),
                    userPwd: $('#pwd').val(),
                    email:$('#email').val()
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
