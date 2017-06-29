<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改手机号</title>
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
            <div class="input-container">
                <p class="telphone-old"></p>
            </div>
            <div class="input-container">
                <input type="text" name="identifyCode" id="identifyCode" class="identifyCode" placeholder="请输入验证码" autocomplete="off">
                <input type="button" value="发送验证码" class="getCode" id="getCode">
                <p class="warns" id="warns1"></p>
            </div>
            <div class="input-container">
                <input type="text" name="telphone" id="telphone" class="telphone" placeholder="新手机号码" autocomplete="off">
                <p class="warns" id="warns2"></p>
            </div>
            <br/><br/>
            <p class="warns" id="warns3"></p>
            <a href="javascript:;" id="confirmBtn" class="btn registerBtn">确认修改 / Confirm change</a>
        </div>
    </div>
<%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>
<script type="text/javascript">
    //获取验证码倒计时
    var x=3;
    function go(){
        x--;
        if(x>0){
            document.getElementById("warns3").innerHTML= "修改手机号成功"+x +"秒后自动跳到登录页面"; //每次设置的x的值都不一样了。
        }else{
            location.href='/mobile/login';
        }
    }
    var wait=60;
    function time(o) {
        if (wait == 0) {
            o.removeAttribute("disabled");
            o.value="获取验证码";
            o.style="background:#1bb38c";
            wait = 60;
            } else {
            o.setAttribute("disabled", true);
            if(wait==0){
            o.value="重新发送";
            }else {
            o.value="重新发送(" + wait + ")";
            }
            o.style="background:#999";
            wait--;
            setTimeout(function() {
            time(o)
            },
            1000)
        }
    }
    document.getElementById("getCode").onclick=function(){
        //time(this);
        var mobile=$("#telphone").val();
        var intervalTime = 180; // 180s
        var currentSecond = intervalTime;
        var timer = null;
        $.ajax({
            url: '/mobile/sendPhoneVerificationCode',
            data: {'mobile': '','flag':'modifyMobileNumber'},
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
                        if(currentSecond==0){
                            $('#getCode').val("重新发送");
                        }else {
                            $('#getCode').val("重新发送(" + currentSecond + ")");
                        }
                        currentSecond--;
                    }, 1000);
                } else {
                    $('#sendMobileVerifyCodeImg').attr('src', '/sendMobileRandomCode?q=' + Math.random());

                }
            },
            error: function() {
                sendVerfiFlag = false;
            }
        })

    }
    $(function () {
        //确认修改提交
        $("#confirmBtn").bind("click",function () {
            var identifyCode=$("#identifyCode").val();
            var mobile=$("#telphone").val();
            $.ajax({
                url: '/mobile/modifyMobileNumberSubmit',
                data: {"identifyCode":identifyCode,"mobile":mobile},
                type: 'POST',
                dataType: 'json',
                success: function(data) {
                    if (data.status == 1) {
                        //location.href="mobile/login";
                        setInterval(go, 1000);
                    } else {

                    }
                },
                error: function() {

                }
            })

        })



        //输入框边框颜色
        $(".input-container input").focus(function () {
            $(this).css("border-color", "#1bb38c");
        }).blur(function () {
            $(this).css("border-color", "transparent");
        });
        //手机号验证
        $("#telphone").blur(function () {
            var telphone=$("#telphone").val();
            var reg = /(1[3-9]\d{9}$)/;//手机号正则表达式
            if (!telphone || telphone == ""){
                $("#warns2")[0].innerText = "手机号不能为空！";
                return false;
            }else if(!reg.test(telphone)){
                $("#warns2")[0].innerText = "请输入正确格式的手机号码！";
                return false;
            }else{
                $("#warns2")[0].innerText = "";
            }
        });
        //输入框事件监测
        $("input:text").bind("input propertychange",function(){
            var identifyCode=$("#identifyCode").val();
            var telphone=$("#telphone").val();
            if (!identifyCode || identifyCode=="" || !telphone || telphone==""){
                $(".registerBtn").css("background","#999");
                return false;
            }else {
                $(".registerBtn").css("background","#1bb38c");
            }
        });
    })
</script>
</html>
