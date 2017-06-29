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
        .details{width:980px;margin:75px auto 0;}
        .details h1,.details h2,.details h3,.details p,.details span,.details a,.details strong{font-family:Microsoft YaHei;}
        .details h1,.details h2,.details h3{color:#3c3c48;text-transform:capitalize;margin:0;}
        .details p{padding:0;}
        .area{background-color:#f5f5f5;padding:0 15px;margin-bottom:22px;}
        .area1 dl span{display:inline-block;width:190px;}
        .area1 dl{width:600px;float:right;}
        .area1 dl h2{font-size:36px;margin:40px 0;}
        .area1 dd{color:#9b9b9b;font-size:18px;margin-bottom:15px;}
        .area1 dd i{color:#9b9b9b;font-size:18px;vertical-align:top;}
        .area1 dd a{display:inline-block;background-color:#1bb38c;color:#fff;font-size:24px;padding:16px 56px;margin-top:20px;-webkit-transition:all 0.2s linear;transition:all 0.2s linear;}
        .area1 dd a:hover{box-shadow:0 0 10px #4C794C;}
        .area2{padding:25px 15px;}
        .area2 h1{border-left:12px solid #1bb38c;border-bottom:none;font-size:36px;padding-left:20px;margin-bottom:20px;}
        .areaCon{width:904px;margin:0 auto 10px;}
        .areaCon1 h3{color:#fff;font-size:26px;background-color:#66666f;width:136px;height:40px;line-height:40px;font-weight:100;text-align:center;border-radius:10px 10px 0 0;margin-top:10px;}
        .areaCon1 dt{background-color:#3c3c48;padding-top:2px;}
        .areaCon1 dd{background-color:#fff;padding:16px 10px 10px;border:1px solid #3c3c48;}
        .areaCon2{background:url(/images/areaCon2bg.jpg) no-repeat;height:628px;padding-top:50px;margin-bottom:30px;}
        .areaCon2 dl{width:90%;margin:0 auto 28px;}
        .areaCon2 h3{letter-spacing:2px;color:#fff;font-size:30px;display:inline-block;border-bottom:2px solid #0ead84;padding-bottom:6px;margin-bottom:6px;}
        .areaCon2 strong{color:#fff;font-size:30px;}
        .areaCon2 p{font-size:24px;color:#fff;}
        .areaCon3{background-color:#0aaa82;color:#fff;padding:10px 0;}
        .areaCon3 dl{width:90%;margin:0 auto;}
        .areaCon3 dt{color:#fff;font-weight:100;font-size:24px;margin-bottom:10px;}
        .areaCon3 p{font-size:18px;}
        .areaCon3 p.areaContel{padding-left:10px;}
        .areaCon3 p.areaContel em{font-style:italic;}
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>







<%--//咨询弹框--%>
<div class="consult">
    <a class="consult-close-btn" href="javascript:closeConsult();"><i class="glyphicon glyphicon-remove"></i></a>
    <br/>
    <br/>

    <label class="consult-time">咨询时间：2016年9月19日 20:00</label>
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
        <li><img src="../../../images/alipay_39.jpg" ><p>支付宝</p></li>
        <li><img src="../../../images/wechatpay_39.jpg" ><p>微信</p></li>
    </ul>
    <p class="pay-tip">温馨提示：每日9点-18点所下的订单，会在当日有客服人员与您电话沟通，确认付款结果，但出于后台审核的需要，18点后的订单需次日才能与您联系，请稍安勿躁~</p>
</div>
<section class="container-fluid">

    <div class="row">
        <div class="details">
            <div class="area area1 clearfix">
                <div class="fl"><img src="../../../images/pic.jpg"></div>
                <dl>
                    <dt>
                    <h2>Guo Yujiao</h2>
                    </dt>
                    <dd><i class="glyphicon glyphicon-map-marker"></i><span>西北大学<br>Northwest University</span></dd>
                    <dd><i class="glyphicon glyphicon-bookmark"></i><span>本科在读<br>Undergraduate Student</span></dd>
                    <dd><a href="javascript:appointmentWin();" target="_blank">点击预约</a></dd>
                </dl>
            </div>
            <div class="area area2 clearfix">
                <h1>课程介绍</h1>
                <div class="areaCon1 areaCon clearfix">
                    <dl>
                        <dt>
                        <h3>课程简介</h3>
                        </dt>
                        <dd>
                            <p>西北大学校友郭雨蛟与您分享在西北大学留学的真实体验</p>
                            <p>揭秘真实的西北大学生活——</p>
                        </dd>
                    </dl>
                </div>
                <div class="areaCon2 areaCon clearfix">
                    <dl>
                        <dt>
                        <h3>数 学</h3>
                        </dt>
                        <dd>
                            <p>概率论与随机处理；数学方法在社会科学中的应用——编程</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                        <h3>经 济</h3>
                        </dt>
                        <dd>
                            <p>西北大学传统的经济学科与学院简介</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                        <h3>商学院</h3>
                        </dt>
                        <dd>
                            <p>卡普尼克商学院介绍（组织、规章、商业工具等）</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                        <h3>证 书</h3>
                        </dt>
                        <dd>
                            <p>凯洛格证书——好处（对所有专业开放）以及其获取条件</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                        <p>还有其他更多精彩内容，包括<strong>芝加哥研究、学习小组</strong>等，想了解详情，就快来预约吧！</p>
                        </dt>
                    </dl>
                </div>
                <div class="areaCon3 areaCon clearfix">
                    <dl>
                        <dt>温馨提示：</dt>
                        <dd>
                            <p>1 、导师直播服务会在YY语音平台上进行，WIN系统的电脑请下载YY语音客户端，搜37967406频道，Mac请前往App Store，下载YY语音最新版；</p>
                            <p>2 、请务必使用YY客户端，手机或网页有可能看不到或看不全部分PPT；</p>
                            <p>3 、如有疑问请与我们联系。</p>
                        </dd>
                        <dd>
                            <p class="areaContel">联系方式：<em>010-52928288-8018 /  138 1190 9818 /  135 2016 5006 /  152 4113 9109</em> </p>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
    <div class="offsideCustomer">
        <ul>
            <%--<li><a href="" target="_blank"><span class="center"><i class="icon1"></i>在线咨询</span></a></li>--%>
            <li><a class="leftScroll" href="" target="_blank"><span class="scroll"><i class="icon2 fl"><em class="fr">010-52928288-8018</em></i></span></a></li>
            <li><a class="return" href="" target="_blank"><span class="center"><i class="icon3"></i>返回顶部</span></a></li>
        </ul>
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
    function appointmentWin(){
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
        var tutorId = "436";
        var tutorName = "GuoYujiao";
        var reservationTime = "2016/09/19 20:00";
        var reservationPeriod = "1"
        var nickname = $("#nickname").val();
        var mobile = $("#mobile").val();
        var email = $("#email1").val();
        var cost = "39";
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