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
    <link rel="stylesheet" href="/style/searchSchools.css">


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

        .searchForm{
            margin-right: 0;
        }
        .more{
            height: 62px;
        }
        .more button{
            margin: 1.45rem 0 0 0.75rem;
        }
        .more a{
            margin-top: 25px;
            background-size: 13%;
        }
        .term-filter{
            margin-right: 0;
        }

    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>


<section class="container-fluid" >

    <div class="highSchool-video container">

        <div class="searchBar">
            <form class="searchForm" role="search">
                <div class="searchGroup">
                    <input type="text" class="searchInput" placeholder="搜索学校名"
                           style="border-bottom-color: #0aaa82;box-shadow:0 0 1px rgb(24,173,146);">
                    <i class="searchButton">搜索</i>
                </div>
            </form>
        </div>

        <div class="conditions">
            <div class="term" id="t">
                <form class="term-filter">
                    <ul>
                        <li class="screen">
                            <label>学校类型：</label>
                            <input type="radio" name="schoolLevel" vlaue="1" id="schoolLevel1" class="schoolLevel">本科
                            <input type="radio" name="schoolLevel" vlaue="2" id="schoolLevel2" class="schoolLevel">高中
                            <input type="radio" name="schoolLevel" vlaue="3" id="schoolLevel3" class="schoolLevel">初中
                        </li>
                        <li class="secondary secondary1" id="secondary1">
                            <input type="checkbox" name="lodge" value="2">综合公立
                            <input type="checkbox" name="lodge" value="3">综合私立
                            <input type="checkbox" name="lodge" value="4">文理学院
                            <input type="checkbox" name="lodge" value="5">社区大学
                        </li>
                        <li class="secondary secondary2" id="secondary2">
                            <input type="checkbox" name="lodge" value="0">寄宿
                            <input type="checkbox" name="lodge" value="1">走读
                            <input type="checkbox" name="schoolsex" value="1">男校
                            <input type="checkbox" name="schoolsex" value="2">女校
                            <input type="checkbox" name="schoolsex" value="0">男女混校
                        </li>
                        <li class="secondary secondary3" id="secondary3">
                            <input type="checkbox" name="lodge" value="0">寄宿
                            <input type="checkbox" name="lodge" value="1">走读
                            <input type="checkbox" name="schoolsex" value="1">男校
                            <input type="checkbox" name="schoolsex" value="2">女校
                            <input type="checkbox" name="schoolsex" value="0">男女混校
                        </li>
                        <li class="screen">
                            <label>学生数量：</label>
                            <input type="radio" name="newbornNum" value="1">20000以上
                            <input type="radio" name="newbornNum" value="1">10000-20000
                            <input type="radio" name="newbornNum" value="1">3000-10000
                            <input type="radio" name="newbornNum" value="1">1000-3000
                            <input type="radio" name="newbornNum" value="1">500-1000
                            <input type="radio" name="newbornNum" value="1">500以下
                        </li>
                        <li class="screen">
                            <label>所在地区：</label>
                            <input type="checkbox" name="area" value="1"><i
                                style="color:#fc6364;font-style: normal;">纽约</i>
                            <input type="checkbox" name="area" value="2"><i style="color:#fc6364;font-style: normal;">加州</i>
                            <input type="checkbox" name="area" value="3"><i style="color:#fc6364;font-style: normal;">德州</i>
                            <input type="checkbox" name="area" value="1">东北
                            <input type="checkbox" name="area" value="2">东部其他
                            <input type="checkbox" name="area" value="3">西部
                            <input type="checkbox" name="area" value="4">中部
                            <input type="checkbox" name="area" value="5">南部
                        </li>
                        <li class="screen">
                            <label>地域类型：</label>
                            <input type="checkbox" name="settings" value="1">大城市
                            <input type="checkbox" name="settings" value="2">中小城市
                            <input type="checkbox" name="settings" value="3">郊区
                            <input type="checkbox" name="settings" value="4">小镇/乡村
                        </li>
                        <li class="screen">
                            <label>是否早申：</label>
                            <input type="radio" name="ed" vlaue="1">是
                            <input type="radio" name="ed" vlaue="0">否
                        </li>
                        <li class="screen" id='tuofu'>
                            <label>最低托福：</label>
                            <input type="checkbox" name="toeflscore" value="1">100以上
                            <input type="checkbox" name="toeflscore" value="1">80-100
                            <input type="checkbox" name="toeflscore" value="1">80以下
                        </li>
                        <li class="screen" id="yasi">
                            <label>最低雅思：</label>
                            <input type="checkbox" name="ieltsScore" value="1">7以上
                            <input type="checkbox" name="ieltsScore" value="1">6-7
                            <input type="checkbox" name="ieltsScore" value="1">5-6
                            <input type="checkbox" name="ieltsScore" value="1">5以下
                        </li>
                        <li class="screen" id="sat">
                            <label>是否需要SAT成绩：</label>
                            <input type="radio" name="isSat" value="1">是
                            <input type="radio" name="isSat" value="0">否
                        </li>
                    </ul>
                </form>
            </div>

            <div class="more">
                <button>确定</button>
                <a href="javascript:;" id='moreOpt' onclick="change()">更多选项</a>
            </div>
        </div>

        <div class="resultsHeader">
            <span class="schoolNum">共找到${page.totalCount}所大学</span>
            <span class="clear">清空条件</span>
        </div>

        <ul>
            <c:forEach items="${page.data}" var="u">

                <li class="searchWrapper_li">
                    <ul class="searchItem">
                        <li class="searchItem_li">
                            <c:if test="${not empty u.biography.avatar}">
                                <c:set var="string1" value="${u.biography.avatar}"/>
                                <c:set var="string2" value="${fn:replace(string1,'focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}"/>
                                <img src="${string2}@1e_1c_0o_0l_200h_200w_80q.src">
                            </c:if>
                            <c:if test="${empty u.biography.avatar}">
                                <img src="/images/s1.png">
                            </c:if>
                        </li>
                        <li class="searchItem_li">
                            <h4>${u.biography.cname}</h4>
                            <h5>${u.biography.name}</h5>
                            <ul class="score">
                                <li class="searchText">托福成绩：100</li>
                                <li class="searchText">SAT成绩：1480-1590</li>
                                <li class="searchText">雅思成绩：7</li>
                            </ul>
                            <p class="searchText">每年学费：${u.application.tuition}</p>
                        </li>
                        <li class="searchItem_li">
                            <p>综合私立大学</p>

                            <p>国家综合大学- ${u.application.ranking}名</p>
                            <span>查看详情</span>
                        </li>
                    </ul>
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
<script type="text/javascript">
    // 点击加载更多选项
    $(function () {
        $("#tuofu").hide();
        $("#yasi").hide();
        $("#sat").hide();
        $("#moreOpt").click(function () {
            if ($(this).html() == "更多选项") {
                $("#tuofu").show();
                $("#yasi").show();
                $("#sat").show();
                $(this).text("点击收起");
                $(this).css("background", "url('/images/up.png') no-repeat 100px 15px");
                $(this).css("backgroundSize", "13%");
            } else {
                $("#tuofu").hide();
                $("#yasi").hide();
                $("#sat").hide();
                $(this).text("更多选项");
                $(this).css("background", "url('/images/down.png') no-repeat 100px 15px");
                $(this).css("backgroundSize", "13%");
            }
        });

        $("#schoolLevel1").checkBoxStyle({
            DomIdentifyingArr: ["#tuofu", "#yasi", "#sat"],
            curryAttr: {"disabled": false}
        });
        $("#schoolLevel2").checkBoxStyle({
            DomIdentifyingArr: ["#tuofu", "#yasi", "#sat"],
            curryStyle: {"cursor": "default", "background": "rgb(243,246,249)", "color": "#666"},
            curryAttr: {"disabled": "disabled"}
        });
        $("#schoolLevel3").checkBoxStyle({
            DomIdentifyingArr: ["#tuofu", "#yasi", "#sat"],
            curryStyle: {"cursor": "default", "background": "rgb(243,246,249)", "color": "#666"},
            curryAttr: {"disabled": "disabled"}
        });

//        $(".searchButton").on("click",function(){
//
//            $.ajax({
//                url:'',
//                type:'post',
//                dataType:'json',
//                data:{
//
//                },
//                success:function(data){
//
//                }
//            });
//        })

//    学校类型筛选
        for (var i = 1; i <= $("input[name=schoolLevel]").length; i++) {
            $("#schoolLevel" + i).on("click", function () {
                $(this).show();
            });
        }
        $(document).on("click", function () {
            var e = event || window.event;      //兼容IE和非IE的event
            var aim = e.srcElement || e.target;     //兼容IE和非IE的事件源
            for (var i = 1; i <= $("input[name=schoolLevel]").length; i++) {
                aim != $("#schoolLevel" + i)[0] && !$("#secondary" + i)[0].contains(aim) ? $("#secondary" + i).hide() : $("#secondary" + i).show();
                console.log($("#schoolLevel" + i)[0].contains(aim));
            }
        });


    });

</script>
<script>
    function change(){
        var mo=document.getElementById("t")
        mo.height(356);
    }
</script>
</body>
</html>
