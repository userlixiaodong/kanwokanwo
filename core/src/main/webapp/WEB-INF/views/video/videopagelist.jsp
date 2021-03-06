<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <link href="/style/public.css" rel="stylesheet" type="text/css">
    <link href="/style/frame.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>
    <link href="/style/student.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/style/jquery.ui.datepicker.css"/>
    <link rel="stylesheet" type="text/css" href="/style/splitpage.css"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160422"/>
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160421"/>
    <link rel="stylesheet" type="text/css" href="/style/search.css"/>

    <style>
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
        .video-center h2{
            margin:0;
            font-size: 30px;
            color: #3d3d3d;
            font-family: "Microsoft YaHei";
            border-left: 10px solid #04bc8e;
            padding-left: 10px;
            font-weight:normal;
        }
        .highSchool-video,.university-video,.postgraduate-video{
            width: 1060px;
            clear: both;
            margin: 20px auto;
            padding: 10px;
            background: #ffffff;
        }
        .highSchool-video li,.university-video li,.postgraduate-video li{
            float: left;
        }
        .video-center em{
            display: block;
            border-bottom: 1px solid #dddddd;
            margin: 15px;
        }
        .add-my-video p{
            width: 255px;
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
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>


<section class="container-fluid" style="background: #f0f0f0;">



    <div class="video-center" >

        <div>
            <form action="/video/pagelist" >
                <c:choose>
                    <c:when test="${keywords == null}">
                        <input name="keywords" value="搜索高中/本科/研究生视频"  class="search-bar"><input type="submit" value= "搜索" class="search-btn"/>
                    </c:when>
                    <c:otherwise>
                        <input name="keywords" value="${keywords}"  class="search-bar"><input type="submit" value= "搜索" class="search-btn"/>
                    </c:otherwise>
                </c:choose>
            </form>
        </div>


        </div>
        <div class="highSchool-video">

        <ul>
            <c:forEach var="video" items="${page.data}"  >
                    <li>
                        <div class="add-my-video">
                            <div class="details">
                                <div class="video-inspiration">
                                    <a class="inspireVideo video-container">
                                        <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//${video.bitmap}" materialSrc="//${video.videoLink}">
                                    </a>
                                </div>
                            </div>

                            <p>${video.videoName}</p>
                        </div>

                    </li>


            </c:forEach>
        </ul>
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
<div class="clearfix"></div>
<script>
    $(".search-bar").click(function () {
        $(this).css("box-shadow","0 0 5px 0 #04bc8e");
        $(this).val("");
    })
    $(".search-bar").blur(function () {
        $(this).css("box-shadow","0 0 0px 0 #04bc8e");
        if($(this).val() == ""){
            $(this).val("搜索高中/本科/研究生视频");
        }
    })
</script>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script src="/js/video.js"></script>
<script src="/js/myVideo.js"></script>
<script src="/js/video-popup.js?20160512"></script>
</body>
</html>
