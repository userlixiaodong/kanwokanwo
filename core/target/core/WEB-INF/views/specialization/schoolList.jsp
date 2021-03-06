<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="/style/staticlist.css?20170511000" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
    <title>看我看我活动专区</title>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="banner-wrapper" id="banner-wrapper">
    <div class="banner" id="banner">
        <ul class="imgList">
            <c:forEach items="${bannerList}" var="banner">
                <li><a href="/specialization/${banner.itemId}"><img src="${banner.bannerUrl}"></a></li>
            </c:forEach>
        </ul>
        <img src="/images/prev.png" width="20px" height="40px" id="prev">
        <img src="/images/next.png" width="20px" height="40px" id="next">
    </div>
</div>

<%--视屏更换为图片--%>
<div class="indexBanner" >
    <img src="/images/indexBanner01.jpg" style="width: 100%" alt="">
    <div class="cont">
        <h5>甄选优质活动，提升留学背景</h5>
        <p>学术、科研项目、国内顶级剧场实习，更多活动，<span>尽在看我看我</span></p>
    </div>
</div>
<div class="containerWrapper">
    <%--<div class="searchBar">
        <form class="searchForm"  id="searchForm" role="search" action="/specialization/search">
            <div class="searchGroup">
                <input type="text" class="searchInput" value="${keyWords}" name="keyWords" placeholder="请输入活动名称的关键字"
                       style="background-color: #f4f7f9;box-shadow:0 0 1px rgb(24,173,146);">
                <i class="searchButton">搜索</i>
            </div>
        </form>
      &lt;%&ndash;  &lt;%&ndash; <p class="hotSearch">热门搜索：CIS&nbsp;&nbsp;国关夏校&nbsp;&nbsp;硅谷语言学院</p>&ndash;%&gt;&ndash;%&gt;
    </div>--%>

    <div class="searchResults">
        <ul class="searchWrapper">
            <c:forEach items="${page.data}" var="item">
                <c:if test="${item.isDisplay==1}">
                        <li class="searchWrapper_li">
                            <ul class="searchItem">
                                <li class="searchItem_li s1">
                                    <a href="/specialization/${item.itemId}" target="_blank">
                                        <img src="${item.bitmap}">
                                        <c:if test="${item.itemType==0}">
                                            <span class="bef-aft">先到<br/>先得</span>
                                        </c:if>
                                        <c:if test="${item.itemType==1}">
                                            <span class="bef-aft">滚动<br/>申请</span>
                                        </c:if>
                                        <c:if test="${item.itemType==2}">
                                            <span class="bef-aft">先到<br/>先得</span>
                                        </c:if>
                                    </a>
                                </li>
                                <li class="searchItem_li s2">
                                    <a href="/specialization/${item.itemId}" class="search_li_dec" target="_blank">
                                        <h4> ${item.itemName}
                                            <c:if test="${item.itemNum!=0}">
                                               （仅剩  ${item.itemNum}  席）
                                            </c:if>
                                            <c:if test="${item.itemType==2}">
                                                <span class="end"><img src="/images/end.png" width="8%;"></span></h4>
                                            </c:if>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                           <c:set var="string1" value="${item.tag}"/>
                                           <c:set value="${ fn:split(string1, ',') }" var="str1" />

                                            <c:forEach items="${ str1 }" var="s">
                                                <span class="tag">${s}</span>
                                            </c:forEach>
                                        </h4>
                                        <p>活动时间：
                                            <fmt:formatDate value='${item.startDate}' pattern='yyyy-MM-dd'/> ~
                                            <fmt:formatDate value='${item.endDate}' pattern='yyyy-MM-dd'/>
                                        </p>
                                        <div class="score">
                                            <h5>简介：</h5>
                                            <span class="describe">
                                                    ${item.description}
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li class="searchItem_li">
                                    <span class="seeNum recNum">${item.chickNum}</span>

                                    <c:if test="${item.islive==0}">
                                        <span class="recorded"><a href="${item.videoUrl}"  target="_blank">观看录播</a></span>
                                    </c:if>
                                    <c:if test="${item.islive==1}">
                                        <span class="recorded"><a href="${item.liveUrl}"  target="_blank">观看直播</a></span>
                                    </c:if>
                                    <c:if test="${item.islive==2}">
                                        <span class="recorded" style="visibility: hidden"></span>
                                    </c:if>
                                </li>
                            </ul>
                            <c:if test="${item.isPrivilege==1}">
                                <div class='benefit'></div>
                            </c:if>
                        </li>

                </c:if>
                <%--<c:if test="${item.isDisplay==0}">

                        <li class="searchWrapper_li">
                            <ul class="searchItem">
                                <li class="searchItem_li s1">
                                    <img src="${item.bitmap}">

                                    <c:if test="${item.itemType==0}">
                                        <span class="bef-aft">先到先得</span>
                                    </c:if>
                                    <c:if test="${item.itemType==1}">
                                        <span class="bef-aft">滚动申请</span>
                                    </c:if>
                                    <c:if test="${item.itemType==2}">
                                        <span class="bef-aft">先到先得</span>
                                    </c:if>

                                </li>
                                <li class="searchItem_li s2">
                                    <h4> ${item.itemName}
                                        <c:if test="${item.itemNum!=0}">
                                            （仅剩  ${item.itemNum}  席）
                                        </c:if>
                                        <c:if test="${item.itemType==2}">
                                        <span class="end"><img src="/images/end.png" width="8%;"></span></h4>
                                    </c:if>
                                    </h4>
                                    <p>活动时间：
                                        <fmt:formatDate value='${item.startDate}' pattern='yyyy-MM-dd'/> ~
                                        <fmt:formatDate value='${item.endDate}' pattern='yyyy-MM-dd'/>
                                    </p>
                                    <div class="score" id="cut_str">
                                        <h5>简介：</h5>
                                        <span class="describe">
                                                ${item.description}
                                        </span>
                                    </div>
                                </li>
                                <li class="searchItem_li">
                                    <span class="seeNum recNum">${item.chickNum}</span>
                                    <c:if test="${item.islive==0}">
                                        <span class="recorded"><a href="${item.videoUrl}"  target="_blank">观看录播</a></span>
                                    </c:if>
                                    <c:if test="${item.islive==1}">
                                        <span class="recorded"><a href="${item.liveUrl}"  target="_blank">观看直播</a></span>
                                    </c:if>

                                </li>
                            </ul>
                            <c:if test="${item.isPrivilege==1}">
                                <div class='benefit'></div>
                            </c:if>

                        </li>

                </c:if>--%>

            </c:forEach>
        </ul>
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
<%@include file="/WEB-INF/views/common/bottom.jsp" %>

<script type="text/javascript">

    $(".searchButton").click(function () {
     var keyWord=$(".searchInput").val();
     if(keyWord ==""){
         }else {
     $("#searchForm").submit();
         }
     })
    //    轮播图
    var timer = null;
    var curIndex = 0;
    imgLen = $(".imgList li").length;   //轮播图总数
    imgWid = $(window).width();     //轮播图片宽度
    imgHei = $(".banner").height();    //轮播图片高度
    $(".imgList li img").css("width", imgWid);   //
    $(".imgList li img").css("height", imgHei);
    $(".imgList").css("width", imgWid * imgLen);
    $("#prev,#next").css("top", (imgHei * 0.5 - 20));
//    console.log(imgHei);

    var timer = setInterval(function () {
        if (curIndex < imgLen - 1) {
            curIndex++;
        } else {
            curIndex = 0;
        }
//        console.log(curIndex);
        // 调用变换处理函数
        changeTo(curIndex);
    }, 5000);

    //为左右箭头添加事件处理
    //左箭头滑入滑出事件处理
    $("#prev").hover(function () {
        //滑入清除定时器
        clearInterval(timer);
    }, function () {
        //滑出则重置定时器
        autoChangeAgain();
    });
    //左箭头点击处理
    $('#prev').on("click", function () {
        $(".imgList").css('marginLeft', -imgWid);
        $(".imgList>li").eq(2).prependTo($(".imgList"));
        $(".imgList").animate({marginLeft: "0px"}, 600);
    });
    //右箭头滑入滑出事件处理
    $("#next").hover(function () {
        //滑入清除定时器
        clearInterval(timer);
    }, function () {
        //滑出则重置定时器
        autoChangeAgain();
    });
    //右箭头点击处理
    $('#next').on("click", function () {
        $(".imgList").animate({marginLeft: -imgWid}, 600, function () {
            $(".imgList>li").eq(0).appendTo($(".imgList"));
            $(".imgList").css('marginLeft', '0px');
        });
    });
    //清除定时器时候的重置定时器——封装
    function autoChangeAgain() {
        timer = setInterval(function () {
            if (curIndex < imgLen - 1) {
                curIndex++;
            } else {
                curIndex = 0;
            }
            //调用变换处理函数
            changeTo(curIndex);
        }, 2500);
    }
    //图片切换处理函数
    function changeTo(num) {
        $(".imgList").animate({marginLeft: -imgWid}, 600, function () {
            $(".imgList>li").eq(0).appendTo($(".imgList"));
            $(".imgList").css('marginLeft', '0px');
        });
    }

//    简介文字超出字数用省略号代替
    $(function () {
        var strs = "";
        for (var i=0;i<$(".describe").length;i++){
            var str = $(".describe").eq(i).html();
            var s = str.length;
          /*  console.log(str);
            console.log(s);*/
            if(s > 100){
                strs = strs + $(".describe").eq(i).html(str.substr(0,220)+"......");
            }
        }
//        优惠200元
       /* $(".searchWrapper_li").eq(0).append("<div class='benefit'></div>");*/
    })
    function addView() {
        var windowW=$(window).width();
        if (windowW<=1024){
            $(".banner-wrapper").css('display','none');
            $(".indexBanner").css('display','block');
            $(".searchGroup").css('display','none');
            /*    $(".search_li_dec .tag:eq(0)").before("<br>");*/
            $(".search_li_dec").each(function (index,ele) {
                $(this).find(".tag:eq(0)").before("<br>")
            })
        }
    }
    addView()
    $("window").resize(function () {
    addView()
    })
</script>

</body>
</html>