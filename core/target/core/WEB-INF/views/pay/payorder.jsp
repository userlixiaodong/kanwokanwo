<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link rel="stylesheet" href="/style/payorder.css?20170402">
    <script src="/js/jquery-2.2.1.min.js"></script>
    <script src="/js/bootstrap.js"></script>
</head>
<body>
<div class="pay-frame pay-success">
    <a href="javascript:closeAlert();"><i class="glyphicon glyphicon-remove"></i></a>
    <p class="pay-frame-p p1">恭喜，您已支付成功！</p>
    <p class="pay-frame-p p2">查看订单详情，请点击右上角个人头像——Orders</p>
</div>
<div class="pay-frame pay-faild">
    <a href="javascript:closeAlert();"><i class="glyphicon glyphicon-remove"></i></a>
    <p class="pay-frame-p p1">支付失败</p>
    <p class="pay-frame-p p2">原因：此订单已超过支付有效期</p>
</div>
<div class="container_box">
    <%@include file="/WEB-INF/views/common/top.jsp" %>
    <div class="mid_cont">
        <h2>订单详情</h2>
        <em></em>
        <div class="payorder">
            <div class="pay-con">
                <p class="pay">请选择付款方式</p>
                <span class="orderNumber">订单编号：<i>${order.orderNo}</i></span>
                <span class="advanceMoney">预付金：<b>￥${order.fee}</b></span>
                <p class="remarks">注：请在<b>${order.createTime}</b>完成付款，逾期订单会失效，需重新下单！</p>
                <div class="payment">
                    <p>支付方式</p>
                    <ul>
                        <li>
                            <input type="radio" name="paymentMethod" value="zhifubao">
                        </li>
                        <li>
                            <input type="radio" name="paymentMethod" value="weixin" class="payInput">
                            <div class="creditFrame"><em></em><span></span>功能准备上线中...</div>
                        </li>
                        <li>
                            <input type="radio" name="paymentMethod" value="creditCard" class="payInput">
                            <div class="creditFrame"><em></em><span></span>功能准备上线中...</div>
                        </li>
                    </ul>
                </div>
                <form action="/pay/alipayapi" method="post">
                    <input type = "hidden" name = "orderno" id = "orderno" value="${order.orderNo}">
                    <input type = "hidden" name = "name" id = "name" value="${order.itemId}">
                    <input type = "hidden" name = "fee" id = "fee" value="${order.fee}">
                    <input type="submit" value="立即付款" />
                </form>
            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/views/common/bottom.jsp" %>
</div>
<div class="mask"></div>
</body>
<script type="text/javascript">
    function closeAlert(){
        $(".pay-frame").css('display','none');
        location.reload();
    }
    $(function () {
        var wid = $(window).width();
        var hei = $(window).height();
        var payList = $(".payment ul li");
        var payInput = $(".payInput");
        //支付方式背景图设置
        for (var i = 0; i < payList.length; i++) {
            var payListUrl = '/images/payment' + parseInt(i + 1) + '.png';
            payList.eq(i).css({
                "background": "url(" + payListUrl + ") no-repeat 70px 35px #fff",
                "background-size": "45%"
            });
        }

        //银行卡及微信弹窗功能、点击空白隐藏功能
        $(".payInput").on("click",function () {
            $(this).next(".creditFrame").show();
            $(this).parents("li").siblings("li").children(".creditFrame").hide();
        })
        $(document).on("click",function () {
            var i = $(this).index();
            var e = event || window.event;      //兼容IE和非IE的event
            var aim = e.srcElement || e.target;     //兼容IE和非IE的事件源
            aim != $(".creditFrame")[0] && aim != $(".payInput")[0] && aim != $(".payInput")[1] ? $(".creditFrame").hide():$(".creditFrame").eq(i)[0];
            console.log($(".creditFrame").eq(i)[0]);
        });

        //支付成功及支付失败弹窗背景图片添加
        $(".pay-success").css({"background":"url(/images/pay-success.gif) no-repeat center 80px #f8fafc"});
        $(".pay-faild").css({"background":"url(/images/pay-faild.gif) no-repeat center 80px #f8fafc"});

            //立即付款按钮点击事件--支付宝支付功能
            $(".payBtn").on("click",function () {
                var val=$('input:radio[name="paymentMethod"]:checked').val();
                //支付宝支付跳转
                if (val=="zhifubao") {
                    location.href = "alipayapi";
                }else{
                    $(".payment ul li input").checked(false);
                }
            });
    })


</script>

</html>
