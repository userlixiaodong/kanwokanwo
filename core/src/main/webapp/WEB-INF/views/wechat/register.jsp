<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>绑定账号</title>
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link rel="stylesheet" href="/style/wechat/login.css" />
  </head>

  <body class="radial">
	<div class="radial-top">绑定账号，第一时间获取学校通知和动态</div>
	<div class="new_wrapper">
		<div class="login-top">完善以下内容，立即加入看我看我</div>
		<div class="new_register">
			<input type="text" id="mobile" placeholder="手机：输入手机号，其他用户不可见" class="border_btm top-radius">
			<input type="password" id="password" placeholder="密码" class="border_btm">
            <input type="text"  placeholder="请输入用户名" id="userName" class="border_btm" />

			<input type="text"  placeholder="请输入右侧验证码" id="mobileVerifyCode" name="randomNum" class="border_btm" style="width: 60%;" />
			<a href="javascript:;"  id="mobileVerifyCodeImg" class="bttom-radius fr" style="width: 30%;">
                <img id="mobileRandomImg" src="/sendMobileRandomCode"/>
            </a>

			<input type="text" id="randomNum" placeholder="验证码：查收短信，填入验证码" class="bttom-radius fl width-60" maxlength="16">
			<input type="button" id="getRandomNumBtn" class="bttom-radius fr width-38" value="获取验证码">
			<p class="clear"></p>
		</div>
		<input type="button" class="btn_green" id="registerBtn" value="立即注册">
		<div class="register_text">已有账号？ </div>
		<a href="/wechat_toBind.html" class="btn_green_border">立即绑定</a>
		<div class="register_text mar-t-20">绑定后，可以随时接收您所关注学校的通知和动态，不错过任何重要信息</div>
	</div>
	<script type="text/javascript" src="/js/zepto.min.js"></script>
	<script type="text/javascript" src="/js/touch.js"></script>
  	<script>
		$(function(){
            var openId = '${sessionScope.openId}';
			if (!openId) {
				alert('获取信息失败,请重试!');
				WeixinJSBridge.invoke('closeWindow',{},function(res){});
			}

            var mobileReg = /((13[0-9])|(15[^4,\D])|(18[0,5-9]))\d{8}$/;
            $('#registerBtn').tap(function(){
                var mobile = $('#mobile').val();
                var password = $('#password').val();
                var userName = $('#userName').val();
                var randomNum = $("#randomNum").val();
                if (!mobileReg.test(mobile)) {
                    alert('手机号码格式错误!');
                    return;
                }
                if ($.trim(password).length <= 0) {
                    alert('密码不得为空!');
                    return;
                }
                if ($.trim(userName).length <= 0) {
                    alert('用户名不得为空!');
                    return;
                }
                if (randomNum.length != 6) {
                    alert('手机验证码格式错误!');
                    return;
                }
                $.ajax({
                    url: '/user/mobile-register-submit',
                    type: 'POST',
                    data: {'mobile': mobile, 'verificationCode': randomNum, 'password': password, 'userName': userName},
                    success: function(data) {
                        data = $.parseJSON(data);
                        if (data.status == 1) {
                            $.ajax({
                                url: '/oauth/bind',
                                type: 'POST',
                                data: {'loginName': mobile, 'password': password},
                                success: function (data) {
                                    data = $.parseJSON(data);
                                    if (data.status == 1) {
                                        location.href = '/' + data.data;
                                    } else {
                                        alert(data.message);
                                    }
                                }
                            });
                        } else {
                            alert(data.message);
                        }
                    }
                })
            });

            var sendVerifiFlag = false;
            var intervalTime = 180; // 180s
            var currentSecond = intervalTime;
            var timer = null;
            $('#getRandomNumBtn').tap(function(){
                if (sendVerifiFlag) {
                    return;
                }
                var mobile = $('#mobile').val();
                var mobileVerifyCode = $('#mobileVerifyCode').val();
                if (!mobileReg.test(mobile)) {
                    alert('手机号码格式错误!');
                    return;
                }
                if (mobileVerifyCode.length != 4) {
                    alert('请输入验证码!');
                    return;
                }
                var url = '/user/sendPhoneVerificationCode';
                sendVerifiFlag = true;
                $.ajax({
                    url: url,
                    data: {'mobile': mobile, 'verifyCode': mobileVerifyCode},
                    success: function(data) {
                        data = $.parseJSON(data);
                        if (data.status == 1) {
                            timer = setInterval(function () {
                                if (currentSecond < 0) {
                                    $('#getRandomNumBtn').val('获取验证码');
                                    window.clearInterval(timer);
                                    currentSecond = 1;
                                    currentSecond = intervalTime;
                                    sendVerifiFlag = false;
                                    return;
                                }
                                $('#getRandomNumBtn').val(currentSecond + 's');
                                currentSecond--;
                            }, 1000);
                        } else {
                            alert(data.message);
                        }
                        sendVerifiFlag = false;
                    }
                })
            });
            $('#mobileRandomImg').tap(function(){
                var item = $(this);
                item.attr('src', '/sendMobileRandomCode?time=' + Math.random());
            });
		});
  	</script>
  </body>
</html>
