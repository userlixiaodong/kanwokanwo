<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello CV 22344111111114!</h2>
<form action="/user/register-submit" method="post">
    用户名<input type="text" name="userName">
    邮箱<input type="text" name="email" id="email">
    密码<input type="password" name="userPwd">
    重复密码<input type="password" >
    <input type="submit" value="注册"><br>
</form>
验证码<input type="text" id="code"><div id="message"></div><button id="sendCode" >发送验证码</button><br>
<a href="/user/forgetPassword">忘记密码</a>
</body>
<script src="/js/jquery-1.7.2-min.js"></script>
<script type="text/javascript">
    $(function(){
        $('#sendCode').click(function(){
            $.ajax({
                url:'/user/sendValidateCode',
                data : {
                  email : $('#email').val()
                },
                dataType: "json",
                success : function(result){
                    alert(result.message);
                }
            })
        });
        $('#code').blur(function(){
            $.ajax({
                url:'/user/validateCode',
                data : {
                    email : $('#email').val(),
                    phoneCode : $('#code').val()
                },
                dataType: "json",
                success : function(result){
                    alert(result.message);
                }
            })
        })
    })
</script>
</html>
