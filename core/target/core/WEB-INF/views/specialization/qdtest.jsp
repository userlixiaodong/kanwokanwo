<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/18
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
       <title>看我看我 |活动提升|</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | ">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | ">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link rel="stylesheet" href="/style/qdtest.css?20170428">
    <link rel="stylesheet" href="/style/mengban.css">
</head>
<body>
<div class="login-before">
    <a class="login-before-close-btn" href="javascript:closeAlert();"><i class="glyphicon glyphicon-remove"></i></a>
    <p>您还未登录，请在登录之后再进行操作哦！~</p>
    <a class="login-btn md-trigger" data-modal="modal-12" href="javascript:trackOutboundLink('', 'index_login');">登录</a>
</div>
<div class="leadFrame">
    <a class="login-before-close-btn" href="javascript:closeAlert();"><i class="glyphicon glyphicon-remove"></i></a>
    <p>请使用电脑进行登录</p>
</div>
<%--左边漂浮窗--%>
<div class="weixinFrame"></div>
<div class="container_box">
    <%@include file="/WEB-INF/views/common/top.jsp" %>
    <input type="hidden" id="ItemId" value="${Item.itemId}">
    <%----------------------------------------------------------------------------项目Banner开始-------------------------------------------------------------------------------%>
    <div class="gis_banner">
        <img src="${Item.bannerUrl}" alt="" class="ban-pic">
        <img src="/images/banner-wx.png" class="ban-wx">
<%--========================================收藏标签==============================================================================================--%>

        <c:choose>
            <c:when test="${sessionScope.loginUser == null}">
                <span class="store_up1" ><a href="javascript: loginAlert();"><img src="/images/storeup01.png"><i>收藏</i></a></span>
            </c:when>
            <c:otherwise>
                <span class="store_up" ><img src="/images/storeup01.png"><i>收藏</i></span>
            </c:otherwise>
        </c:choose>
        <div class="gis_banner_btn">
            <c:choose>
                <c:when test="${sessionScope.loginUser == null}">
                    <a href="javascript: loginAlert();;" class="signUp" id="signUp">点击报名</a>
                </c:when>
                <c:otherwise>
                    <a href="javascript:toApply();;" class="signUp" id="signUp">点击报名</a>
                </c:otherwise>
            </c:choose>
            <c:if test="${not empty Item.videoUrl}">
                <a href="javascript:;" class="signUp signUp02">观看往期直播</a>
                </c:if>
        </div>
    </div>
    <%----------------------------------------------------------------------------项目Banner结束-------------------------------------------------------------------------------%>

     <div class="mid_cont">

        <c:if test="${fn:length(materialList1) ne 0}">
             <%--项目背景start--%>
             <%----------------------------------------------------------------------------项目背景开始------------------------------------------------------------------------------
             <div class="projectBackground">
                    <c:forEach items="${materialList1}" var="background">
                        <c:if test="${not empty background.title}">
                            <p class="titles">${background.title}</p>
                        </c:if>
                        <div class="projectAnalyse">
                             <h5>${background.note}
                             </h5>
                             <div id="hcharts">
                                 <img src="${background.bitmap}" alt="">
                             </div>
                             <div class="nakedReason">
                                 ${background.note1}
                             </div>
                        </div>
                    </c:forEach>   
             </div>
             --------------------------------------------------------------------------项目背景结束-------------------------------------------------------------------------------%>
             <div class="programBg">
                <c:forEach items="${materialList1}" var="background">
                        <c:if test="${not empty background.title}">
                            <p class="titles">${background.title}</p>
                            </c:if>
                        <div class="programContent">
                            <span class="programText">
                                ${background.note}</span>
                            <div class="programImg">
                                <img src="${background.bitmap}">
                                <%--<p class="programImg_describe"></p>--%>
                            </div>
                            <span class="programText">
                             ${background.note1}</span>
                        </div>
                        </c:forEach> 
            </div>
        <%----------------------------------------------------------------------------项目背景结束-------------------------------------------------------------------------------%>
         </c:if>

          <c:if test="${fn:length(materialList2) ne 0}">
         <%--项目特色start 注意：背景小图标动态生成命名格式统一以mantengIcon+由1开始的数字命名--%>
             <%----------------------------------------------------------------------------项目特色开始-------------------------------------------------------------------------------%>
             <div class="advantage">

                        <c:forEach items="${materialList2}" var="special">
                            <c:if test="${not empty special.title}">
                                <p class="titles">${special.title}</p>
                                <ul class="clearfix">
                            </c:if>
                            <li>
                             <img src="${special.bitmap}" alt="">
                             <h4>${special.note}</h4>
                             <span>${special.note1}</span>
                         </li>
                        </c:forEach>
                     </ul>
                 </div>
                 <%----------------------------------------------------------------------------项目特色结束-------------------------------------------------------------------------------%>
            </c:if>

<%----------------------------------------------------------------------------项目详情开始-------------------------------------------------------------------------------%>
         <%--项目详情--%>
         <div class="projectDetail">
                <p class="titles">项目信息</p>
                <div class="project_details">
                    <h2>项目信息</h2>
                    <div class="contens">
                        <c:if test="${not empty Item.dt_location}">
                            <p>
                                <b>公司地址： </b><span>${Item.dt_location}</span>
                            </p>
                        </c:if>
                        <c:if test="${not empty Item.dt_time}">
                        <p>
                            <b>申请期限： </b><span>${Item.dt_time}</span>
                        </p>
                        </c:if>
                        <c:if test="${not empty Item.dt_people}">
                        <p>
                            <b>适合人群： </b><span>${Item.dt_people}</span>
                        </p>
                        </c:if>
                        <c:if test="${not empty Item.dt_company}">
                            <p>
                                <b>主办单位： </b><span>${Item.dt_company}</span>
                            </p>
                        </c:if>
                        <c:if test="${not empty Item.dt_intro}">
                        <p>
                            <b>项目简介： </b>
                            <span class="metarial">
                                ${Item.dt_intro}
                            </span>
                        </p>
                        </c:if>
                    </div>
             </div>
        </div>
<%----------------------------------------------------------------------------项目详情结束-------------------------------------------------------------------------------%>

        
 <c:if test="${fn:length(materialList3) ne 0}">
    <%-------------------------------------------------------------------------视频介绍开始----------------------------------------------------------------------------------%>
     <%--项目介绍视频--%>
            <div class="videoIntroduce">
                <c:forEach items="${materialList3}" var="video">
                        <p class="titles" >${video.title}</p>
                        <div class="videoWrapper">
                            <video id="video1" src="${video.videoUrl}"
                                   type="video/mp4" width="100%" height="100%" controls="controls" poster="${video.bitmap}"
                                   webkit-playsinline></video>
                            <%--<i id="play" class="play"></i>--%>
                        </div>
                </c:forEach>
                
                <c:choose>
                    <c:when test="${sessionScope.loginUser == null}">
                        <a href="javascript: loginAlert();" class="videoSignUp">报名申请</a>
                    </c:when>
                    <c:otherwise>
                        <a class="videoSignUp" href="javascript: toApply();">报名申请</a>
                    </c:otherwise>
                </c:choose>
            </div>
    <%--------------------------------------------------------------------------视频介绍结束---------------------------------------------------------------------------------------------%>
</c:if>
<c:if test="${fn:length(materialList4) ne 0}">
    <%-------------------------------------------------------------------------项目分类开始----------------------------------------------------------------------------------%>
         <%--鹰计划开始--%>
         <div class="yjh">
            <c:forEach items="${materialList4}" var="material">
                        <c:if test="${not empty material.title}">
                            <p class="titles" >${material.title}</p>
                            <ul class="int_list clearfix">
                        </c:if>

                        <li>
                     <div class="yjhCont">
                         <h6>${material.note}</h6>
                         <div class="yjhInfo">
                             ${material.note1}
                         </div>
                     </div>
                 </li>
            </c:forEach>
             </ul>
         </div>
    <%--------------------------------------------------------------------------项目分类结束---------------------------------------------------------------------------------------------%>
</c:if>
 <c:if test="${fn:length(materialList5) ne 0}">
    <%-------------------------------------------------------------------------活动职位开始----------------------------------------------------------------------------------%>
         <%--项目活动Or实习start--%>
         <div class="programBox">
             <div class="summerProgram">

                    <c:forEach items="${materialList5}" var="position">
                        <c:if test="${not empty position.title}">
                            <p class="titles" >${position.title}</p>
                            <ul class="int_list clearfix">
                        </c:if>

                        <li>
                         <div class="intBox">
                             <img src="${position.bitmap}" />
                             ${position.note}
                         </div>
                        </li>
                    </c:forEach>
                     
                     <div class="clear"></div>
                 </ul>
             </div>
         </div>
    <%--------------------------------------------------------------------------活动职位结束---------------------------------------------------------------------------------------------%>
</c:if>



<c:if test="${fn:length(materialList6) ne 0}">
     <%-------------------------------------------------------------------------活动成果开始----------------------------------------------------------------------------------%>
         <%--活动成果--%>
         <div class="activityResults">
            <c:forEach items="${materialList6}" var="material" varStatus="status">
                <c:if test="${not empty material.title}">
                            <p class="titles" >${material.title}</p>
                            <div class="results">
                                <div class="resultsPart">
                </c:if>
                    <div class="results-parts">
                         <h4>${material.note}</h4>
                         <span class="results-span">
                            ${material.note1}
                        </span>
                     </div>
                     <c:if test="${status.index == 2}">
                            </div>
                            <div class="resultsPart">
                        </c:if>
                     
            </c:forEach>
                </div>
             </div>
         </div>
    <%--------------------------------------------------------------------------活动成果结束---------------------------------------------------------------------------------------------%>
    </c:if>
         

<c:if test="${fn:length(materialList7) ne 0}">
     <%-------------------------------------------------------------------------师资介绍开始----------------------------------------------------------------------------------%>
         <%--师资介绍--%>
         <div class="teachers">
                      <c:forEach items="${materialList7}" var="material" varStatus="status">
                         <c:if test="${not empty material.title}">
                            <p class="titles" >${material.title}</p>
                            <div class="teachers-wrapper">
                             <div class="teachers-loop">
                                 <ul>
                        </c:if>
                        <li>
                             <img src="/images/keru-teacher1.png" alt="">
                             <p class="en-name"></p>
                             <p class="ch-name">${material.note}</p>
                             <span class="teacher-describe">${material.note1}</span> </span>

                         </li>
                         <c:if test="${(status.count) % 3 == 0}">
                            </ul>
                            <ul>
                        </c:if>
                    </c:forEach>
                     </ul>
                     
                 </div>
             </div>
             <img src="/images/keru-prev.png" width="20px" height="40px" id="prev">
             <img src="/images/keru-next.png" width="20px" height="40px" id="next">
         </div>
    <%--------------------------------------------------------------------------师资介绍结束---------------------------------------------------------------------------------------------%>
    </c:if>

<c:if test="${fn:length(materialList8) ne 0}">
     <%-------------------------------------------------------------------------成功案例开始----------------------------------------------------------------------------------%>
         <%--成功案例--%>
         <div class="successCase">
             

                     <c:forEach items="${materialList8}" var="material" varStatus="status">
                            <c:if test="${not empty material.title}">

                            <p class="titles" style="color: #fff;">${material.title}</p>
                             <div class="cases">
                                 <hr style="width: 62%;margin: 0 auto -3rem;">
                                 <div class="characters">
                                     <div class="charactersBox">
                        </c:if>
                         <c:choose>
                             <c:when test="${status.index == 0}">
                                 <span style="display:block;">${material.note}</span>
                             </c:when>
                             <c:otherwise>
                                 <span style="display:none;">${material.note}</span>
                             </c:otherwise>
                         </c:choose>

                    </c:forEach>
                </div>


                     <ol class="charactersImg">
                        <c:forEach items="${materialList8}" var="material" varStatus="status">
                        <c:choose>
                            <c:when test="${status.index == 0}">
                                <li style="border: 2px solid #fff;"><img src="${material.bitmap}" ><span class="imgMask"></span></li>
                            </c:when>
                            <c:otherwise>
                                <li><img src="${material.bitmap}" ><span class="imgMask"></span></li>
                            </c:otherwise>
                        </c:choose>
                             
                    </c:forEach>
                     </ol>
                 </div>

             </div>
             
         </div>
    <%--------------------------------------------------------------------------成功案例结束---------------------------------------------------------------------------------------------%>
    </c:if>
    <c:if test="${fn:length(materialList10) ne 0}">
     <%-------------------------------------------------------------------------项目成功案例开始----------------------------------------------------------------------------------%>
         <%--项目成功案例start--%>
         <div class="case">
            <c:forEach items="${materialList10}" var="material" varStatus="status">
                <c:if test="${not empty material.title}">
                    <p class="titles">${material.title}</p>
                    <ul class="clearfix">
                </c:if>
                 <li>
                     <p>
                         <img src="${material.bitmap}" alt="">
                         <span>
                            <i>0${status.count}</i>
                        ${material.note}
                    </span>
                     </p>
                 </li>
            </c:forEach>
             </ul>
         </div>
    <%--------------------------------------------------------------------------项目成功案例结束---------------------------------------------------------------------------------------------%>
    </c:if>
    <c:if test="${fn:length(materialList9) ne 0}">
     <%-------------------------------------------------------------------------学员反馈开始----------------------------------------------------------------------------------%>
         <%--学员反馈--%>
         <div class="feedback">
            <c:forEach items="${materialList9}" var="material">
                 <c:if test="${not empty material.title}">
                    <p class="titles" style="color:#fff;">${material.title}</p>
                 </c:if>
                 <div class="xyfk">
                     <img src="${material.bitmap}" alt="">
                     <div class="feed-content">
                    <span class="feed-span">
                            ${material.note}
                    </span>
                             ${material.note1}
                     </div>
                 </div>

             </c:forEach>
             
         </div>
    <%--------------------------------------------------------------------------学员反馈结束---------------------------------------------------------------------------------------------%>
    </c:if>

<c:if test="${fn:length(materialList11) ne 0}">
     <%-------------------------------------------------------------------------录取学校开始----------------------------------------------------------------------------------%>
         <%--学院录取学校start--%>
         <div class="admissionSchool ">
                <c:forEach items="${materialList11}" var="material">
                        <c:if test="${not empty material.title}">
                            <p class="titles" >${material.title}</p>
                            <ul class="admissionList clearfix">
                        </c:if>
                            <li><p><img style="display: block; width: 100%" src="${material.bitmap}" alt=""></p></li>
                </c:forEach>
                </ul>
         </div>
    <%--------------------------------------------------------------------------录取学校结束---------------------------------------------------------------------------------------------%>
    </c:if>


<c:if test="${fn:length(materialList12) ne 0}">
     <%-------------------------------------------------------------------------更多信息开始----------------------------------------------------------------------------------%>
         <%--学院录取学校start--%>
         <div class="moreMessage ">
                <c:forEach items="${materialList12}" var="material">
                        <c:if test="${not empty material.title}">
                            <p class="titles" >${material.title}</p>
                            <ul>
                        </c:if>
                            <li>
                                 <p>${material.note}</p>
                                 <img src="${material.bitmap}">
                                 <a href="${material.videoUrl}">点击下载</a>
                             </li>
                </c:forEach>
                </ul>
         </div>
    <%--------------------------------------------------------------------------更多信息结束---------------------------------------------------------------------------------------------%>
    </c:if>
         <%-------------------------------------------------------------------- 项目FAQ 开始---------------------------------------------------------------------------------------------%>
         <div class="question">
             <p class="titles">ASR项目FAQ </p>
             <ul>
                 <li>
                     <div>
                         <h5>1.Q: ASR会有面试或者笔试吗? 筛选标准是什么呢？</h5>
                         <span>A: ASR项目以往只招收大学生，今年首次招募高中生，因而标准也会比较高。学生需填写个人信息和标化成绩，审核通过后会安排导师面试。</span>
                     </div>
                 </li>
                 <li>
                     <div>
                         <h5>2.Q:今年读9年级，可以参与ASR项目吗?</h5>
                         <span>A: ASR主要招收高中生，但是对特别优秀的9年级学生也会予以考虑。为了保证项目质量和学员收获，学员报名后，需通过简历和面试筛选方可参与项目。</span>
                     </div>
                 </li>
                 <li>
                     <div>
                         <h5>3.Q:孩子不是北京的，食宿问题怎么解决?</h5>
                         <span>A: 中科院位于中关村商区中心，周围有很多高校，学生可以选择在附近的大学食堂办理饭卡或者点外卖。住宿方面，看我看我可以提供学生宿舍，有生活老师查房，保障学生的安全。如果想住酒店的话，看我看我也有自己的协议酒店，可以提供价格优惠。</span>
                     </div>
                 </li>
                 <li>
                     <div>
                         <h5>4.Q: 报名和缴费的流程是什么呢？大概需要多久才能收到录取？</h5>
                         <span>A: 学员在看我看我网站注册报名，提交基本资料和标化成绩后，看我看我会尽快安排项目导师审核材料并面试。整个流程最长不超过一周。</span>
                     </div>
                 </li>
                 <li>
                     <div>
                         <h5>5.Q:希望导师能把推荐信写的分量重一点可以吗?</h5>
                         <span>A: 导师会客观的根据学员表现出具推荐信，但是看我看我会与导师积极沟通，并且敦促学员按时参与项目，完成导师布置的任务，从而保证学员收获及推荐信的质量。</span>
                     </div>
                 </li>
                 <li>
                     <div>
                         <h5>6.每天具体的课时安排是什么样的呢？</h5>
                         <span>A：暑期课程的初步时间为7月3日至7月31日每周一，三，五下午的1点到6点，由于研究为个性化研究，所以无法提供具体课时安排。</span>
                     </div>
                 </li>
                 <li>
                     <div>
                         <h5>7.Q：最终项目成果有哪些？科研报告可以理解为论文吗？</h5>
                         <span>A：学生根据自己的程度在导师的指导下进行研究并完成研究报告，研究报告不是申请论文，但可作为附加材料提供给大学。</span>
                     </div>
                 </li>
                 <li>
                     <div>
                         <h5>8.Q：具体研究方向是怎么定的呢？是参与项目之前就可以定还是见到导师之后才定？假如三个人的方向都不一样怎么办？</h5>
                         <span>A：具体研究方向根据学生兴趣决定，如果学生有已定方案在报名时请写进报名表，如没有方向可在与导师沟通后决定，研究方向为个人选择，方向不同并不冲突。</span>
                     </div>
                 </li>
                 <li>
                     <div>
                         <h5>9.Q：科研就是收集和分析数据吗？</h5>
                         <span>A: 除了primary research和data collection之外，导师也会布置一些论文让学生进行阅读和讨论，同时学生可以参加力所能及的实验，最终的研究报告是primary research和secondary research的结合，并不是只有primary research的。</span>
                     </div>
                 </li>
                 <li>
                     <div>
                         <h5>10.Q: ASR的退款政策是什么？如果报名后想退出的话可以退吗？可以帮我保留名额吗？</h5>
                         <span>A:  签订本合同并完成缴费起学员即成功报名（并预留项目名额），之后学员因任何原因单方面取消行程，则按下列约定处理</span>
                     </div>
                 </li>
                 <li>
                     <p class="info">
                         <b>注：</b>如补充协议中有服务退款相关规定的以补充协议为准。<br>
                         ①学员若单方面要求解除合同或强行退出项目，看我看我有权不予返还任何费用。<br>
                         ② 学员若因客观原因（如疾病或严重身体伤害等个人突发事件）所致甲方拟解除本合同，学员应当提前今早书面通知乙方，并承担看我看我为履行本合同已经支付的费用或者实际损失。<br>
                         ③学员已经参与授课，但授课未完成的且由甲方单方面提出退出项目的，看我看我不退还任何费用。<br>
                         ④学员参与项目并且完成全部授课的，如按本合同约定的且已取得相应科研证明和推荐信，但因学员单方原因放弃的，看我看我不退还实际收取甲方的基本服务费；<br>
                         ⑤学员未按照合同约定按时支付项目费用的，如希望项目名额依然保留，应支付滞纳金，滞纳金标准为应支付而未支付总金额的 0.5%/天，直至全部费用支付为止。<br>
                         如果您还有其他问题，欢迎电话或微信联系 13681039513 （胡老师）。<br>
                         <b>注：</b>解释权归看我看我所有。
                     </p>
                 </li>
             </ul>
         </div>



         <%--底部微信联系方式--%>
         <div class="application">
             <%--<p class="titles"><a href="">提升你的学术背景，让你的履历在<br />招生官的眼中再升一个等级吧~</a></p>--%>
             <div class="tel-yw-icon">
                 <span class="consult_tel">13681039513</span>
             </div>
             <div class="consulting">
                 <div class="erweima">
                     <img src="/images/gzh.png" alt=""><span>关注看我看我公众号<br/>获得更多留学资讯</span>
                 </div>
                 <div class="erweima">
                     <img src="/images/kefu.png" alt=""><span>独家报名通道<br/>添加看我客服</span>
                 </div>
             </div>
             <c:choose>
                 <c:when test="${sessionScope.loginUser == null}">
                     <a class="videoSignUp" href="javascript:loginAlert();" style="color:#fff;">点击报名</a>
                 </c:when>
                 <c:otherwise>
                     <a class="videoSignUp" href="javascript:toApply();" style="color:#fff;">点击报名</a>
                 </c:otherwise>
             </c:choose>
         </div>
     </div>



    <!--<%--弹窗效果--%>-->
    <div class="popup_box" style="display: none">
        <span class="popup_close"></span>
        <a href="javascript:toOrder();" style="margin-top: 5.7rem;">请使用已有信息申请</a>
        <a href="javascript:toApplication();" style="margin-top: 2rem;">修改已有信息</a>
    </div>
    <!--<%--弹窗蒙版--%>-->
    <div class="fe_window_mask"></div>
    <%@include file="/WEB-INF/views/common/bottom.jsp" %>
</div>
<div class="mask"></div>

</body>
<script type="text/javascript">



    //弹窗事件
    $(".popup_close").click(function() {
        $(".popup_box").css("display", "none")
        $(".fe_window_mask").css("display", "none")
        $ (window).unbind ('scroll');
    });

    var wid = $(window).width();
    var hei = $(window).height();
    function loginAlert() {
        if (wid < 769) {
            $("#signUp,.videoSignUp").on("click", function () {
                var ban = 0;
                $(".mask").css("display", "block");
                $(".leadFrame").show(400);
                document.addEventListener("touchmove", function (e) {
                    if (ban == 0) {
                        e.preventDefault();
                        e.stopPropagation();
                    }
                }, false);
            });
            $(".login-before-close-btn").on("click", function () {
                $(".mask").css("display", "none");
                $(".leadFrame").css("display", "none");
            });
        } else {
            $(".login-before").css('display', 'block');
        }
    }



    function closeAlert() {
        $(".login-before").css('display', 'none');
        location.reload();
    }
    function toApply() {
        //location.href = "/userItem/applymanteng";
        //location.href="/order/enroll/"+$("#ItemId").val();
        $(".popup_box").show();
        $(".fe_window_mask").show();
        var scrollH = $(window).scrollTop();
        $(window).scroll(function() {
            $(this).scrollTop(scrollH)
        });
    }

    function toOrder() {
        $.post("/specialization/isExistInfo",{"itemId":$("#ItemId").val()},function(data){
            // 获得到返回的数据:
            if(data == 1){
                //跳订单页面
                location.href="/order/enroll/"+$("#ItemId").val();
            }else{
                // 跳保存页面
                location.href="/specialization/applyInfo?itemId=" + $("#ItemId").val();
            }
        });

    }
    function toApplication() {
        $.post("/specialization/isExistInfo",{"itemId":$("#ItemId").val()},function(data){
            // 获得到返回的数据:
            if(data == 1){
                //跳编辑页面
                location.href="/specialization/editApplyInfo?itemId=" + $("#ItemId").val();
            }else{
                // 跳保存页面
                location.href="/specialization/applyInfo?itemId=" + $("#ItemId").val();
            }
        });

    }

    $(function () {
        /*顶部按钮居中显示*/
        var signupNum=$(".gis_banner_btn a").length;
        if(signupNum==1){
            $(".signUp:eq(0)").css({"float":"none","margin-left":"0"})
            $(".gis_banner_btn").css("text-align","center")
        }
        /*观看往期直播*/
        var videoTop=$(".videoIntroduce").offset().top-80;
       /* console.log("高度"+videoTop)*/
        $(".signUp02").click(function () {
            $(window).scrollTop(videoTop)
        })

        /*顶部banner变为手机端图片更换*/
        if(wid<=767){
            $(".gis_banner .ban-pic").attr("src","/images/indexBanner01.jpg")
        }
        /*项目特色不同数量更换不同样式2017-5-18*/
        var num01=$(".advantage li").length;
        console.log(num01)
        if(num01==4){
            $(".advantage ul li").css("width","22%")
            $(".advantage ul li:eq(3)").css("margin-left","1rem")
        }if(num01==6){
            /* $(".advantage ul li").css("width","30%")*/
            $(".advantage ul li:eq(3)").css("margin-left","1rem")
        }if($(window).width()<= 768){
            $(".advantage ul li:eq(3)").css("margin-left","auto")
        }
        /*项目活动or实习不同数量更换不同样式2017-5-18*/
        var num02=$(".int_list li").length;
       /* console.log(num02)*/
        if(num02==2){
            $(".int_list").css("width","60%")
            $(".int_list li").css("width","50%")
        }if(num02==3){
            $(".int_list li").css("width","33.33%")
        }if(num02==4){
            $(".int_list").css("width","85%")
            $(".int_list li").css("width","25%")
            $(".int_list li .intBox").css("width","95%")
            if($(window).width()<= 1024){
                $(".int_list li").css("width","50%")
                $(".int_list li").css("margin","1rem 0")
            }
        }
        if(num02==5){
            $(".int_list li").css("width","33.33%")
            $(".int_list li").css("margin","1rem 0")
            $(".int_list li:eq(3)").css("margin-left","12rem")
        } if(num02==6){
            $(".int_list li").css("width","33.33%")
            $(".int_list li").css("margin","1rem 0")
        }
        if($(window).width()<= 1024){
            $(".int_list").css("width","90%")
        }
        if($(window).width()<= 768){
            $(".int_list").css("width","96%")

        }
        if($(window).width()> 767){

            $(window).load(function(){
                var arr01=[];
                $(".int_list li").each(function (index,ele) {
                    arr01.push($(ele).height())
                })
                var eleH=(Math.max.apply(null, arr01));//最大值
                console.log(eleH)
                $(".int_list li .intBox").each(function (index,ele) {
                    $(ele).css("height",eleH+24+"px")
                })
            })
        }
        if($(window).width()<= 414){
            $(".int_list li").css("width","100%")
            $(".int_list li").css("margin","1rem 0")
            $(".int_list li:eq(3)").css("margin-left","0")
        }
        /*鹰计划不同数量更换不同样式2017-5-19*/
        var num03=$(".yjh ul li").length;
        /*console.log(num03)*/
        if(num03%3==0){
            $(".yjh ul li").css({
                "width":"33%",
                "height":"auto",
                "margin-bottom":"1rem",
            });
            $(".yjh ul li:eq(3)").css("margin-left","0")
            if($(window).width()<= 1300){
                $(".yjhInfo").css("height","26rem")
                $(".yjh").css("height","auto")
            }
            if($(window).width()<= 767){
                $(".yjh ul li").css("width","100%")
                $(".yjh").css("height","auto")

            }
        }if(num03==4){
            $(".yjh ul li").css("width","25%")
            $(".yjh ul li:eq(3)").css("margin-left","0")
            if($(window).width()<= 1300){
                $(".yjh ul li").css("width","50%")
                $(".yjh").css("height","auto")
            }
            if($(window).width()<= 767){
                $(".yjh ul li").css("width","100%")
                $(".yjh").css("height","auto")

            }
        }
       /* 项目成功案例不同数量更换不同样式*/
       var num04=$(".case li").length;
        if(num04==2){
            if($(window).width()> 767){
                $(".case ul").css("width","60%");
                $(".case ul li").css("width","50%");
                $(".case li p").css("height","17rem");
            }
        }
        if(num04==4){
            if($(window).width()> 767){
                $(".case ul").css("width","80%");
                $(".case ul li").css("width","25%");
                $(".case ul li:eq(3)").css("margin-left","0")
                $(".case li p").css("height","17rem");
            }
        }
        if(num04==6){
           /* console.log(num04)*/
            $(".case ul li:eq(3)").css("margin-left","0")
        }

        /*更多信息不同数量切换不同样式*/
        var num05=$(".moreMessage ul li").length;
        if(num05==2){
            if($(window).width()> 767){
                $(".moreMessage ul li").css("width","36%");
            }
        }
        if(num05==4){
            if($(window).width()> 767){
                $(".moreMessage ul li").css("width","20%");
            }
        }
        if(num05==5){
            if($(window).width()> 767){
                $(".moreMessage ul li").css({"width":"15%","margin":"0 0.3rem"});
                $(".moreMessage ul").css("width","80%");
            }
            if(767<$(window).width()<1024){
                $(".moreMessage ul").css("width","100%");
            }
        }
        if(num05==6){
            if($(window).width()> 1025){
                $(".moreMessage ul li").css({"width":"12%","margin":"0 0.2rem"});
                $(".moreMessage ul").css("width","92%");
            }
            if(768<$(window).width()<1024){
                $(".moreMessage ul").css("width","86%");
            }
        }

        if (wid < 767) {
            $(".mid_cont").css({"width": wid, "max-width": "750px", "margin": "0 auto"});
            $(".advantageTable").css("width", wid);
            $(".gis_banner").css("width", wid);
             $(".gis_banner_btn").css({"padding-top": wid* 0.28});
            $(".project_details").css({"width": wid * 0.98, "margin-left": wid * 0.01});
            $(".leadFrame").css({"width": wid * 0.8, "left": wid * 0.5});
            $(".advantage ul li").css("width","90%")
            $(".user-login").css({
                "width": wid,
                /*"height": hei,*/
                "position": "fixed",
                "margin-left": wid * 0.1,
                "top": "0px"
            });


        }
        //成功案例图像对应内容切换
        $(".charactersImg li").on("click", function () {
            var i = $(this).index();
            var chaSpanList = $(".charactersBox span").eq(i);
            $(this).css("border", "2px solid #fff").siblings().css("border", "none");
            $(".charactersbox span").eq(i).css("display", "block").siblings().css("display", "none");
        });

    })
    /*师资介绍图片切换*/
    var teacherL=$(".teachers-wrapper ul li").length;
    if(teacherL<=3){
        $("#prev").css("display","none");
        $("#next").css("display","none")
    }
    if(wid > 769){
        //    师资介绍图片切换事件
        teacherWrapperWid = wid*0.6;     //轮播显示部分宽度
        teacherUlWid = wid*0.6*0.9;     //ul宽度
        teacherLiWid = wid*0.6*0.9*0.33;//li宽度
        $(".teachers-wrapper").css({"width":teacherLiWid*3,"left":(wid-teacherWrapperWid)*0.5});
        $(".teachers-wrapper ul").css("width",teacherUlWid);
        $(".teachers-wrapper ul li").css("width",teacherLiWid);
        $(".teachers-loop").css({"width":teacherUlWid*2,"height":"24rem"});
        //为左右箭头添加事件处理
        //左箭头点击处理
        $('#prev').on("click", function () {
            $(".teachers-loop").css('marginLeft', -teacherUlWid);
            $(".teachers-loop>li").eq(1).prependTo($(".teachers-loop ul"));
            $(".teachers-loop").animate({marginLeft: "0px"}, 400);
        });
        //右箭头点击处理
        $('#next').on("click", function () {
            $(".teachers-loop").animate({marginLeft: -teacherUlWid}, 400, function () {
                $(".teachers-loop>li").eq(0).appendTo($(".teachers-loop ul"));
                $(".teachers-loop").css('marginLeft', -teacherUlWid);
            });
        });
        //图片切换处理函数
        function changeTo(num) {
            $(".teachers-loop").animate({marginLeft: -teacherUlWid}, 400, function () {
                $(".teachers-loop>li").eq(0).appendTo($(".teachers-loop ul"));
                $(".teachers-loop").css('marginLeft', '0px');
            });
        }
    }
    /*FAQ鼠标移入事件*/
    $(".question li div").on("mouseover",function () {
        $(this).children("span").stop().slideDown();
        $(this).parent().siblings("li").find("div span").stop().slideUp();
    });
    $(".question ul").mouseout(function(){
        $(this).find("div span").stop().slideUp();
    });

    /*大咖讲师*/
    var teacherL=$(".teachers-wrapper ul li").length;
    if(teacherL<=3){
        $("#prev").css("display","none");
        $("#next").css("display","none")
    }if(teacherL==2){
        $(".teachers-wrapper ul li").eq(1).css("margin-left","2rem")
        $(".teacher-describe").css("text-align","justify")
        $(".en-name").css("margin-top","1rem")
        if(1200>$(window).width()&&$(window).width()> 768){
            $(".teachers ul li img").css("width","55%")
            $(".teachers ul li").css({
                width:"47%",
                display:"block",
                float:"left"
            })
        }
    }

    $(".newBottom").css("margin-top","0")
    $("#goTopBtn").css("right", "0")

   /* ===============================收藏切换js代码=============================*/
    var flag=true;

    var savedflag = ${savedFlag};
    if(savedflag == 1){
        flag = false;
        $(".store_up i").html("已收藏");
        $(".store_up").css("background","#1bb38c");
    };
    $(".store_up").click(function () {
        if(flag){
           /* $(".store_up img").attr("src","/images/storeup02.png");*/

           collectItem($("#ItemId").val());
            $(".store_up i").html("已收藏");
            $(".store_up").css("background","#1bb38c");
            flag=false;
        }else if(!flag){
           /* $(".store_up img").attr("src","/images/storeup01.png");*/
            unCollectItem($("#ItemId").val());
            $(".store_up i").html("收藏");
            $(".store_up").css("background","#9b9b9b")
            flag=true;
        }
    })
    
    function collectItem(itemId) {
        $.ajax({
            url: "/specialization/collect",
            data: {
                itemId:itemId,
            },
            type: "get",
            dataType: 'json',
            success: function (data) {
                if(data.status==1){
                    $(".store_up i").html("已收藏");
                    $(".store_up").css("background","#1bb38c");
                    flag=false;
                }
                else{
                    alert("收藏失败");
                }
            }
        });
    }

    function unCollectItem(itemId) {
        $.ajax({
            url: "/specialization/uncollect",
            data: {
                itemId:itemId,
            },
            type: "get",
            dataType: 'json',
            success: function (data) {
                if(data.status==1){
                    $(".store_up i").html("收藏");
                    $(".store_up").css("background","#9b9b9b")
                    flag=true;
                }
                else{
                    alert("取消收藏失败");
                }
            }
        });
    }


</script>
</html>
