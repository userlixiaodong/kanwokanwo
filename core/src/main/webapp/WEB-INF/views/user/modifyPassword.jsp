<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
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
                <i class="star">*</i>
                <span>请输入原始密码</span>
                <input type="password" name="password" id="pwd" class="telphone" placeholder="" autocomplete="off">
                <p class="warns" id="warns1"></p>
            </div>
            <div class="input-container">
                <i class="star">*</i>
                <span>请输入新密码</span>
                <input type="password" name="password" id="pwdn" class="telphone" placeholder="" autocomplete="off">
                <p class="warns" id="warns2"></p>
            </div>
            <div class="input-container">
                <i class="star">*</i>
                <span>请再次输入密码确认</span>
                <input type="password" name="password" id="pwdnt" class="telphone" placeholder="" autocomplete="off">
                <p class="warns" id="warns3"></p>
            </div>
            <br/>
            <p class="warns" id="warns4"></p>
            <a href="javascript:;" id="confirmBtn" class="btn registerBtn">确认修改 / Confirm change</a>
        </div>
    </div>
<%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>
<script type="text/javascript">

    var x=3;
    function go(){
        x--;
        if(x>0){
            document.getElementById("warns4").innerHTML= "修改密码成功"+x +"秒后自动跳到登录页面"; //每次设置的x的值都不一样了。
        }else{
            location.href='/mobile/login';
        }
    }
    $(function () {

        //确认修改提交
        $("#confirmBtn").bind("click",function () {
            var pwd=$("#pwd").val();
            var pwdn=$("#pwdn").val();
            $.ajax({
                url: '/mobile/modifyPasswordSubmit',
                data: {"pwd":pwd,"pwdn":pwdn},
                type: 'POST',
                dataType: 'json',
                success: function(data) {
                    if (data.status == 1) {
                       // location.href="/mobile/login";
                        setInterval(go, 1000);
                    } else {

                    }
                },
                error: function() {
                    sendVerfiFlag = false;
                }
            })

        })


        //输入框边框颜色
        $(".input-container input").focus(function () {
            $(this).css("border-color", "#1bb38c");
        }).blur(function () {
            $(this).css("border-color", "transparent");
        });

        //输入原始密码失焦事件
        $("#pwd").blur(function () {
            var pwd=$("#pwd").val();
            var regp = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;//密码正则表达式（8~16位字母和数字）
            if (!pwd || pwd == ""){
                $("#warns1")[0].innerText = "原始密码不能为空！";
                return false;
            }else if(!regp.test(pwd)){
                $("#warns1")[0].innerText = "原始密码为以字母开头的6~18位字母和数字的组合！";
                return false;
            }else{
                $("#warns1")[0].innerText = "";
            }
        });
        //输入新密码失焦事件
        $("#pwdn").blur(function () {
            var pwdn=$("#pwdn").val();
            var regp = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;//密码正则表达式（8~16位字母和数字）
            if (!pwdn || pwdn == ""){
                $("#warns2")[0].innerText = "新密码不能为空！";
                return false;
            }else if(!regp.test(pwdn)){
                $("#warns2")[0].innerText = "输入密码为以字母开头的6~18位字母和数字的组合！";
                return false;
            }else{
                $("#warns2")[0].innerText = "";
            }
        });
        //确认密码失焦事件
        $("#pwdnt").blur(function () {
            var pwdn=$("#pwdn").val();
            var pwdnt=$("#pwdnt").val();
            if(!pwdnt || pwdnt==""){
                $("#warns3")[0].innerText = "请确认密码！";
                return false;
            }else if(pwdnt!==pwdn){
                $("#warns3")[0].innerText = "两次输入密码不同！";
                return false;
            }else {
                $("#warns3")[0].innerText = "";
            }
        })
        //输入框事件监测
        $("input:password").bind("input propertychange",function(){
            var pwd=$("#pwd").val();
            var pwdn=$("#pwdn").val();
            var pwdnt=$("#pwdnt").val();
            if (!pwd || pwd=="" || !pwdn || pwdn=="" || !pwdnt || pwdnt==""){
                $(".registerBtn").css("background","#999");
                return false;
            }else {
                $(".registerBtn").css("background","#1bb38c");
            }
        });
    })
</script>
</html>
