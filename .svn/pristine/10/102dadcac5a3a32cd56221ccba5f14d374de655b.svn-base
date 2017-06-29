<%--
  Created by IntelliJ IDEA.
  User: szj
  Date: 2016/2/18
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>重置密码</title>
    <meta name="description" content="Nifty Modal Window Effects with CSS Transitions and Animations"/>
    <meta name="keywords" content="modal, window, overlay, modern, box, css transition, css animation, effect, 3d, perspective"/>
    <meta name="author" content="Codrops"/>
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/login.css"/>
</head>
<body>
<div class="user-login">
    <div class="md-content">
        <h4 class="lead-in">Reset Password</h4>

        <form action="/user/resetPassword" method="post">
            <label>Dear:${sessionScope.resetEmail}</label>
            <label>New Password<span class="tip-error-text" id="pwdTip"></span></label>
            <input name="password" type="password" id="pwd">
            <label>Confirm Password<span class="tip-error-text" id="rePwdTip"></span></label>
            <input name="rePassword" type="password" id="rePwd">
            <input type="button" value="Submit" class="reveal-button" id="resetPwd">
        </form>
    </div>
</div>
<script src="/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    $(function () {
        pwdFlag = false;
        rePwdFlag = false;

        $('#resetPwd').click(function () {
            if (pwdFlag && rePwdFlag) {
                $.ajax({
                    url: '/user/resetPassword',
                    data: {
                        email: '${sessionScope.resetEmail}',
                        password: $('#pwd').val()
                    },
                    type: 'post',
                    dataType: 'json',
                    success: function (result) {
                        if (result.status == 1) {
                            alert(result.message)
                            window.location.href = '/'
                        } else {
                            $('#pwdTip').html(result.message)
                        }
                    }
                })
            }
        })
        $("#pwd").blur(function () {
            checkPassword($(this).val())
        });
        $("#rePwd").blur(function () {
            checkRePassword($(this).val())
        });
    })
    function checkPassword(password) {//检查密码
        if (password == "") {
            $('#pwdTip').html("密码不能为空")
            pwdFlag = false;
        }
        else if (password.length < 8) {
            $('#pwdTip').html("密码至少应为八位!")
            pwdFlag = false;
        }
        else {
            $('#pwdTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
            pwdFlag = true;
        }
    }
    function checkRePassword(rePassword) {
        var password =  $("#pwd").val();
        if (rePassword == "") {
            $('#rePwdTip').html("确认密码不能为空!")
            rePwdFlag = false;
        }
        else if (rePassword != password) {
            $('#rePwdTip').html("确认密码与密码不一致!")
            rePwdFlag = false;
        }
        else {
            $('#rePwdTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
            rePwdFlag = true;
        }
    }
</script>
</body>
</html>


</body>
</html>
