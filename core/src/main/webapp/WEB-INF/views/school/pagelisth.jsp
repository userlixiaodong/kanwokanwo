<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <%--<link href="/style/public.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="/style/frame.css" rel="stylesheet" type="text/css">--%>
    <%--<link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>--%>
    <%--<link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>--%>
    <%--<link href="/style/student.css" rel="stylesheet" type="text/css">--%>
    <%--<link rel="stylesheet" type="text/css" href="/style/jquery.ui.datepicker.css"/>--%>
    <%--<link rel="stylesheet" type="text/css" href="/style/splitpage.css"/>--%>
    <%--<link rel="stylesheet" type="text/css" href="/style/frame.css?20160422"/>--%>
    <%--<link rel="stylesheet" type="text/css" href="/style/public.css?20160421"/>--%>
    <%--<link rel="stylesheet" type="text/css" href="/style/search.css"/>--%>
    <link href="/style/student.css" rel="stylesheet" type="text/css"><%--搜索框引用文件--%>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160422"/>
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160421"/>

    <style>
        *{
            margin:0;
            padding:0;
        }
        ul{
            list-style: none;
        }
        .video-center{
            width: 1140px;
            margin:0 auto;
            padding:20px;
        }
        .video-center p{
            text-align: center;
            font-family: "Microsoft YaHei";
            font-size: 13px;
        }
        .highSchool-video h2{
            height:50px;
            line-height:50px;
            font-size: 30px;
            color: #3d3d3d;
            font-family: "Microsoft YaHei";
            border-left: 10px solid #04bc8e;
            padding-left: 10px;
            margin-left:15px;
            font-weight:normal;
            margin-top:15px;
        }
        .highSchool-video,.university-video,.postgraduate-video{
            width: 1060px;
            clear: both;
            margin: 40px auto;
            padding: 0;
            background: #ffffff;
            margin-bottom: 4rem;
        }
        .highSchool-video ol{
            list-style-type:none;
            width:100%;
            height:auto;
            text-align: center;
            margin:0;
            padding:0;
            background-color: #0aaa82;
        }
        .highSchool-video ol li,
        .university-video ol li,
        .postgraduate-video ol li{
            float: left;
            width:24%;
            height:340px;
            /*margin-top:15px;*/
            margin-left:8px;
        }
        .highSchool-video-a{
            display: block;
            padding:40px;
            border-radius: 10px;
            background-color: #f6f6f6;
        }
        /*.highSchool-video ol li:last-child,*/
        /*.university-video ol li:last-child,*/
        /*.postgraduate-video ol li:last-child{*/
        /*float: left;*/
        /*margin-left:50px;*/
        /*}*/
        .highSchool-video ol li span,
        .university-video ol li span,
        .postgraduate-video ol li span{
            display: block;
            width:auto;
            height:40px;
            text-align: center;
            position: relative;
            top:20px;
        }
        .video-decoretion{
            text-decoration: none;
            display: block;
            color: #333;
            line-height:40px;
            font-size:14px;
        }
        .highSchool-video em{
            display: block;
            border-bottom: 1px solid #dddddd;
            margin: 15px;
        }
        .add-my-video p{
            /*width: 255px;*/
            text-align: center;
        }
        .pagination-sm > li > a, .pagination-sm > li > span{
            font-size: 18px !important;
        }
        form{
            float: right;
            margin-right: 20px;
        }
        .search-bar{
            width: 300px;
            height: 35px;
            line-height: 35px;
            font-size: 12px;
            padding-left:10px;
            border: 1px solid #9d9d9d;
        }
        .search-btn{
            width: 50px;
            height: 35px;
            line-height: 35px;
            background: #04bc8e;
            border:none;
            color: #ffffff;
            font-family: "Microsoft YaHei";
        }
        input:-webkit-autofill{
            width:300px !important;
        }
        @media screen and (max-width:1150px ){
            .video-center{
                width: 625px;
                margin:0 auto;
                padding:20px;
            }
        }
        @media screen and (max-width:1024px ){
            .highSchool-video, .university-video, .postgraduate-video{
                width: 88%;
            }
            .highSchool-video ol li, .university-video ol li, .postgraduate-video ol li{
                width: 25%;
                margin-left: 0;
            }
            .highSchool-video-a{
                margin: 1rem 1rem 0 1rem;
            }
            .video-decoretion{
                line-height: normal;
            }
        }
        @media screen and (max-width:768px ){
            .col-md-12{
                position: static;
            }
            .highSchool-video, .university-video, .postgraduate-video{
                margin-top: -2rem;
                padding-top:0.6rem;
                margin-bottom: 5.5rem;
            }
            .highSchool-video ol li, .university-video ol li, .postgraduate-video ol li{
                width: 50%;
                height: auto;
            }
            .highSchool-video-a{
                margin: 3rem 3rem 0 3rem;
                padding: 3rem;
            }
            .highSchool-video ol li span, .university-video ol li span, .postgraduate-video ol li span{
                position: static;
            }
        }
        @media screen and (max-width:414px ){
            .highSchool-video, .university-video, .postgraduate-video{
                width:94%;
            }
            .highSchool-video-a{
                margin: 1rem 1rem 0 1rem;
                padding: 2rem;
            }
            .highSchool-video h2{
                font-size: 2.2rem;
                border-left: 0.6rem solid #04bc8e;
                height: auto;
                line-height: 3.2rem;
            }
        }

    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>


<section class="container-fluid" style="background: #f0f0f0;">

    <div class="video-center" >

       <%--<div>--%>
            <%--<form action="/video/pagelistu" method="post" accept-charset="UTF-8">--%>
                 <%--<c:choose>--%>
                     <%--<c:when test="${keywords == null}">--%>
                         <%--<input name="keywords" value="搜索高中视频"  class="search-bar"><input type="submit" value= "搜索" class="search-btn"/>--%>
                     <%--</c:when>--%>
                     <%--<c:otherwise>--%>
                         <%--<input name="keywords" value="${keywords}"  class="search-bar"><input type="submit" value= "搜索" class="search-btn"/>--%>
                     <%--</c:otherwise>--%>
                 <%--</c:choose>--%>
             <%--</form>--%>
         <%--</div>--%>

        </div>
        <div class="highSchool-video">
            <h2>高中</h2>
            <em></em>
        <ol class="highSchool-video-ul">
           <c:forEach var="high" items="${page.data}" >
                <li>
                    <a href="/${high.publicUri}" target="_blank" class="highSchool-video-a">
                       <c:if test="${not empty high.biography.avatar}">
                            <c:set var="string1" value="${high.biography.avatar}"/>
                            <c:set var="string2" value="${fn:replace(string1,'focusedu.oss-cn-hangzhou.aliyuncs.com' , 'img-cdn.kanwokanwo.com')}"/>
                            <img src="${string2}@1e_1c_0o_0l_200h_200w_80q.src">
                        </c:if>
                        <c:if test="${ empty high.biography.avatar}">
                            <img src="../../../images/school_1.png">
                        </c:if>

                    </a>
                    <span><a title="${high.biography.name}" href="/${high.publicUri}" target="_blank" class="video-decoretion">${high.biography.name}</a></span>
                </li>
            </c:forEach>
        </ol>
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


</section>
<%--<div class="clearfix"></div>--%>

<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script src="/js/video.js"></script>
<script src="/js/myVideo.js"></script>
<script src="/js/video-popup.js?20160512"></script>
<script type="application/javascript">

    $(function () {

    })
</script>
</body>
</html>
