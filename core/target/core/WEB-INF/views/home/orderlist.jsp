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
    <link href="/style/mobileOrderlist.css?20170511000" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
    <title>看我看我活动专区</title>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
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
        <h5 class="attention_title">我的订单</h5>
        <ul class="searchWrapper">
            <c:forEach items="${page.data}" var="item">
                    <li class="searchWrapper_li">
                        <p class="orderTime"><i>${fn:substring(item.createTime,"0","10")}</i><img src="/images/delete01.png" alt="" onclick="cancel('${item.orderNo}');"></p>
                        <ul class="searchItem clearfix">
                            <li class="searchItem_li s1">
                                <a href="/specialization/${item.itemId}" target="_blank">
                                    <img src="${item.bitmap}">
                                    <c:if test="${item.type==0}">
                                        <span class="bef-aft">先到<br/>先得</span>
                                    </c:if>
                                    <c:if test="${item.type==1}">
                                        <span class="bef-aft">滚动<br/>申请</span>
                                    </c:if>
                                    <c:if test="${item.type==2}">
                                        <span class="bef-aft">先到<br/>先得</span>
                                    </c:if>
                                </a>
                            </li>
                            <li class="searchItem_li s2">
                                <a href="/specialization/${item.itemId}" class="search_li_dec" target="_blank">
                                    <h4> ${item.itemName}
                                        <span></span>
                                    </h4>
                                    <p>活动时间：
                                            ${fn:substring(item.startDate,"0","10")}  ~
                                            ${fn:substring(item.endDate,"0","10")}
                                    </p>
                                    <div class="score">
                                        <%--<h5>标签：</h5>--%>

                                               <c:set var="string1" value="${item.tag}"/>
                                    <c:set value="${ fn:split(string1, ',') }" var="str1" />

                                    <c:forEach items="${ str1 }" var="s">
                                        <span class="tag">${s}</span>
                                    </c:forEach>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <a href="/specialization/${item.itemId}" target="_blank">
                            <p class="describe">
                            </p>
                        </a>
                        <p class="storeup-btn"><a href="/specialization/${item.itemId}">查看详情</a></p>
                    </li>
            </c:forEach>
        </ul>
    </div>

    <div class="pop_up">
        <p>好活动可遇不可求哦，您确定要取消订单吗</p>
        <a><span class="delete">确认</span><span class="cancel">取消</span></a>
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
    //01.收藏图标切换
    var flag=true;
    $(".storeup-btn span").click(function () {
        if(flag){
            $(this).children("img").attr("src","/images/storeup06.png");
            $(this).children("b").html("已收藏");
            $(this).children("b").css("color","#0aaa82");
            flag=false;
        }else if(!flag){
            $(this).children("img").attr("src","/images/storeup05.png");
            $(this).children("b").html("收藏");
            $(this).children("b").css("color","#aaa");
            flag=true;
        }
    });

    //02.点击事件弹出弹窗、取消点击、删除订单
    var that="";
//    $(".orderTime img").click(function () {
//        $(".pop_up").show();
//        var num=$(this).index();
//        that=$(this);
//        $(".pop_up .delete").click(function () {
//            cancelItem();
//            $(that).parent(".orderTime").parent("li").hide();
//            $(".pop_up").hide();
//        })
//    })
    $(".pop_up .cancel").click(function () {
        $(".pop_up").hide();
    });
    //02.1如果为报名成功的订单责删除按钮隐藏
    $(".searchItem_li h4 span").each(function (index,ele) {
        var text=$(this).html();
        if(text=="报名成功"){
            $(this).parents(".searchWrapper_li").children(".orderTime").children("img").hide()
        }
    });

    //   03. 简介文字超出字数用省略号代替
    $(function () {
        var strs = "";
        for (var i=0;i<$(".describe").length;i++){
            var str = $(".describe").eq(i).html();
            var s = str.length;
            /*  console.log(str);
             console.log(s);*/
            if(s > 100){
                strs = strs + $(".describe").eq(i).html(str.substr(0,120)+"......");
            }
        }
//        优惠200元
        /* $(".searchWrapper_li").eq(0).append("<div class='benefit'></div>");*/
    })
    $(".row").css("margin","0 auto")

    function cancel(orderNo) {
        $(".pop_up").show();
        var num=$(this).index();
        that=$(this);
        $(".pop_up .delete").click(function () {
            cancelItem(orderNo);

        })
    }

    function cancelItem(orderNo) {
        $.ajax({
            url: "/order/cancelOrder",
            data: {
                orderNo:orderNo
            },
            type: "get",
            dataType: 'json',
            success: function (data) {
                if(data.status==1){
                    location.reload();
                }
                else{
                    alert("删除失败");
                }
            }
        });
    }
</script>

</body>
</html>