<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="footer_nav pos_f tac">
  <ul>
    <li><a href="/school/${requestScope.admissionProfile.publicUri}"><i class="icon_xinxi_normal iconfont"></i><span>overview</span></a></li>
    <li><a href="/school/application/${requestScope.admissionProfile.publicUri}"><i class="icon_shenqing iconfont"></i><span>application</span></a></li>
    <li><a href="/school/myschool/${requestScope.admissionProfile.publicUri}"><i class="icon_xuexiao iconfont"></i><span>about</span></a></li>
    <li><a href="/school/ourstudent/${requestScope.admissionProfile.publicUri}"><i class="icon_xueshengjiachang iconfont"></i><span>students</span></a></li>
  </ul>
</div>
<script>
    $(function(){
        var url = location.href;
        if (url.indexOf('application') != -1) {
            $('.footer_nav ul li').eq(1).addClass('active');
        } else if (url.indexOf('myschool') != -1) {
            $('.footer_nav ul li').eq(2).addClass('active');
        } else if (url.indexOf('ourstudent') != -1) {
            $('.footer_nav ul li').eq(3).addClass('active');
        } else {
            $('.footer_nav ul li').eq(0).addClass('active');
        }
    });
</script>