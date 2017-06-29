<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>bind account</title>
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link rel="stylesheet" type="text/css"  href="/style/wechat/login.css" />
  </head>

  <body class="radial">
    <c:if test="${requestScope.isBind}">
        <div class="already-bind">
            <h1>您的微信号已经绑定到如下看我看我账号${requestScope.oauth.email}。</h1>
            <input class="unbind" type="button" value="解除绑定" id="unBindBtn">
        </div>
    </c:if>
    <c:if test="${requestScope.isBind == false}">
	    <div class="radial-top">绑定账号，第一时间获取学校通知和动态</div>
	    <div class="new_wrapper">
	    	<div class="login-top">输入看我看我账号及密码，即可绑定</div>
	    	<div class="new_register">
	    		<input type="text" placeholder="邮箱/手机号" id="loginName" class="border_btm top-radius">
	    		<input type="password" placeholder="密码" id="password" class="bttom-radius" maxlength="16">
	    	</div>
	    	<input type="button" id="bindBtn" class="btn_green" value="立即绑定">
	    	<div class="register_text">还没有看我看我账号？</div>
	    	<a href="/wechat_toRegister.html" class="btn_green_border">免费注册</a>
	    	<div class="register_text mar-t-20">为什么要微信绑定？</div>
	    	<div class="register_text">绑定后，可以随时接收您所关注学校的通知和动态，不错过任何重要信息</div>
	    </div>
    </c:if>
	<script type="text/javascript" src="/js/zepto.min.js"></script>
	<script type="text/javascript" src="/js/touch.js"></script>
	<script type="text/javascript">
		$(function(){
            <c:if test="${requestScope.isBind == false}">
			var openId = '${sessionScope.openId}';
			var isBind = ${requestScope.isBind};
			if (!openId) {
				alert('获取信息失败,请重试!');
				WeixinJSBridge.invoke('closeWindow',{},function(res){});
			}
			var emailReg = /^([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+\.(?:com|cn|net|edu|org)$/;
			var mobileReg = /((13[0-9])|(15[^4,\D])|(18[0,5-9]))\d{8}$/;
			$('#bindBtn').tap(function(){
				var loginName = $('#loginName').val();
				var password = $('#password').val();
				if (!emailReg.test(loginName) && !mobileReg.test(loginName)) {
					alert('邮箱或手机号格式错误!');
					return;
				}
				if ($.trim(password).length <= 0) {
					alert('请输入密码!');
					return;
				}
				$.ajax({
					url: '/oauth/bind',
					type: 'POST',
					data: {'loginName': loginName, 'password': password},
					success: function(data) {
						data = $.parseJSON(data);
                        <%-- TODO 这种做法不好,以后再改 --%>
                        if (data.status == 1) {
                            alert('绑定成功!');
                            WeixinJSBridge.invoke('closeWindow',{},function(res){});
                        } else {
                            if (data.message == 'Invalid email address or password!') {
                                alert('账号密码错误!');
                            } else {
                                alert('绑定失败,请重试!');
                                WeixinJSBridge.invoke('closeWindow',{},function(res){});
                            }
                        }
					}
				})
			});
            </c:if>
            <c:if test="${requestScope.isBind == true}">
            $('#unBindBtn').tap(function(){
                if (window.confirm('解绑后，您将不能在微信上收到学校的新通知提醒。是否解除绑定？')) {
                    $.ajax({
                        url: '/wechat/unBind',
                        type: 'GET',
                        data: null,
                        success: function (data) {
                            data = $.parseJSON(data);
                            alert(data.message);
                            WeixinJSBridge.invoke('closeWindow', {}, function (res) {
                            });
                        }
                    });
                }
            });
            </c:if>
		});
	</script>
  </body>
</html>
