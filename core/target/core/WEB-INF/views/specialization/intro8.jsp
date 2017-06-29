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
        .login-before{
            width: 700px;
            height: 340px;
            position: fixed;
            left: 50%;
            top: 50%;
            z-index:1000;
            text-align: center;
            transform: translate(-50%,-50%);
            -webkit-transform: translate(-50%,-50%);
            background: #e1e4e8;
            display: none;
        }

        .login-before .login-before-close-btnn{
            color: #aaaaaa;
            position: absolute;
            right: 10px;
            top: 10px;
        }
        .login-before p{
            font-family: "Microsoft Yahei";
            font-size: 18px;
            margin-top: 90px;
            width:100%;
            text-align: center;
        }
        .login-before .login-btn{
            display: block;
            width: 140px;
            height: 55px;
            font-size: 24px;
            line-height: 55px;
            color: #fff;
            text-align: center;
            margin: 70px auto;
            background-color: #28b38d;
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
    <div class="intro-banner"><img src="/images/banner-intro.jpg"></div>
    <div class="intro-second">
        <h2>四大难题，一个解决方案！</h2>
        <div class="intro-center">
            <span><img src="/images/wh1.jpg"><p>如何申请名校？<br>如何准备面试？<br>如何挑选学校、专业？<br>如何选择留学机构？ </p></span>
            <span><img src="/images/wh2.jpg"><p>本科在读校友导师<br>海外现场直播互动<br>学校一手内幕资料<br>分享面试成功经验</p></span>
        </div>
    </div>
    <div class="intro-third">
        <p>我们邀请了哥伦比亚大学、康奈尔大学等顶级常青藤名校校友做导师，通过海外 现场直播的方式，向准申请人介绍学校的一手资料、分享面试的成功经验、还可以与导师互动、向导师提问，更有机会与导师进行1对1的模拟面试、接受导师点评，如此难得的机会，怎能轻易错过！</p>
    </div>
    <div class="row">
        <div class="details">
            <h2 class="details-title">导师与讲座详情一览</h2>
           <!-- <div class="area area1 clearfix">
                <div class="details-img fl">
                    <a class="al-p" href="/zixian" target="_blank">
                    <img src="../../../images/azx.jpg">
                    </a>
                </div>
                <dl>
                    <dt>
                    <h2>安子熙</h2>
                    <b class="university-name">卡耐基梅隆大学</b>
                    <p>I joined the Engineering Club in 2013, now a leading member of the club. As designing engineer of the club I participated with my group in the 2014 New York regional vex robotic toss up competition. </p>
                    <b>演讲主题：名校录取全面揭秘 卡梅内部权威点评 如何选择留学机构 模拟面试及点评</b>
                    <b>演讲时间：2016-10-22 10:00~11:00</b>
                    </dt>
                    <dd><a onclick="javascript:appointmentWin('安子熙','454','Zixi An','9.9','2016年10月22日 10:00');" target="_blank">点击预约</a></dd>
                </dl>
            </div>-->
            <div class="area area1 clearfix">
                <div class="details-img fl">
                    <a class="al-p" href="/xitongzhang" target="_blank">
                        <img src="../../../images/zxt.png">
                </a></div>
                <dl>
                    <dt>
                    <h2>张溪桐</h2>
                    <b class="university-name">康奈尔大学</b>
                    <p>熟悉康奈尔大学各个学院分布及专业要求，熟悉康奈尔大学申请倾向，了解康奈尔大学夏校申请及选课策略。</p>
                    <b>演讲主题：我的常春藤申请之路 关于康奈尔你不可不知的秘密 模拟面试及点评</b>
                    <b>演讲时间：2016-10-22 20:00~21:00</b>
                    </dt>
                    <dd>
                        <c:choose>
                            <c:when test="${sessionScope.loginUser == null}">
                                <a  onclick="javascript: loginAlert();" >点击预约</a>
                            </c:when>
                            <c:otherwise>
                                <a onclick="javascript:appointmentWin('张溪桐','502','zhangxitong','9.9','2016年10月22日 20:00');" target="_blank">点击预约</a>
                            </c:otherwise>
                        </c:choose>
                        </dd>
                </dl>
            </div>
            <div class="area area1 clearfix">
                <div class="details-img fl">
                    <a class="al-p" href="/baoyixu" target="_blank"><img src="../../../images/xby.png">
                </a></div>
                <dl>
                    <dt>
                    <h2>徐抱一</h2>
                    <b class="university-name">哥伦比亚大学</b>
                    <p>中国人民大学附属中学毕业，当年北京地区哥伦比亚大学唯一ED（早申）录取生，现任哥大中国区面试官。</p>
                    <b>演讲主题： 如何打动常春藤招生官 如何应对名校面试 如何选择留学机构 模拟面试及点评</b>
                    <b>演讲时间：2016-10-27 20:00~21:00</b>
                    </dt>
                    <dd>
                        <c:choose>
                            <c:when test="${sessionScope.loginUser == null}">
                                <a onclick="javascript: loginAlert();" >点击预约</a>
                            </c:when>
                            <c:otherwise>
                            <a onclick= "javascript:appointmentWin('徐抱一','501','xubaoyi','9.9','2016年10月27日 20:00');" >点击预约</a>
                            </c:otherwise>
                        </c:choose>
                    </dd>
                </dl>
            </div>
            <%--<div class="area area1 clearfix">--%>
                <%--<div class="fl"><img src="../../../images/pic.jpg"></div>--%>
                <%--<dl>--%>
                    <%--<dt>--%>
                    <%--<h2>俞尚迪</h2>--%>
                    <%--</dt>--%>
                    <%--<dd><a href="javascript:appointmentWin('俞尚迪','441','MariaYu','9.9','2016年10月23日 20:00');" target="_blank">点击预约</a></dd>--%>
                <%--</dl>--%>
            <%--</div>--%>
            <div class="area area1 clearfix">
                <div class="details-img fl">
                    <a class="al-p" href="/liuhaoyang" target="_blank">
                        <img src="../../../images/CrystalLiu.jpg">
                </a></div>
                <dl>
                    <dt>
                    <h2>刘浩阳</h2>
                    <b class="university-name">范德堡大学</b>
                    <p>人大附中毕业，范德堡大学政经双学位，美国布鲁金斯学会暑期实习生。</p>
                    <b>演讲主题：如何度过一个成功的申请季 我的范德堡生活 中国学生的实习和求职之路 模拟面试及点评</b>
                    <b>演讲时间：2016-10-29 20:00~21:00</b>
                    </dt>
                    <dd>
                        <c:choose>
                            <c:when test="${sessionScope.loginUser == null}">
                                <a onclick="javascript: loginAlert();" >点击预约</a>
                            </c:when>
                            <c:otherwise>
                            <a onclick="javascript:appointmentWin('刘浩阳','439','CrystalLiu','9.9','2016年10月29日 20:00');" target="_blank">点击预约</a>
                            </c:otherwise>
                        </c:choose>
                    </dd>
                </dl>
            </div>
            <div class="area area1 clearfix">
                <div class="details-img fl">
                    <a class="al-p" href="/lizongyi" target="_blank">
                        <img src="../../../images/lzy.jpg">
                </a></div>
                <dl>
                    <dt>
                    <h2>李宗宜</h2>
                    <b class="university-name">华盛顿圣路易斯大学</b>
                    <p>人大附中毕业，在SAT，ACT分数不佳情况下录取华大，有维克森林面试经历。</p>
                    <b>演讲主题：成功申请的秘诀 告诉你一个真实的华盛顿圣路易斯大学 模拟面试及点评</b>
                    <b>演讲时间：2016-10-30 20:00~21:00</b>
                    </dt>
                    <dd> <c:choose>
                        <c:when test="${sessionScope.loginUser == null}">
                            <a onclick="javascript: loginAlert();" >点击预约</a>
                        </c:when>
                        <c:otherwise>
                            <a onclick="javascript:appointmentWin('李宗宜','438','ZongyiLi','9.9','2016年10月30日 20:00');" target="_blank">点击预约</a>
                        </c:otherwise>
                    </c:choose>
                    </dd>
                </dl>
            </div>

            <%--<div class="area area1 clearfix">--%>
                <%--<div class="fl"><img src="../../../images/pic.jpg"></div>--%>
                <%--<dl>--%>
                    <%--<dt>--%>
                    <%--<h2>黄采薇</h2>--%>
                    <%--</dt>--%>
                    <%--<dd><a href="javascript:appointmentWin('黄采薇','437','CaiweiHuang','9.9','2016年10月26日 20:00');" target="_blank">点击预约</a></dd>--%>
                <%--</dl>--%>
            <%--</div>--%>

            <%--<div class="area area1 clearfix">--%>
                <%--<div class="fl"><img src="../../../images/pic.jpg"></div>--%>
                <%--<dl>--%>
                    <%--<dt>--%>
                    <%--<h2>王浩宇</h2>--%>
                    <%--</dt>--%>
                    <%--<dd><a href="javascript:appointmentWin('王浩宇','440','HaoyuWang','9.9','2016年10月28日 20:00');" target="_blank">点击预约</a></dd>--%>
                <%--</dl>--%>
            <%--</div>--%>


        </div>
    </div>
    <div class="surprise">
        <h3>报名惊喜</h3>
        <p>现在报名，更有额外惊喜等着你哦！<br>
           前三名报名校友导师讲座的同学，可获得免费的1对1模拟面试及点评机会；<br>
           而所有报名校友导师讲座的同学，均有三重惊喜：<br>
           均可获得讲座的视频资料一份；<br>
           导师1对1服务8折优惠；<br>
            《TOEFL/SAT阅读词汇伴侣》一本（2选1）</p>
    </div>
    <div class="offsideCustomer">
        <ul>
            <%--<li><a href="" target="_blank"><span class="center"><i class="icon1"></i>在线咨询</span></a></li>--%>
            <li><a class="leftScroll" href="" target="_blank"><span class="scroll"><i class="icon2 fl"><em class="fr">010-52928288-8018</em></i></span></a></li>
            <li><a class="return" href="" target="_blank"><span class="center"><i class="icon3"></i>返回顶部</span></a></li>
        </ul>
    </div>
</section>
<div class="login-before">
    <a class="login-before-close-btn" href="javascript:closeAlert();"><i class="glyphicon glyphicon-remove"></i></a>
    <p>您还未登录，请在登录之后再预约导师服务哦！~</p>
    <a class="login-btn md-trigger" data-modal="modal-12" href="javascript:trackOutboundLink('', 'index_login');">登录</a>
</div>
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