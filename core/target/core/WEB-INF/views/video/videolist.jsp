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
    <style>
        .container-fluid{
            background-color:#f0f0f0 ;
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
            width: 255px;
         /*   position: absolute;*/
            text-align:left ;
            overflow: hidden;
            text-overflow: ellipsis;
            cursor: pointer;
            white-space: nowrap;
            padding-right: 1rem;
        }
        .video-center h2{
            margin:0;
            font-size: 30px;
            color: #3d3d3d;
            font-family: "Microsoft YaHei";
            border-left: 10px solid #04bc8e;
            padding-left: 10px;
            font-weight:normal;
            display: inline-block;
        }
        .video-center .more{
            float: right;
            margin-top: 20px;
            margin-right: 10px;
            display: inline-block;
            color: #04bc8e;
        }
        .highSchool-video,.university-video,.postgraduate-video{
            clear: both;
            margin: 20px;
            padding: 10px;
            background: #ffffff;
        }
        .video-list li{/*.university-video li,*/
            float: left;
           width: 25%;
        }

        .video-center em{
            display: block;
            border-bottom: 1px solid #dddddd;
            margin: 15px;
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
        .add-my-video .inspireVideo img, .suggestions-my-video .inspireVideo img {
            width: 100%;
        }
        @media screen and (max-width:1150px ){
            .video-center{
                width: 625px;
                margin:0 auto;
                padding:20px;
            }
            .video-list li{/*.university-video li,*/
                width: 50%;
                margin-bottom: 5rem;
            }
        }
        @media screen and (max-width:1024px ){
            .video-center {
                width: 64rem;
            }

            .search-btn{
                height: 36px;
            }
            .video-list li{/*.university-video li,*/
                width: 50%;
                margin-bottom: 5rem;
                height: 18rem;
            }
            .video-list li p{
                overflow: auto;
                text-overflow: initial;
                white-space: inherit;
                text-align: left;
                width: 100%;
            }
            .add-my-video{
                height: auto;
            }
        }
        @media screen and (max-width:767px ){
            .video-center h2{
                font-size: 2.4rem;
            }
            .video-center {
                width: 100%;
                margin: 0 auto;
            }
            .add-my-video .inspireVideo img{
                width: 27.5rem;
            }
            .video-center form{
                width: 90%;
            }
            .video-center form input:nth-child(1){
                width:80%;
            }
            .video-center form input:nth-child(2){
                width:20%;
            }
            .highSchool-video, .university-video, .postgraduate-video {
                clear: both;
                margin: 20px 0;
                padding: 10px;
                background:#f0f0f0;
                width: 100%;
            }
        }
        @media screen and (max-width: 415px){
            .video-list li{/*.university-video li,*/
                width: 100%;
                margin-bottom: 3rem;
                height: auto;
            }
            /*右边浮窗样式start*/
            .offsideCustomer{
                width: 4.5rem;
                right: -2rem;
            }
            .sprite_weixin {
                width: 2.5rem;
            }
            .offsideCustomer a span {
                font-size: 0.6em;
                margin-left: -1.2rem;
                display: block;
                margin-top: -0.4rem;
                padding-bottom: 0.3rem;
            }
            .sprite {
                margin-right: 1rem;
                background-size: 90%;
                margin-top: -0.5rem;
            }
            .offsideCustomer li {
                margin-top: -0.5rem;
            }
            .offsideCustomer .color_t span{
                margin-top: 0.2rem;
                padding-bottom: 0;
            }
            .bgcolorP {
                left: -155px !important;
            }
            .leftScroll{
                right: 54px;
            }
            .ewn_wx {
                top: -52px;
            }
            .leftScroll li{
                margin-top: 0.5rem;
            }
            .bgcolorP .hotTel {
                display: block;
                margin-top: -0.9rem;
            }
            .bgcolorP .hotTel:nth-child(2){
                margin-top: -0.5rem;
            }
            /*右边浮窗样式end*/
        }
        @media screen and (max-width:375px ){
            .search-bar {
                width: 20rem;
            }
            .video-center h2 {
                font-size: 2rem;
            }
        }

        @media screen and (max-width: 320px) {

        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<section class="container-fluid" >

    <div class="video-center" >
        <div>
            <form action="/video/pagelist"  accept-charset="UTF-8">


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
        <div class="clearfix"></div>
        <div class="highSchool-video">

            <h2>高中视频</h2>
            <a href="/video/pagelistm" target="/video/pagelistm" class="more" >查看更多 &gt;&gt;</a>
            <em></em>
            <ul class="video-list">

                <c:forEach var="video" items="${listVideo1}">
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
            <div style="clear:both;"></div>
        </div>
        <div class="university-video">
            <h2>大学视频</h2>
            <a href="/video/pagelistu" target="/video/pagelistu" class="more">查看更多 &gt;&gt;</a>
            <em></em>
            <ul class="video-list">
                <c:forEach var="video2" items="${listVideo2}">
                    <li style="display: inline-block;padding-left: 0px;">
                        <div class="add-my-video">
                            <div class="details">
                                <div class="video-inspiration">
                                    <a class="inspireVideo video-container">
                                        <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//${video2.bitmap}" materialSrc="//${video2.videoLink}">
                                    </a>
                                </div>
                            </div>

                            <p>${video2.videoName}</p>
                        </div>

                    </li>
                </c:forEach>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="postgraduate-video">
            <h2>研究生视频</h2>
            <a href="/video/pagelistg" target="/video/pagelistg" class="more">查看更多 &gt;&gt;</a>
            <em></em>
            <ul class="video-list">
                <c:forEach var="video3" items="${listVideo3}">
                    <li>
                        <div class="add-my-video">
                            <div class="details">
                                <div class="video-inspiration">
                                    <a class="inspireVideo video-container">
                                        <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//${video3.bitmap}" materialSrc="//${video3.videoLink}">
                                    </a>
                                </div>
                            </div>

                            <p>${video3.videoName}</p>
                        </div>

                    </li>
                </c:forEach>
            </ul>
            <div style="clear:both;"></div>
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
    $(".video-list p").hover(function () {
        var text=$(this).text();
        $(this).attr("title",text)
    })
</script>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script src="/js/video.js"></script>
<script src="/js/myVideo.js"></script>
<script src="/js/video-popup.js?20160512"></script>
</body>
</html>
