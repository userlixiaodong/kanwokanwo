<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link rel="stylesheet" type="text/css" href="/style/jquery.datetimepicker.css">
    <link href="/style/student.css" rel="stylesheet" type="text/css">
    <style>
        .frame-top{
            background:url("/images/ch-frame-bg2.png") no-repeat top center;
            background-size:106%;
        }
        @media (max-width: 769px) {
            section .main-content .information{
                margin-bottom:110%;
            }
            @media (max-width: 414px) {
                section .main-content .information{
                    margin-bottom:230%;
                }
                @media (max-width: 320px) {
                    section .main-content .information{
                        margin-bottom:320%;
                    }
                }
            }
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>

<%--中文介绍信息部分start--%>
<div class="ch-frame">
    <div class="toClose"></div>
    <div class="frame-top">
        <h4>姚同学</h4>
        <p><b>TOEFL：</b>97 ACT:30</p>
        <p><b>Offers: </b><span class="ch-school">波士顿学院，罗彻斯特大学，凯斯西储大学，欧柏林学院</span></p>
        <p><b>最终决定：</b>波士顿学院</p>
    </div>
    <div class="frame-bottom">
        <h5>简介</h5>
        <span class="ch-describe">
            Y同学是土生土长的北京人，国家一级运动员。但是在征战排球比赛的她在标化成绩上遇到了瓶颈。为了申请到美国排名前30的学校，她在中介指导老师的建议下想到了通过视频简历的形式来呈现自己的活动。通过看我看我团队的策划，她最终得到了女神校波士顿学院的眷顾。

S：北京某知名学校的学生，排球特长，钢琴5级
W：托福97分 ACT 30分
O：体育特长生
T：同校高分的学生及其它体育特长生

SWOT分析后Y同学对自己的优劣势有了更清晰的认识，她的活动是申请中的优势是长板，而要克服的则是她标化成绩的不足。看我看我的作用是对她的活动进行了进一步的补强，通过自然，平实的镜头突出了Y同学活动的真实性。同样的，Y同学通过看我看我这个平台上还能上传Y同学不同时期的照片，从刚开加入校队到代表学校参加国家级甚至世界级的比赛。这时，Y同学的活动从一个个冰冷的文字变成了一幕幕真实的画面，通过时间线展示在了招生官的眼前。

另一个我们选取的拍摄活动则是Y同学在家里弹奏钢琴的一段视频，Y同学是国家钢琴5级，虽然不是最高的等级，但是做为一个成绩还不错的体育生这是很难能可贵的，这让招生官直观的了解到了她的钢琴水平，并认识到了眼前这个多才多艺的女孩也许不仅仅是会打排球的“傻大个”，而是一个实实在在懂得享受生活的“白富美”。

在现在这个申请难度越来越高的时代，补短很重要，但同样的扬长也很重要。Y同学就是通过视频简历的形式更好的呈现出了自己的“长板”而最终克服了自己的“短板”，打破了托福不到100分录取美国前30的魔咒。
        </span>
    </div>
</div>
<%--中文介绍信息部分end--%>

<%--预约按钮--%>
<%--角色为1的是判断导师的role==1;当下role==100为暂时隐藏预约按钮--%>
<c:if test="${role == 100}">
    <div class="appointment">
        <c:choose>
        <c:when test="${sessionScope.loginUser == null}">
        <a href="javascript: loginAlert();">
            点击预约
        </a>
        </c:when>
        <c:otherwise>
            <a href="javascript:appointmentWin();">
                点击预约
            </a>
        </c:otherwise>
        </c:choose>
    </div>
</c:if>


<%--//未登录点击预约后弹框--%>
<div class="login-before">
    <a class="login-before-close-btn" href="javascript:closeAlert();"><i class="glyphicon glyphicon-remove"></i></a>
    <p>您还未登录，请在登录之后再预约导师服务哦！~</p>
    <a class="login-btn" href="javascript:trackOutboundLink('//www.kanwokanwo.com', 'index_toIndex');">登录</a>
</div>



<%--//咨询弹框--%>
<div class="consult">
    <a class="consult-close-btn" href="javascript:closeConsult();"><i class="glyphicon glyphicon-remove"></i></a>
    <label class="consult-time">咨询时间<b>*</b></label>请选择 > <input type="text" value="请选择日期/时间" id="datetimepicker" />
    <ul>
        注：
        <li>1、平台中所有时间均为北京时间，请有时差的导师（学生）留意；</li>
        <li>2、请选择校友导师有空的时间段（日历中，导师有空的时间段，会用文字标识出）；</li>
        <li>3、可能会有其他学生与您抢约同一时间段，当且仅当学生预约并完成付款后，系统才会将预约服务视为有效，并派送给导师，请尽早点击预约并付款哦！</li>
    </ul>
    <label class="consult-time">咨询时长<b>*</b></label>
    <select class="time-duration" onchange="javascript:payChange();" id="timeDuration">
        <option value="5">5分钟</option>
        <option value="15">15分钟</option>
        <option value="30">30分钟</option>
        <option value="60" selected="selected">1小时</option>
        <option value="120">2小时</option>
    </select>
    <label class="cost">费用：</label><label class="cost" id="consultCost">600</label><label class="cost">RMB</label><br>
    <label class="consult-time consult-time-name" >你的姓名</label><input id="nickname" style="margin-left: 16px;"class="name-input" type="text" value="" maxlength=10>
    <span class="tip" style="margin-left: 21px;">方便与导师沟通用，如不填，则默认为系统用户名</span><br>
    <label class="consult-time consult-time-name" >手机号<b>*</b></label><input id="mobile" class="phone-input" type="text" value="" style="margin-left: 21px;" maxlength=11>
    <span class="tip" style="margin-left: 21px;">方便及时收到推送，以免错过导师服务，请务必填写</span><br>
    <label class="consult-time consult-time-name"  >电子邮箱</label><input id="email1" class="email-input" type="text" value="" style="margin-left: 16px;" maxlength=50><br>
    <label class="consult-time consult-time-name another" >请简短描述下你要请教的问题：（10-200字）</label><br>
    <textarea class="a-quesiton" id="comments" maxlength=200 >请简短描述下你要请教的问题吧...</textarea>
    <label class="byte-count">0/200</label>
    <p></p>
    <p class="tip-bottom">您有必填字段没填，请填写后再预约！</p>
    <input class="consult-btn" type="button" value="点击预约" onclick="javascript:reservation();">

</div>
<%--//预约失败弹框--%>
<div class="consult-fail">
    <a class="consult-fail-close-btn" href="javascript:closeConsultFail();"><i class="glyphicon glyphicon-remove"></i></a>
    <p>预约失败，请确认填写格式正确。</p>

</div>
<%--//支付弹窗--%>
<div class="pay">
    <a class="pay-close-btn" href="javascript:payClose();"><i class="glyphicon glyphicon-remove"></i></a>
    <h3>恭喜，您的订单已提交成功！</h3>
    <h3>请扫码支付，完成预约</h3>
    <h2>付款金额：¥<label id="consultCost1">600</label></h2>
    <h4>
        <em></em>
        扫码支付
        <em></em>
    </h4>
    <ul>
        <li><img src="../../../images/alipay.jpg" ><p>支付宝</p></li>
        <li><img src="../../../images/wechatpay.jpg" ><p>微信</p></li>
    </ul>
    <p class="pay-tip">温馨提示：出于后台审核的需要，付款的结果成功需次日才能呈现，我们会在第一时间将结果推
        送给您，请稍安勿躁~</p>
</div>
<section class="container-fluid">
    <div class="row">
        <div class="col-lg-9 main-content" >
            <div class="col-lg-4 student-photo">
                <%--<img src="${studentProfile.biography.avatar}">--%>
                <c:if test="${not empty studentProfile.biography.avatar}">
                   <%-- <img class="photo-before" id="avatarSrc" src="${studentProfile.biography.avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_480h_460w_100q.src"/>
                    <img class="photo-after" id="avatarSrc" src="${studentProfile.biography.avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_480h_460w_100q.src"/>             --%>
                    <c:set var="string1" value="${studentProfile.biography.avatar}"/>
                    <c:set var="string2" value="${fn:replace(string1,'focusedu.oss-cn-hangzhou.aliyuncs.com' , 'img-cdn.kanwokanwo.com')}"/>
                    <img class="photo-before" id="avatarSrc" src="${string2}@1e_1c_0o_0l_480h_460w_80q.src">
                </c:if>
                <c:if test="${empty studentProfile.biography.avatar}">
                    <img class="photo-before" src="/images/defaultavatar.jpg"/>
                    <img class="photo-after" src="/images/defaultavatar.jpg"/>
                </c:if>
            </div>
            <div class="col-lg-8 information">

                    <h2 class="student-name">${studentProfile.biography.name}<c:if test="${role == 1}"><span class="tutor-flag"><b>￥600/h</b></span></c:if></h2>


                <%--<ul class="col-lg-8 col-xs-8 col-md-8 col-sm-8 navbar_is">
                    <li class="information_btn tab-show" id="information_btn">
                        <a href="javascript:;" id="information_word">MY PAGE</a>
                    </li>
                    <li class="student_btn tab-hide" id="student_btn">
                        <a href="javascript:;" id="student_word">SCHOOL NEWS</a>
                    </li>
                </ul>--%>
                <ul class="information-list biography">

                </ul>

                <div></div>
            </div>
            <ul class="button-tag">
                <li class="who-ami tab-hide cursor-pointer" data-id="myVideo">
                    <a>
                        <i class="glyphicon glyphicon-facetime-video"></i>
                        WHO AM I
                    </a>
                </li>
                <li class="my-story tab-hide cursor-pointer" data-id="myStory">
                    <a>
                        <i class="glyphicon glyphicon-book"></i>
                        MY STORY
                    </a>
                </li>
                <li class="honor-s tab-hide cursor-pointer" data-id="honors">
                    <a>
                        <i class="glyphicon glyphicon-bookmark"></i>
                        HONORS
                    </a>
                </li>
                <li class="my-activities tab-hide cursor-pointer" data-id="activities">
                    <a>
                        <i class="glyphicon glyphicon-tint"></i>
                        MY ACTIVITIES
                    </a>
                </li>
                <li class="my-portfolio tab-hide cursor-pointer" data-id="myPortfolio">
                    <a>
                        <i class="glyphicon glyphicon-star"></i>
                        MY PORTFOLIO
                    </a>
                </li>
            </ul>
            <div class="student-page col-lg-12">
                <div class="content-container">
                    <div class="my-story-container">
                        <%--新增模块--%>
                        <div class="row">
                            <div class="user-edit-interview-model hide bg-gray clearfix">
                                <div class="col-lg-7 col-xs-12">
                                    <dl class="user-edit-interview-modelOne">
                                        <dt>KANWOKANWO INTERVIEW</dt>
                                        <%--<dd>Click the button, View the students interview video (need password).</dd>
                                        <dd><a class="user-edit-interview-model-btn1" href="" target="_blank">Interview & Writing Sample</a></dd>--%>
                                        <label>Please enter your password to unlock interview videos and writing samples.</label>
                                        <input type="text" value="" name="">
                                        <button>OK</button>
                                    </dl>
                                </div>
                                <div class="col-lg-5 col-xs-12 text-center">
                                    <dl class="user-edit-interview-modelTwo">
                                        <dt> View Demo</dt>
                                        <dd><a href="javascript:;" class="md-trigger text-center video-container" data-modal="cusGuide"><img width="285" height="163" src="//img-cdn.kanwokanwo.com/interview/zhaoningduo_interview_img2.png" materialsrc="//kw-cdn.kanwokanwo.com/interview/zhaoningduo_interview.mp4"></a></dd>
                                        <dd class="w285 text-left">Learn more:</dd>
                                        <dd class="w285 w285-1 text-left"><p>
                                            <a class="user-show-interview-model-btn" href="/statics/interview/applicant.jsp" target="_blank">For applicants</a>
                                            <a class="user-show-interview-model-btn user-show-interview-model-btn1" href="/statics/interview/officer.jsp" target="_blank">For schools</a>
                                        </p></dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <%--获取密码之后可观看相关信息--%>
                        <div class="row interview-tab-big hide clearfix">
                            <div class="col-xs-12">
                                <h2>KANWOKANWO INTERVIEW</h2>
                                <div class="interview-tab">
                                    <ul class="interview-tab-menu">
                                        <li class="selected">Interview</li>
                                        <li>Writing Sample</li>
                                    </ul>
                                    <div class="interview-tab-box materialList" >
                                        <div class="edit-hover">
                                            <div class="video-container">
                                                <img src="" materialsrc="" class="tab-box-img"/>
                                                <i class="glyphicon glyphicon-play-circle"></i>
                                                <div class="masking"></div>
                                            </div>
                                        </div>
                                        <div class="hide">
                                            <a class="zoom" href=""><img src="" class="tab-box-img"/></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--end新增模块--%>
                        <c:if test="${not empty videoJson}">
                            <div class="row clearfix" id="myVideo">
                                <div class="clearfix">
                                    <section class="col-xs-12">
                                        <h1>MY VIDEO</h1>
                                        <div class="media-item flex-video myVideoMedia text-center mat10">
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </c:if>
                        <div class="row clearfix" id='myStory'>
                            <div class="clearfix">
                                <div class="col-xs-12">
                                    <h1>MY STORY</h1>
                                </div>
                            </div>
                            <div class="columns-info">
                                <%--<div class="clearfix">
                                    <div class="col-xs-12">
                                        <h6><i class="glyphicon glyphicon-star"></i><em>This is where you give others a glimpse of
                                            your family, friends and community. Help them learn about your background.</em></h6>
                                    </div>
                                </div>--%>
                                <div class="bg-gray">
                                    <div class="clearfix myStoryMedia media-item">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:if test="${not empty honorJson.materials || not empty honorJson.description}">
                            <div class="row" id="honors">
                                <div class="clearfix">
                                    <div class="col-xs-12">
                                        <h1>HONORS</h1>
                                    </div>
                                </div>
                                <div class="columns-info">
                                        <%--<div class="clearfix">
                                            <div class="col-xs-12">
                                                <h6><i class="glyphicon glyphicon-star"></i><em>List your honors, show your specialties to
                                                    the wanted.</em></h6>
                                            </div>
                                        </div>--%>
                                    <div class="bg-gray">
                                        <div class="clearfix honorMedia media-item">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <div class="row" id="activities">
                            <div class="clearfix">
                                <div class="col-xs-12">
                                    <h1>MY ACTIVITIES</h1>
                                </div>
                            </div>
                            <div id="actList">
                            </div>
                        </div>
                        <c:if test="${not empty portfolioJson.materials}">
                            <div class="row" id="myPortfolio">
                                <div class="clearfix">
                                    <div class="col-xs-12">
                                        <h1>MY PORTFOLIO</h1>
                                    </div>
                                </div>
                                <div class="columns-info">
                                        <%--<div class="clearfix">
                                            <div class="col-xs-12">
                                                <h6><i class="glyphicon glyphicon-star"></i><em>Remember to mention your talents, hobbies
                                                    and works. Prove your self to others.</em></h6>
                                            </div>
                                        </div>--%>
                                    <div class="bg-gray bg-no">
                                        <div class="clearfix portfolioMedia media-item">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="col-lg-3 right-sidebar">--%>
            <%--&lt;%&ndash;<div class="mylink" >--%>
                <%--<h3>MY LINK</h3>--%>
                <%--<p>Share your link with students.</p>--%>
                <%--<input type="text"  name="link" readonly="readonly" Value="http://www.baidu.com">--%>
            <%--</div>--%>
            <%--<div class="badges">--%>
                <%--<h3>BADGES</h3>--%>
                <%--<ul class="badges-list">--%>
                    <%--<li></li>--%>
                    <%--<li></li>--%>
                    <%--<li></li>--%>
                    <%--<li></li>--%>
                    <%--<li></li>--%>
                    <%--<li></li>--%>
                    <%--<li></li>--%>
                    <%--<li></li>--%>
                <%--</ul>--%>
            <%--</div>&ndash;%&gt;--%>
            <%--<div class="kanwo-interview">--%>
                <%--<h3>KANWOKANWO INTERVIEW</h3>--%>
                <%--<p>A fast, comprehensive, and intuitive way for them to show admissions officers who you truly are.</p>--%>
                <%--<div class="my-video video-container"><img materialsrc="//kw-cdn.kanwokanwo.com/interview/zhaoningduo_interview.mp4" src="//img-cdn.kanwokanwo.com/interview/zhaoningduo_interview_img2.png"></div>--%>
                <%--<a class="learn-more" href="/statics/interview/applicant.jsp" target="_blank">Learn more</a>--%>
                <%--<a class="reserve-interview" href="https://jinshuju.net/f/fZDcSo" target="_blank">Reserve interview</a>--%>
            <%--</div>--%>
            <%--<div class="inspiration">--%>
                <%--<h3>NEED INSPIRATION?</h3>--%>
                <%--<a href="/tanghaidan" target="_blank"><img src="/images/inspiration-image.png"></a>--%>
            <%--</div>--%>
        <%--</div>--%>
    </div>
</section>
<div class="clearfix"></div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script type="text/template" id="biography-template">
    <li class="location">
        <i class="glyphicon glyphicon-map-marker"></i>
        <a>LOCATION:　<strong><@if(location){@><@=location@><@}else{@>N/A<@}@></strong></a>
    </li>
    <li class="school-name">
        <i class="glyphicon glyphicon-bed"></i>
        <a>SCHOOL:　<strong><@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@></strong></a>
    </li>
    <li class="year">
        <i class="glyphicon glyphicon-education"></i>
        <a>GRADUATION YEAR:　<strong><@if(graduation){@><@=graduation@><@}else{@>N/A<@}@></strong></a>
    </li>
    <li class="hobby">
        <i class="glyphicon glyphicon-tower"></i>
        <a>MAJOR OF INTEREST:　<strong><@if(hobby){@><@=hobby@><@}else{@>N/A<@}@></strong></a>
    </li>
    <li class="score">

        <i class="glyphicon glyphicon-tags"></i>
        <a  id="examRecord"></a>
    </li>
</script>
<script type="text/template" id="examRecord-layout-template">
        <p id="examRecordSummary"></p>
        <div id="examRecordDetail" class="hide-other hide">
        </div>
</script>

<script type="text/template" id="examRecordSummarySimpleView-template">
    <@if(items.length>0){
    _.each(items, function(item){ @>
    <div><@=item.examType@>：<strong><@=parseFloat(item.total).toFixed(0)@></strong></div>
    <@ })

    }else{@>
    N/A
    <@}@>
</script>

<script type="text/template" id="examRecordDetailSimpleView-template">
</script>
<%--描述、材料Layout模板--%>
<script type="text/template" id="description-material-layout-template">
    <div class="description"></div>
    <div class="materialList"></div>
    <div class='less-more-button col-lg-12 col-xs-12' style="display: none">more</div>
</script>
<%--描述模板--%>
<script type="text/template" id="description-template">
    <@if(typeof description == 'undefined'){}else if(description == ''){@>
    <div class="col-lg-8 col-xs-12 disabled ">
        <div class="r-line">
            <a class="add-description modalLink text-center">
                <i class="glyphicon glyphicon-align-left"></i>
                <strong>Good guy</strong>
            </a>
        </div>
    </div>
    <@}else{@>
    <div class="col-lg-8 col-xs-12 disabled">
        <div class="media-item-description">
            <p><@=description@></p>
        </div>
    </div>
    <@}@>
</script>

<%--Material模板--%>
<script type="text/template" id="material-template">
    <@if(type == 'IMG'){@>
    <div class="edit-hover"> <a class="zoom" title="<@=title@>" href="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src"><img src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src"></a>
    </div>
    <@}else if(type == 'VIDEO'){@>
    <div class="edit-hover">
        <div class="video-img video-container">
            <@if(status == 'NORMAL'){@>
            <img materialSrc="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" src="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src">
            <@}else if(status == 'TRANSCODE'){@>
            <img src="/images/transcoding_324.324.jpg"/>
            <@}@>
            <i class="glyphicon glyphicon-play-circle"></i>
            <div class="masking"></div>
        </div>
    </div>
    <@}else if(type == 'DOC'){@>
    <div class="edit-hover"><a href="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" target="_blank" class="edit-document-item text-center"><i class="glyphicon glyphicon-list-alt"></i>
        <p class="edit-document-item-title"><@=title@></p>
        <small>Document</small>
    </a></div>
    <@}@>
</script>

<%--activityTag模板--%>
<script type="text/template" id="activityTagList_template">
    <ul class="activity-item">
        <li class="col-lg-2 col-xs-4 on ">
            <p><@=activityTags[activityTags.length-1]@><span>（<@=count[activityTags.length-1]@>）</span></p>
        </li>

        <@ for(var i = 0;i < activityTags.length-1;i++){ @>
        <li class="col-lg-2 col-xs-4 " <@if(count[i] == 0){@> style="display:none" <@ } @> >
        <p><@=activityTags[i]@><span>（<@=count[i]@>）</span></p>
        </li>
        <@ } @>
    </ul>
</script>

<script type="text/template" id="activityLayout_template">
    <div class="activityDetail clearfix"></div>
    <div class="columns-info">
        <div class="bg-gray bg-no">
            <div class="activityDescriptionMaterial clearfix media-item"></div>
        </div>
    </div>
    </div>
</script>

<script type="text/template" id="activityDetail_template">
    <section>
        <div class="clearfix">
            <div class="col-xs-12">
                <header>
                    <div class="activity-title">
                        <h3><@=title@></h3>
                        <div class="activity-age">
                            <@if(startDate){@><@=startDate@> — <@}@><@if(!endDate){@>Now<@}else{@><@=endDate@><@}@>
                        </div>
                    </div>
                    <ul class="activity-item clearfix">
                        <@ for(var i = 0;i < activityTagList.length;i++){ @>
                        <li class="col-lg-2 col-xs-4"><p><@= App.activityTags[parseInt(activityTagList[i].title)]@></p></li>
                        <@ } @>
                    </ul>
                </header>
            </div>
        </div>
    </section>
</script>

<%--MyVideo 模板--%>
<script type="text/template" id="myVideo-template">
    <@if(status == 'NORMAL'){@>
    <video class="video-js vjs-default-skin" controls preload="none" poster="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>" data-setup="{}">
        <source src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" type='video/mp4'/>
    </video>
    <@}else if(status == 'TRANSCODE'){@>
    <img src="/images/transcoding.png"/>
    <@}@>
</script>
<script src="/js/video-popup.js?20160512"></script>
<script src="/js/video.js?201603229"></script>
<script src="/js/modernizr.custom.js"></script>
<script src="/js/backbone-min.js"></script>
<script src="/js/backbone.marionette.min.js"></script>
<script src="/js/mn_test/viewProfile.js?20160516"></script>
<script src="/js/jquery-rebox.js?201603229"></script>
<script src="/js/jquery.datetimepicker.full.js"></script>
<script src="/js/newStudent.js"></script>
<script>
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

    $("#comments").bind('propertychange input', function () {
        var len = $("#comments").val().length;
        $(".byte-count").text(len + "/200");
    });


    function reservation(){
        var tutorId = "${tutorId}";
        var tutorName = "${tutorName}";
        var school = "${school}";
        var reservationTime = $("#datetimepicker").val();
        var reservationPeriod = $("#timeDuration").val();
        var nickname = $("#nickname").val();
        var mobile = $("#mobile").val();
        var email = $("#email1").val();
        var comments = $("#comments").val();
        var cost = $("#consultCost").text();
        if(reservationTime == "" || reservationPeriod == "" || mobile == "" || reservationTime == "请选择日期/时间"){
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
            url: '/reservation/submit',
            async:false,
            data: {tutorId:tutorId,tutorName:tutorName,reservationTime:reservationTime,reservationPeriod:reservationPeriod,nickname:nickname,mobile:mobile,email:email,comments:comments,cost:cost,school:school},
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
<script>
    $(function(){
        // 中文信息关闭事件
        var win = $(window).width();
        $(".toClose").on("click",function () {
            $(".ch-frame").css("display","none");
            if(win < 769){
                $("section .main-content .information").css("margin-bottom","10%");
            }
        });

        var $tab_li = $('.interview-tab ul li');
        $tab_li.hover(function(){
            $(this).addClass('selected').siblings().removeClass('selected');
            var index = $tab_li.index(this);
            $('div.interview-tab-box > div').eq(index).show().siblings().hide();
        });

        var jsonResult = {"myStory":${storyJson}, "honor":${honorJson}, "portfolio":${portfolioJson}};
        var contentViews = [];
        //判断不显示为空的内容
        $.each(jsonResult, function(index, item){
            if(!item.description =="" || !item.materials.length == 0){
                contentViews[index] = new App.DescriptionMaterialSimpleView({model: new App.Content(item), el: "." + index + "Media"});
                contentViews[index].render();
            }
        });

        var interviewJson = ${interviewJson};
        if(interviewJson){
            $(".user-edit-interview-model").removeClass("hide");
            $(".user-edit-interview-modelOne button").on("click",function(){
                var url=window.location.pathname.split("/")[1];
                $.ajax({
                    url: "/interview/check",
                    data: {
                        publicUrl: url,
                        password: $(".user-edit-interview-modelOne input").val()
                    },
                    type: "get",
                    dataType: 'json',
                    success: function (data) {
                        if(data.status==1){
                            var result = JSON.parse(data.data);

                            if(result.video){
                                $(".interview-tab-box img")[0].src = result.video.videoPreviewImg.replace('http', 'https')
                                $($(".interview-tab-box img")[0]).attr("materialSrc", result.video.materialSrc.replace('http', 'https'))
                            }
                            if(result.image) {
                                $(".interview-tab-box img")[1].src = result.image.materialSrc.replace('http', 'https');
                                $(".interview-tab-box a").attr("href", result.image.materialSrc.replace('http', 'https'));
                            }

                            $(".interview-tab-big").removeClass("hide");
                            $(".user-edit-interview-model").addClass("hide");
                        }
                        else{
                            alert(data.message);
                        }
                    }
                });
            });
        };

        var myVideoJson =${videoJson};
        new App.MyVideoModuleSimpleView({model: new App.Material(myVideoJson), el: ".myVideoMedia"}).render();

        var biography = ${biographyJson};
        new App.BiographyModuleSimpleView({model: new App.Biography(biography), el: ".biography"}).render();

        var examJson =${recordsJson};
        var examList = new App.ExamRecordList(examJson);
        new App.ExamRecordModuleSimpleView({collection: examList}).render();

        var activitiesJsonResult = ${activityListJson};
        var activityList = new App.ActivityList(activitiesJsonResult);
        var activityModuleView = new App.ActivityModuleView({collection: activityList});
        activityModuleView.render();

        currentUserStudentProfileId = "${sessionScope.loginUser.studentProfileId}"
        targetStudentProfileId = "${studentProfile.studentProfileId}"

        $('.materialList').rebox({selector: '.zoom'});

//        $('.button-tag li').click(function(){
//            var item = $(this);
//            $('.button-tag li').addClass('tab-hide');
//            item.addClass('tab-show');
//            setTimeout(function(){
//                item.removeClass('tab-show');
//                item.addClass('tab-hide');
//            }, 100);
//        });
    });

</script>
</body>
</html>