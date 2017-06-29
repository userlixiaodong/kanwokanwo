<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Log in</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="email=no">
<link rel="stylesheet" type="text/css" href="/style/mobile/common.css"/>
<script id="initRem" type="text/javascript" src="/js/rem.js" init="768"></script>
<style type="text/css">
  .login-main {width: 100%; height: auto;padding: 10px;}
  .login-input {
      width: 100%;
      height: 40px;
      padding: 0 .1rem;
      border-radius: 0;
      margin-bottom: 3%;
      border: none;
      display: inline-block;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
      font-size: .34rem;
      line-height: 40px;
      border-radius: 3px;
      box-shadow: 0 0 0 1px #d7d7d7;
  }
    input:focus{
        box-shadow: 0 0 3px 1px #1bb38c;
    }
    .item_tit{
        font-size: 0.8rem;
        margin-bottom: 5%;
    }
    #loginBtn{
        background-color: #1bb38c;
        box-shadow: 0 0 0 1px #1bb38c;
        font-weight:bold;
        color: #fff;
    }
    .btn-change{
        background-color: #ffffff !important;
        color: #1bb38c !important;
    }
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/mobile/common/top_mobile.jsp" %>
<div class="login-main">
    <h3 class="item_tit tac pos_r">Log in</h3>
    <span class="red" id="errMsg"></span>
    <input class="login-input" type="text" value="" placeholder="Email/Mobile" id="loginName"><br/>
    <input class="login-input" type="password" value="" placeholder="password" id="password"><br/>
    <input class="login-input log-in" type="submit" value="Log in" id="loginBtn">
</div>
<%@ include file="/WEB-INF/views/mobile/common/bottom_mobile.jsp"%>
<script>
    $('.fr .login_in').hide();
    $('.school_top').hide()
    $('document').ready(function () {
        $('#loginBtn').click(function(){
            $('#loginBtn').addClass("btn-change");
            setTimeout(function(){
                $('#loginBtn').removeClass("btn-change");
            },100);
        });
    })
    $(function(){
        var redirectUrl = getRequest().redirectUrl;
        $('#loginBtn').tap(function(){
            var loginName = $('#loginName').val();
            var password = $('#password').val();
            if ($.trim(loginName).length <= 0) {
                alert('email or phone number can not be empty.');
                return;
            }
            if ($.trim(password).length <= 0) {
                alert('password can not be blank.');
                return;
            }
            $.ajax({
                type: 'POST',
                url: '/user/login-submit',
                data: {'loginName': loginName, 'userPwd': password},
                success: function(data) {
                    data = JSON.parse(data);
                    if (data.status == 1) {
                        if (!redirectUrl) {
                            redirectUrl = '/';
                        }
                        location.href = redirectUrl;
                    } else {
                        $('#errMsg').html(data.message);
                    }
                }
            })
        });
    });

    function getRequest() {
      var url = location.search; //获取url中"?"符后的字串
       var theRequest = new Object();
       if (url.indexOf("?") != -1) {
          var str = url.substr(1);
          strs = str.split("&");
          for(var i = 0; i < strs.length; i ++) {
             theRequest[strs[i].split("=")[0]]=(strs[i].split("=")[1]);
          }
       }
       return theRequest;
    }
</script>
</body>
</html>