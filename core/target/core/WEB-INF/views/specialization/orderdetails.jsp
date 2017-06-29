<%--
  Created by IntelliJ IDEA.
  User: 1009
  Date: 2017/3/27
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <script src="/js/jquery-2.2.1.min.js"></script>
    <script src="/js/bootstrap.js"></script>


    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">

    <style>
        .order_list {
            width: 1168px;
            height: auto;
            margin: 0 auto 0 auto;
            padding: 35px 18px;
            border-bottom: 1px solid #ccc;
            border-top: 1px solid #ccc;
            overflow: hidden;
        }

        .order_info {
            width: 820px;
            float: right;
            position: relative;

        }

        .order_info h3 {
            font-size: 26px;
            color: #333333;
            font-family: 微软雅黑;
            font-weight: normal;
            margin: 0;
            padding-bottom: 10px;
            /*margin-top: 4px;*/
        }

        .order_info span {
            color: #999999;
            font-size: 18px;
            font-family: 微软雅黑;
        }

        .order_info p {
            color: #999999;
            font-size: 16px;
            font-family: 微软雅黑;

        }

        .order_info i {
            font-style: normal;
            color: #333333;
            font-size: 22px;
            font-family: 微软雅黑;
            display: block;
            margin: 6px 0;
            padding-left: 5px;
        }

        .container_box {
            /* height: 100%;*/
            margin-bottom: 150px;
        }

        .container_box h2 {
            width: 1200px;
            margin: 120px auto 20px auto;
            font-weight: normal;
            border-left: 5px solid #10b598;
            text-indent: 10px;
            font-size: 26px;
            color: #333;
        }

        .order_box {
            width: 1200px;
            margin: 0 auto;
            padding: 15px;
            background-color: #f8fafc;
            box-shadow: 0 0 10px #ccc;

        }

        .slef_info i {
            font-style: normal;
            font-size: 16px;
            font-family: "Microsoft Yahei";
        }

        .slef_info li span {
            font-size: 16px;
            font-family: "Microsoft Yahei";
            margin-left: 10px;
        }

        .slef_info li {
            line-height: 28px;
            color: #333333;
        }

        .slef_info {
            margin-top: 20px;
            padding-left: 10px;

        }

        .order_info .order_price {
            position: absolute;
            right: 0;
            top: 20px;
            font-size: 20px;
            color: #00b292;

        }

        .order_info .order_price b {
            font-weight: normal;
            font-size: 26px;
        }

        .order_btn {
            text-align: right;
            height: 190px;
            padding: 38px 0;
            padding-right: 10px;
        }

        .order_btn p {
            font-size: 15px;
            color: #10b562;
            font-family: "Microsoft Yahei";
        }

        .order_btn a {
            display: block;
            width: 100px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            background-color: #00b292;
            float: right;
            border-radius: 5px;
            font-size: 15px;
            color: #fff;
            font-family: "Microsoft Yahei";
            margin-top: 15px;
        }


    </style>

</head>

<body style="background-color: #f0f5f8">
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="container_box">
    <h2>订单信息确认</h2>
    <div class="order_box">
        <ul class="slef_info">
           <%-- request.setAttribute("applyActivity",applyActivity);
            request.setAttribute("item",item);--%>
            <li><i>申请人</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：<span>${applyActivity.name}</span></li>
            <li><i>就读学校</i>：<span>${applyActivity.currentSchool}</span></li>
            <li><i>手机号码</i>：<span>${applyActivity.phone}</span></li>
        </ul>
        <div class="order_list">
            <img src="${item.bitmap}" alt="" style="width: 290px;">
            <div class="order_info">
                <h3>${item.itemName}</h3>
                <i>简介: <br></i>
                <p>${item.description}</p>
                <!--<span class="order_price">￥<b>${item.money}</b></span>-->
            </div>
        </div>
        <div class="order_btn">
            <c:if test="${item.isPrivilege==1}">
                <p>优惠信息：1元抵${item.privilegeMoney}</p>
            </c:if>
           <%-- ${item.PrivilegeMoney}--%>
            <form action="/pay/payorder" method="post">
                <input type = "hidden" name = "item" id = "item" value="${item.itemId}">
                <input type = "hidden" name = "money" id = "money" value="${item.money}">
                <input type = "hidden" name = "itemName" id = "itemName" value="${item.itemName}">
                <input type="submit" value="提交订单" />
                </form>
        </div>
    </div>

</div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>

<script type="text/javascript">
    function order(){
        location.href = "/pay/payorder";
    }

</script>

</html>