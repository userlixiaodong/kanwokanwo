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
        .area1 dl h2{font-size:36px;}
        .area1 dd{color:#9b9b9b;font-size:18px;margin-bottom:15px;}
        .area1 dd i{color:#9b9b9b;font-size:18px;vertical-align:top;}
        .area1 dd a{display:inline-block;background-color:#ffa302;color:#fff;font-size:24px;padding:16px 56px;margin-top:20px;-webkit-transition:all 0.2s linear;transition:all 0.2s linear;}
        .area1 dd a:hover{box-shadow:0 0 10px #4C794C;}
        .area2{padding:25px 15px;}
        .area2 h1{border-left:12px solid #1bb38c;border-bottom:none;font-size:36px;padding-left:20px;margin-bottom:20px;}
        .areaCon{width:904px;margin:0 auto 10px;}
        .areaCon1 h3{color:#fff;font-size:23px;background-color:#66666f;width:136px;height:40px;line-height:40px;font-weight:100;text-align:center;border-radius:10px 10px 0 0;margin-top:10px;}
        .areaCon1 dt{background-color:#3c3c48;padding-top:2px;}
        .areaCon1 dd{background-color:#fff;padding:16px 10px 10px;border:1px solid #3c3c48;}
        .areaCon2{background:url(/images/areaCon2bg.jpg) no-repeat;height:700px;padding-top:50px;margin-bottom:30px;}
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

        .login-before .login-before-close-btn{
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
        .example{
            /*width: 500px;*/
            height: 430px;
            background: #04bc8e;
            padding: 35px 50px;
        }
        .example li{
            width: 390px;
            height: 160px;
            background: #ffffff;
            float: left;
            padding: 20px 50px;
            box-shadow: 10px 10px 0px 0 #01856e;
        }
        .example li p{
            line-height: 30px;
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
            <div class="area area1 clearfix">
                <div class="fl"><img src="../../../images/duanq.jpg"></div>
                <dl>
                    <dt style="margin: 40px 0;">
                    <h2 style="border-bottom: 1px solid #3d3d3d; width: 200px; padding-bottom: 10px; color: #3d3d3d;">段沁  <b style="font-weight: lighter ; font-size: 25px;">Duan Qin</b></h2>
                    <h6 style="font-size: 17px; font-family: 'Microsoft YaHei';font-weight: lighter; color:#9b9b9b;">时代焦点ACT阅读精英讲师</h6>
                    </dt>
                    <dd><i class="glyphicon glyphicon-map-marker"></i><span>多伦多大学<br>University of Toronto</span></dd>
                    <%--<dd><i class="glyphicon glyphicon-bookmark"></i><span>本科在读<br>Undergraduate Student</span></dd>--%>
                    <dd style="font-family:'Microsoft YaHei';font-size: 20px;font-weight: bolder;color: #ffa302;"><i class="glyphicon glyphicon-tower" style="margin-right: 5px;color: #ffa302;"></i>现价：￥88<span style="display: block; color: #9B9B9B; text-decoration: line-through; margin: 5px 20px">原价：￥99</span></dd>
                    <dd><div style="width: 150px; height: 35px; line-height: 35px; text-align: center; border: 1px solid #ffa302; color: #ffa302; font-size: 12px;background: #ffffff">限时特价，请速报名！</div></dd>
                    <dd><c:choose>
                        <c:when test="${sessionScope.loginUser == null}">
                            <a  onclick="javascript: loginAlert();" >点击预约</a>
                        </c:when>
                        <c:otherwise>
                            <a onclick="javascript:appointmentWin('段沁','610','duanqin','88','2016年12月7日 15:00');" target="_blank">点击预约</a>
                        </c:otherwise>
                    </c:choose></dd>
                </dl>
            </div>
            <div class="area area2 clearfix">
                <h1>学员案例</h1>
                <ul class="example">
                    <li>
                        <p>提分学员：梁同学</br>
                            所读院校：Western Reserve Academy</br>
                            上课时长：11节课（22小时）</br>
                            <b style="font-style: normal; color: #ffa302;">提分成绩：21分-30分</b> </p>
                    </li>
                    <li style="margin-left: 50px">
                        <p>提分学员：程同学</br>
                            所读院校：St.John's Preparatory School</br>
                            上课时长：5节课（10小时）</br>
                            <b style="font-style: normal; color: #ffa302;">提分成绩：21分-31分</b> </p>
                    </li>
                    <li style="margin-top: 30px;">
                        <p>提分学员：胡同学</br>
                            所读院校：人大附中</br>
                            上课时长：6节课（12小时）</br>
                            <b style="font-style: normal; color: #ffa302;">提分成绩：28分-35分</b> </p>
                    </li>
                    <li style="margin-left: 50px;margin-top: 30px;">
                        <p>提分学员：赵同学</br>
                            所读院校：北京四中</br>
                            上课时长：4节课（8小时）</br>
                            <b style="font-style: normal; color: #ffa302;">提分成绩：29分-35分</b> </p>
                    </li>
                </ul>
            </div>
            <div class="area area2 clearfix">
                <h1>讲座介绍</h1>
                <div class="areaCon1 areaCon clearfix">
                    <dl>
                        <dt>
                        <h3>ACT阅读课程简介</h3>
                        </dt>
                        <dd>
                            <p>第一场讲座时间：2016年12月7日下午15:00---16:00<br>
                                第一场讲座内容：如何提高ACT阅读的做题速度和准确率？
                            </p>
                            <p>第二场讲座时间：2016年12月14日下午15:00---16:00<br>
                                第二场讲座内容：如何解决ACT阅读见效慢，提分慢的瓶颈？
                            </p>
                        </dd>
                    </dl>
                </div>
                <div class="areaCon2 areaCon clearfix">
                    <dl>
                        <dt>
                        <h3>教育背景</h3>
                        </dt>
                        <dd>
                            <p>毕业于多伦多大学，是硕士研究生学位，托福／雅思阅读双满分获得者。</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                        <h3>教育理念</h3>
                        </dt>
                        <dd>
                            <p>相信所有学生只要专注学习，掌握相应的方法，并坚持练习，都可以取得理想的成
                                绩。授课深入浅出，善于归纳答题规律，发现学生问题并直击弱点。</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                        <h3>个人经历</h3>
                        </dt>
                        <dd>
                            <p>曾就职于国际慈善机构和教育合作伙伴Free the Children，长期与国内外青少年接
                                触，善于发掘孩子的优点，并引导其解决问题。</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                        <h3>授课科目</h3>
                        </dt>
                        <dd>
                            <p>主讲科目为ACT阅读，AP宏观/微观经济学。</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt  style="margin-top: 30px">
                        <p>直播地址：看我看我直播平台   http://live.kanwokanwo.com/</p>
                        </dt>
                    </dl>
                </div>
                <div class="areaCon3 areaCon clearfix">
                <dl>
                <dt>温馨提示：</dt>
                <dd>
                <p>1、为了不影响观看效果，请各位同学在PC电脑端观看学习，手机端不稳定。</p>
                    <p>2 、如有疑问请与我们联系。<br>
                        联系方式： <i style="font-weight: bold">138 1190 9818 </i></p>
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

<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260829708'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1260829708' type='text/javascript'%3E%3C/script%3E"));</script>

</body>
</html>