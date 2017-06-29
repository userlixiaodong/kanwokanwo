<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Search Results | KANWOKANWO</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">

    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160422"/>
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160421"/>
    <link rel="stylesheet" type="text/css" href="/style/search.css"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css"/>
    <link rel="stylesheet" type="text/css" href="/style/splitpage.css"/>
    <script src="/js/video.js"></script>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp"%>
<div class="search-list" style="margin-top: 80px;">
    <div class="row">
        <div class="clearfix search-header">
            <div class="col-md-12"><a href="javascript:history.back()"><i class="glyphicon glyphicon-arrow-left"></i>return</a></div>
        </div>
    </div>
    <div class="row">
        <div class="clearfix search-header search-header-bar">
            <div class="col-md-12"> <i class="glyphicon glyphicon-search"></i>
                <p class="search-description">Results matching "${q}"</p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="clearfix mt20">
            <c:forEach items="${page.data}" var="user">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="user-list">
                        <a href="/${user.studentprofile_publicUri}" target="_blank"><img src="${user.studentprofile_avatar == null ?"/images/defaultavatar.jpg":user.studentprofile_avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com').concat('@1e_1c_0o_0l_370h_370w_80q.src')}">
                            <dl class="user-masking-layer">
                                <dt>${user.studentprofile_name}</dt>
                                <dd>${user.studentprofile_currentSchool}</dd>
                            </dl>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row">
            <div class="clearfix search-page text-center">
                <div class="col-md-12">
                    <nav>
                        <div class="pages" id="divPage"></div>
                        <script type="text/javascript" src="/js/splitpage.js"></script>
                        <script type="text/javascript">
                            var pg = new showPages('pg');
                            $(document).ready(function() {
                                pg.argName = 'currentPage';
                                pg.pageCount = ${page.totalPage};//定义总页数(必要)
                                pg.printHtml('divPage');
                            });
                        </script>
                    </nav>
                </div>
            </div>
        </div>

    </div>
    <script>
var _hmt = _hmt || [];
(function() {
   var hm = document.createElement("script");
     hm.src = "//hm.baidu.com/hm.js?bbf35b4303ced08fa9af56df2c374a0d";
       var s = document.getElementsByTagName("script")[0];
         s.parentNode.insertBefore(hm, s);
         })();
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
     (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
       m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
         })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-75362333-1', 'auto');
  ga('send', 'pageview');
</script>
</body>
</html>
