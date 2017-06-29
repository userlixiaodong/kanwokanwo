<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello CV</h2>
<form action="/user/login-submit" method="post">
    邮箱<input type="text" name="email">
    密码<input type="password" name="userPwd">
    <input type="submit" value="登录">
</form>
<a href="/user/forgetPassword">忘记密码</a>
</body>
</html>
