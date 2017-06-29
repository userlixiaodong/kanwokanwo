<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/8
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <script src="/js/jquery-2.2.1.min.js"></script>
    <script src="/js/bootstrap.js"></script>

    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link href="/style/myreserve.css" rel="stylesheet">
    <title>我的预约</title>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<section class="container-fluid">
    <div class="myapplication">
        <h2 class="application-title"><b>我的预约</b></h2>
        <div class="examples alumnus-hot col-lg-12">
            <div class="slider js_ease ease">
                <div class="frame js_frame">
                    <!--=============================2========================-->
                    <ul class="slides js_slides">
                        <c:choose>
                            <c:when test="${sessionScope.loginUser.roleR == 0}">

                                <c:forEach var="reservation" items="${reservationList}">
                                    <c:choose>
                                        <c:when test="${reservation.state == 0}">
                                            <!--=============================预约清单未付款1========================-->
                                            <li class="application-list non-payment">
                                                <div class="li-content">
                                                    <time>${fn:substring(reservation.reservationTime, 0, 16)}</time>
                                                    <h3>${reservation.tutorName}</h3>
                                                    <h5>${reservation.tutorSchool}</h5>
                                                    <h2><b>￥${reservation.cost}</b>/${reservation.reservationPeriod}分钟</h2>
                                                    <p title="${reservation.comments}">${reservation.comments}</p>
                                                    <a class="pay-for" onclick="payWin(${reservation.cost});">点击付款</a>
                                                    <p class="application-state" ></p>
                                                </div>
                                            </li>
                                            <!--=============================预约清单未付款2========================-->
                                        </c:when>
                                        <c:otherwise>
                                            <%--<!--=============================预约清单已付款========================-->--%>
                                            <li class="application-list ">
                                                <div class="li-content">
                                                    <time>${fn:substring(reservation.reservationTime, 0, 16)}</time>
                                                    <h3>${reservation.tutorName}</h3>
                                                    <h5>${reservation.tutorSchool}</h5>
                                                    <h2><b>￥${reservation.cost}</b>/${reservation.reservationPeriod}分钟</h2>
                                                    <p title="${reservation.comments}">${reservation.comments}</p>

                                                    <p class="application-state" >导师准备中···</p>
                                                </div>
                                            </li>
                                            <%--<!--=============================预约清单已付款========================-->--%>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <!--=============================历史预约清单========================-->
                                <c:forEach var="reservation" items="${historyReservationList}">

                                    <li class="application-list history">
                                        <div class="li-content">
                                            <time>${fn:substring(reservation.reservationTime, 0, 16)}</time>
                                            <h3>${reservation.tutorName}</h3>
                                            <h5>${reservation.tutorSchool}</h5>
                                            <h2><b>￥${reservation.cost}</b>/${reservation.reservationPeriod}分钟</h2>
                                            <p title="${reservation.comments}">${reservation.comments}</p>
                                            <p class="application-state" >(历史订单)</p>
                                        </div>
                                    </li>
                                </c:forEach>
                                <!--=============================历史预约清单========================-->

                            </c:when>
                            <c:otherwise>

                                <c:forEach var="reservation" items="${reservationList}">
                                    <!--=============================预约清单导师页面========================-->
                                    <li class="application-list">
                                        <div class="li-content">
                                            <time>${fn:substring(reservation.reservationTime, 0, 16)}</time>
                                            <h3>${reservation.userName}</h3>
                                            <h5></h5>
                                            <h2><b>￥${reservation.cost}</b>/${reservation.reservationPeriod}分钟</h2>
                                            <p title="${reservation.comments}">${reservation.comments}</p>

                                        </div>
                                    </li>
                                    <!--=============================预约清单导师页面========================-->
                                </c:forEach>
                                <!--=============================历史预约清单========================-->
                                <c:forEach var="reservation" items="${historyReservationList}">

                                    <li class="application-list history">
                                        <div class="li-content">
                                            <time>${fn:substring(reservation.reservationTime, 0, 16)}</time>
                                            <h3>${reservation.userName}</h3>
                                            <h5></h5>
                                            <h2><b>￥${reservation.cost}</b>/${reservation.reservationPeriod}分钟</h2>
                                            <p title="${reservation.comments}">${reservation.comments}</p>
                                            <p class="application-state" >(历史订单)</p>
                                        </div>
                                    </li>
                                </c:forEach>
                                <!--=============================历史预约清单========================-->
                            </c:otherwise>
                        </c:choose>

                    </ul>
                </div>
                <span class="js_prev prev">
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 501.5 501.5"><g><path fill="#2E435A" d="M302.67 90.877l55.77 55.508L254.575 250.75 358.44 355.116l-55.77 55.506L143.56 250.75z"/></g></svg>
                </span>

                <span class="js_next next">
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 501.5 501.5"><g><path fill="#2E435A" d="M199.33 410.622l-55.77-55.508L247.425 250.75 143.56 146.384l55.77-55.507L358.44 250.75z"/></g></svg>
                </span>
            </div>
        </div>
    </div>
    <div class="tutors-hot">
        <h2 class="tutor-title"><b>热门导师</b></h2>
        <div class="examples alumnus-hot col-lg-12">
            <div class="slider js_multislides multislides">
                <div class="frame js_frame">
                    <ul class="slides js_slides">
                        <li class="js_slide">
                            <div class="li-content">
                                <a href="/ZixiAn" target="_blank">
                                    <img src="../../../images/azx.jpg" width="250">
                                </a>
                                <b>Zixi An</b>
                                <span><img src="../../../images/carnegiemellonuniversity.jpg" width="30"><i>Carnegie Mellon University</i></span>
                                <p>As designing engineer of the club I participated with my group in the 2014 New York .</p>
                            </div>
                        </li>
                        <li class="js_slide">
                            <div class="li-content">
                                <a href="/huangcaiwei" target="_blank">
                                    <img src="../../../images/hcw.jpg" width="220">
                                </a>
                                <b>Caiwei Huang</b>
                                <span><img src="../../../images/EmoryUniversity.jpg" width="30"><i>Emory University</i></span>
                                <p>My research interest is in China’s
                                    energy policy and I have represe
                                    -nted Emory at United Nations
                                    Framework Convention.
                                </p>
                            </div>

                        </li>
                        <li class="js_slide">
                            <div class="li-content">
                                <a href="/lizongyi" target="_blank">
                                    <img src="../../../images/lzy.jpg" width="220">
                                </a>
                                <b>ZongYi Li</b>
                                <span><img src="../../../images/WashingtonUniversityinST.Louis.png" width="30"><i>Washington University</i></span>
                                <p>My name is Zongyi Li, Study at Washington University in St. Louis.
                                </p>
                            </div>
                        </li>
                        <li class="js_slide">
                            <div class="li-content">
                                <a  href="/liuhaoyang" target="_blank">
                                    <img src="../../../images/CrystalLiu.jpg" width="220">
                                </a>
                                <b>Crystal Liu</b>
                                <span><img src="../../../images/VanderbiltUniversity.png" width="30"><i>Vanderbilt University</i></span>
                                <p>毕业于人大附中，现为Vanderbilt大三学生，主修政治经济双学位，专功中美比较政治，曾在北京泰达宏利基金公司和华盛顿智库Brookings Institution担任暑期研究员。</p>
                            </div>
                        </li>
                        <li class="js_slide">
                            <div class="li-content">
                                <a href="/wanghaoyu" target="_blank">
                                    <img src="../../../images/why.png" width="220">
                                </a>
                                <b>HaoYu Wang</b>
                                <span><img src="../../../images/SwarthmoreCollege.jpg" width="30"><i>Swarthmore College</i></span>
                                <p>My name is Haoyu Wang, Study at Harvard Graduate School of Design.</p>
                            </div>
                        </li>
                        <li class="js_slide">
                            <div class="li-content">
                                <a href="/yushangdi" target="_blank">
                                    <img src="../../../images/ysd.JPG" width="220">
                                </a>
                                <b>Maria Yu</b>
                                <span><img src="../../../images/cornelluniversity.jpg" width="30"><i>Cornell University</i></span>
                                <p>I'm Maria Yu from Cornell University. Before college, I went to a high school in Pennsylvania for four years.</p>
                            </div>
                        </li>
                        <li class="js_slide">
                            <div class="li-content">
                                <a href="/zhanghaomiao" target="_blank">
                                    <img src="../../../images/zhh.png" width="220">
                                </a>
                                <b>HaoMiao Zhang</b>
                                <span><img src="../../../images/carnegiemellonuniversity.jpg" width="30"><i>Carnegie Mellon University</i>  </span>
                                <p>My name is Haomiao Zhang, Study at CARNEGIE MELLON UNIVERSITY .</p>
                            </div>
                        </li>
                        <li class="js_slide">
                            <div class="li-content">
                                <a href="/zhangwenrui" target="_blank">
                                    <img src="../../../images/zwr.JPG" width="220">
                                </a>
                                <b>WenRui Zhang</b>
                                <span><img src="../../../images/carnegiemellonuniversity.jpg" width="30"><i>Carnegie Mellon University</i></span>
                                <p>My name is Wenrui Zhang, Study atThe Experimental High School Attached to Beijing Normal University.</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <span class="js_prev prev">
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 501.5 501.5"><g><path fill="#2E435A" d="M302.67 90.877l55.77 55.508L254.575 250.75 358.44 355.116l-55.77 55.506L143.56 250.75z"/></g></svg>
                </span>

                <span class="js_next next">
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 501.5 501.5"><g><path fill="#2E435A" d="M199.33 410.622l-55.77-55.508L247.425 250.75 143.56 146.384l55.77-55.507L358.44 250.75z"/></g></svg>
                </span>
            </div>
        </div>
    </div>
</section>
<%--//支付弹窗--%>
<div class="pay">
    <a class="pay-close-btn" href="javascript:payClose();"><i class="glyphicon glyphicon-remove"></i></a>
    <h2>付款金额：¥<label id="consultCost1">600</label></h2>
    <h4>
        <em></em>
        扫码支付
        <em></em>
    </h4>
    <ul>
        <li><p>支付宝</p></li>
        <li><p>微信</p></li>
    </ul>
    <p class="pay-tip">温馨提示：出于后台审核的需要，付款的结果成功需次日才能呈现，我们会在第一时间将结果推
        送给您，请稍安勿躁~</p>
</div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script src="../../../js/jquery.lory.min.js" ></script>
<script src="../../../js/lory.js"></script>
<script>
    //    'use strict';
    document.addEventListener('DOMContentLoaded', function () {
        var ease = document.querySelector('.js_ease');

        lory(ease, {

            slidesToScroll: 4,
            slideSpeed: 300,
            ease: 'cubic-bezier(0.455, 0.03, 0.515, 0.955)',
            enableMouseEvents: true
        });
        var multiSlides = document.querySelector('.js_multislides');

        lory(multiSlides, {
            infinite: 4,
            slideSpeed: 300,
            slidesToScroll: 4,
            enableMouseEvents: true

        });
    });

    function payWin(cost){
        $("#consultCost1").text(cost);
        $(".pay").css('display','block');
    }
    function payClose(){
        $(".pay").css('display','none');
    }
</script>
</body>
</html>