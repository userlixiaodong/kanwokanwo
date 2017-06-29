<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <link href="/style/public.css" rel="stylesheet" type="text/css">
    <link href="/style/frame.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>
    <link href="/style/specialization.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        /*右侧悬浮*/
        .offsideCustomer{position:fixed;bottom:180px;left:64%;margin-left:520px;z-index:999;text-align:center;line-height:2;display:none;}
        .offsideCustomer ul li{margin-bottom:10px;}
        .offsideCustomer ul li a{display:block;color:#2abb72;width:60px;height:60px;border:2px solid #f9f9f9;background-color:#fff;position:relative;}
        .offsideCustomer ul li a span{padding:0;display:block;color:#2abb72;font-family:Microsoft YaHei;font-size:12px;width:100%;}
        .offsideCustomer ul li i{background-image:url(/images/sprites.png);background-repeat:no-repeat;display:block;margin:0 auto;}
        .icon1{width:27px;height:28px;background-position:-5px -5px;}
        .icon2{width:27px;height:28px;background-position:-5px -43px;}
        .icon3{width:28px;height:20px;background-position:-5px -81px;}
        .offsideCustomer ul .leftScroll{width:60px;padding:14px 0 0 14px;position:relative;left:0px;top:0px;}
        .offsideCustomer ul .leftScroll em{
            display: none;
        }
        .offsideCustomer ul .leftScroll:hover em{
            display: block;
            width: 200px;
            position: absolute;
            right: 100%;
            transition: 1s all linear;
        }
        .offsideCustomer ul li em{display:block;margin-left:10px;font-size:16px;}
        /*详情展示*/
        .details{width:980px;margin:0px auto 0;}
        .details h1,.details h2,.details h3,.details p,.details span,.details a,.details strong{font-family:Microsoft YaHei;}
        .details h1,.details h2,.details h3{color:#3c3c48;text-transform:capitalize;margin:0;}
        .details p{padding:0;}
        .details .details-title{
            text-align: center;
            padding: 35px 0;
            margin: 15px 0;
            font-size: 40px!important;
            font-weight:normal;
            border-bottom:1px solid #cccccc;
        }
        .area{background-color:#f5f5f5;padding:0 15px;margin-bottom:22px;}
        .area:hover{
            box-shadow: 0 0 1px 0 #1bb38c;
            /*border:1px solid #1bb38c;*/
        }
        .area1 .details-img{
            width:154px;
            height: 154px;
            border-radius:100px;
            margin: 45px;
            overflow: hidden;
        }
        .area1 dl .university-name{
            font-size: 16px;
            margin: 10px 0;
            font-weight: 500;
            font-family: "Microsoft YaHei";
        }
        .area1 dl dt p{
            font-size: 14px;
            color: #5d5d5d;
        }
        .area1 dl dt b{
            display: block;
            font-size: 16px;
            line-height: 30px;
        }
        .area1 dl span{display:inline-block;width:190px;}
        .area1 dl h2{font-size:24px;padding-top:20px;font-weight:normal;}
        .area1 dd{color:#9b9b9b;font-size:18px;margin-bottom:15px;}
        .area1 dd i{color:#9b9b9b;font-size:18px;vertical-align:top;}
        .area1 dd a{display:inline-block;background-color:#1bb38c;color:#fff;font-size:24px;padding:12px 45px;border-radius:5px;margin-top:20px;-webkit-transition:all 0.2s linear;transition:all 0.2s linear;}
        .area1 dd a:hover{box-shadow:0 0 10px #4C794C;}
        .area2 h1{border-left:12px solid #1bb38c;border-bottom:none;font-size:36px;padding-left:20px;margin-bottom:20px;}
        .areaCon1 h3{color:#fff;font-size:26px;background-color:#66666f;width:136px;height:40px;line-height:40px;font-weight:100;text-align:center;border-radius:10px 10px 0 0;margin-top:10px;}
        .areaCon1 dt{background-color:#3c3c48;padding-top:2px;}
        .areaCon1 dd{background-color:#fff;padding:16px 10px 10px;border:1px solid #3c3c48;}
        .areaCon2 dl{width:90%;margin:0 auto 28px;}
        .areaCon2 h3{letter-spacing:2px;color:#fff;font-size:30px;display:inline-block;border-bottom:2px solid #0ead84;padding-bottom:6px;margin-bottom:6px;}
        .areaCon2 strong{color:#fff;font-size:30px;}
        .areaCon2 p{font-size:24px;color:#fff;}
        .areaCon3 dl{width:90%;margin:0 auto;}
        .areaCon3 dt{color:#fff;font-weight:100;font-size:24px;margin-bottom:10px;}
        .areaCon3 p{font-size:18px;}
        .areaCon3 p.areaContel{padding-left:10px;}
        .areaCon3 p.areaContel em{font-style:italic;}
        .intro-second h2{
            width:100%;
            height:100px;
            text-align: center;
            line-height: 100px;
            background: url("/images/BG21.jpg" )no-repeat center;
            background-size:cover;
            margin:0;
            color: #ffffff;
            font-family: "Microsoft YaHei";
            font-weight: normal;
        }
        .intro-center{
            text-align: center;
            margin:20px auto;
        }
        .intro-center span{
            display: inline-block;
            width: 480px;
            height: 304px;
            background: #ebeef5;
            text-align: left;
            padding:0;
        }
        .intro-center span p{
            display: inline-block;
            position: absolute;
            width: 240px;
            padding: 30px;
            line-height: 40px;
            margin-top: 25px;
            font-family:"Microsoft YaHei";
            font-size: 18px;
        }
        .intro-third{
            background: url("/images/BG22.jpg") no-repeat center;
            background-size:cover;
            width:100%;
            height: 350px;
        }
        .intro-third p{
            text-align: center;
            padding: 100px 20%;
            margin: 0 10%;
            line-height: 40px;
            font-size: 18px;
            font-family:"Microsoft YaHei";
            font-weight:lighter;
            color: #ffffff;
        }
        .surprise{
            background: url("/images/BG23.jpg") no-repeat center;
            background-size: cover;
            width:100%;
            height: 400px;
            text-align: center;
        }
        .surprise h3{
            padding: 50px 0 25px 0;
            text-align: center;
            font-size: 36px;
            color: #ffffff;
            font-family:"Microsoft YaHei";
            font-weight:normal;
        }
        .surprise p{
            color: #ffffff;
            font-size: 20px;
            font-family:"Microsoft YaHei";
            font-weight:100;
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>







<%--//咨询弹框--%>
<div class="consult">
    <input type = "hidden" id = "tutorId" value =""/>
    <input type = "hidden" id = "tutorName" value =""/>
    <a class="consult-close-btn" href="javascript:closeConsult();"><i class="glyphicon glyphicon-remove"></i></a>
    <br/>
    <br/>
    <label class="consult-time">咨询导师：</label><label class="consult-time" id="tutor"></label>
    <br/>
    <label class="consult-time">咨询时间：</label><label class="consult-time" id="tutortime">2016年9月19日 20:00</label>
    <ul>
        <li>注：平台中所有时间均为北京时间，请有时差的导师（学生）留意</li>
    </ul>
    <br/>
    <label class="consult-time">咨询时长：1小时</label>
    <label class="cost">费用：</label><label class="cost" id="consultCost">39</label><label class="cost">RMB</label><br>
    <label class="consult-time consult-time-name" >怎么称呼您<b>*</b></label><input id="nickname" style="margin-left: 16px;"class="name-input" type="text" value="" maxlength=10>
    <span class="tip" style="margin-left: 21px;">方便与导师沟通用</span><br>
    <label class="consult-time consult-time-name" >手机号<b>*</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input id="mobile" class="phone-input" type="text" value="" style="margin-left: 21px;" maxlength=11>
    <span class="tip" style="margin-left: 21px;">方便及时收到推送，以免错过导师服务，请务必填写</span><br>
    <label class="consult-time consult-time-name"  >电子邮箱</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="email1" class="email-input" type="text" value="" style="margin-left: 16px;" maxlength=50><br>
    <br/>
    <br/>
    <p class="tip-bottom">您有必填字段没填，请填写后再预约！</p>
    <input class="consult-btn" type="button" value="点击预约" onclick="javascript:reservation();">

</div>

<%--//支付弹窗--%>
<div class="pay">
    <a class="pay-close-btn" href="javascript:payClose();"><i class="glyphicon glyphicon-remove"></i></a>
    <h3>恭喜，您的订单已提交成功！</h3>
    <h3>请扫码支付，完成预约</h3>
    <h2>付款金额：¥<label id="consultCost1">39</label></h2>
    <h4>
        <em></em>
        扫码支付
        <em></em>
    </h4>
    <ul>
        <li><img src="../../../images/alipay.jpg" ><p>支付宝</p></li>
        <li><img src="../../../images/wechatpay.jpg" ><p>微信</p></li>
    </ul>
    <p class="pay-tip">温馨提示：<br>
        1、出于后台审核的需要，付款的结果需审核后才能生效，审核成功后，我们会有专门的客服人员将直播时间、所用的账号、密码第一时间将结果呈现给您，请稍安勿躁；<br>
        2、直播访问网址为<a onclick="javascript:toLive()" >live.kanwokanwo.com</a>，请届时进入对应的直播间，参与导师直播哦！</p>
</div>
<section class="container-fluid">


    <div class="row">
        <div class="details">
            <h2 class="details-title">专题列表1</h2>



                <dl>
                    <dt>
                    <table border="1">
                    <tr>
                        <th>预约导师</th>
                        <th>预约账号</th>
                        <th>昵称</th>
                        <th>电话</th>
                        <th>邮箱</th>
                        <th>预约时间</th>
                    </tr>
                        <c:forEach var="specialization" items="${specializationList}">
                            <tr>
                                <td>${specialization.tutorName}</td>
                                <td>${specialization.userName}</td>
                                <td>${specialization.nickname}</td>
                                <td>${specialization.mobile}</td>
                                <td>${specialization.email}</td>
                                <td>${specialization.insertTime}</td>
                            </tr>
                    </c:forEach>
                    </table>
                    </dt>
                </dl>




        </div>
    </div>

</section>
<div class="clearfix"></div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script>
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 150) {
                $('.offsideCustomer').fadeIn(100);
            } else {
                $('.offsideCustomer').fadeOut(100);
            }
        });
        $('.return').click(function(event) {
            event.preventDefault();
            $('html, body').animate({
                scrollTop:0
            }, 500);
        });
    });
    function payChange(){
        var time = $("#timeDuration").val();
        var cost =  600;
        var total= cost / 60 * time;
        $("#consultCost").text(total);
        $("#consultCost1").text(total);
    }

    function toLive(){
        window.location.href = "http://live.kanwokanwo.com";
        //self.location="live.kanwokanwo.com";
    }

    function closeConsultFail(){
        $(".consult-fail").css('display','none');

    }
    function consultFailOpen(){
        $(".consult-fail").css('display','block');

    }
    function closeConsult(){
        $(".consult").css('display','none');
        location.reload();
    }
    function closeAlert(){
        $(".login-before").css('display','none');
        location.reload();
    }
    function appointmentWin(tutor,id,name,fee,time){
        $("#tutor").text(tutor);
        $("#tutorId").val(id);
        $("#tutorName").val(name);
        $("#tutortime").text(time);
        $("#consultCost").text(fee);
        $("#consultCost1").text(fee);
        $(".consult").css('display','block');
    }
    function payWin(){
        $(".pay").css('display','block');
    }
    function payClose(){
        $(".pay").css('display','none');
        location.reload();
    }
    function loginAlert(){
        $(".login-before").css('display','block');
    }




    function reservation(){
        var tutorId = $("#tutorId").val();
        var tutorName = $("#tutorName").val();
        var reservationTime =  $("#tutortime").text();
        reservationTime = reservationTime.replace("年",'/').replace("月",'/').replace("日",'');
        var reservationPeriod = "1"
        var nickname = $("#nickname").val();
        var mobile = $("#mobile").val();
        var email = $("#email1").val();
        var cost = $("#consultCost").text();
        if( mobile == "" || nickname == ""){
            $(".tip-bottom").html("您有必填字段没填，请填写后再预约！");
            $(".tip-bottom").css('display','block');
            return;
        }
        if(isNaN(mobile))
        {
            $(".tip-bottom").html("手机号码有误，请填写正确手机号码(如：18533331234)后再预约！");
            $(".tip-bottom").css('display','block');
            return;
        }

        $.ajax({
            type: "POST",
            url: '/specialization/submit',
            async:false,
            data: {tutorId:tutorId,tutorName:tutorName,specializationTime:reservationTime,specializationPeriod:reservationPeriod,nickname:nickname,mobile:mobile,email:email,cost:cost},
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    $(".consult").css('display','none');
                    payWin();

                }else{
                    $(".consult").css('display','none');
                    consultFailOpen();

                }
            }
        });
    }

</script>
</body>
</html>