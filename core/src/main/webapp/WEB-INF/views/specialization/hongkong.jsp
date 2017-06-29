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
      <title>看我看我 |活动提升|香港愿基金--金融实训</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | 香港愿基金--金融实训">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | 香港愿基金--金融实训">
    <meta name="description" content="本次金融实训项目是由【看我看我】和香港【愿基金】共同为广大需要金融行业背景的学生提供的实训项目。现如今申请国外学校，学生的个性化背景十分重要，金融行业的实训背景能为学生带来的背景提升效果还是比较显著的。
香港愿基金金融实训计划，通过一系列金融行业专业讲座及金融机构参访，参加者将了解国际金融机构在中国区之运营业务、发展策略及工作岗位，与投资银行专业人士进行交流互动，掌握最前沿的金融市场动态，为未来进入金融行业做好职业规划。">
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
    <p>您还未登录，请在登录之后再进行申请哦！~</p>
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
        <img src="${Item.bannerUrl}" alt="" class="bannerIcon">
        <img src="/images/activity/hongkong/hk-bannerewm.png" class="ban-wx">
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

         <!-- <div class="projectBackground">
                    <p class="titles">项目背景</p>
                        <div class="projectAnalyse">
                             <h5>随着经济全球化和信息技术革命的到来，尤其是以因特网为标志的网络经济时代的到来，人类社会正在从工业社会进入信息社会，从工业文明走向信息文明。金融业也从工业时代的手工化、分业化、小型化向着信息时代的数字化、混业化、超大型化的方向发展，呈现出前所未有的激烈竞争局面。
因而一段金融行业的实习背景，不仅对留学申请的助力十分巨大，对学生毕业之后步入职场也是大有益处。</h5>
                             <div id="hcharts">
                                 <img src="/images/activity/hongkong/hk-xmbj.jpg" alt="">
                             </div>
                             <div class="nakedReason">
                                 </div>
                        </div>
                    </div> -->

    <%--项目背景 --%>
        <div class="programBg">
            <p class="titles">项目背景</p>
            <div class="programContent">
                <span class="programText">
                    随着经济全球化和信息技术革命的到来，尤其是以因特网为标志的网络经济时代的到来，人类社会正在从工业社会进入信息社会，从工业文明走向信息文明。金融业也从工业时代的手工化、分业化、小型化向着信息时代的数字化、混业化、超大型化的方向发展，呈现出前所未有的激烈竞争局面。
因而一段金融行业的实训背景，不仅对留学申请的助力十分巨大，对学生毕业之后步入职场也是大有益处。
                </span>
                <div class="programImg">
                    <img src="/images/activity/hongkong/hk-xmbj.jpg">
                    <%--<p class="programImg_describe"></p>--%>
                </div>
                <span class="programText">
                    
                </span>
            </div>
        </div>

             <div class="advantage">

                        <p class="titles">项目特色</p>
                                <ul class="clearfix">
                            <li>
                             <img src="/images/activity/hongkong/hkIcon01.png" alt="">
                             <h4>宝贵实训经历</h4>
                             <span>学生将会参与尖端金融公司的工作，<br/>实训的同时也为日后的留学申请及求职就业，<br/>提供详实的文书写作素材。</span>
                         </li>
                        <li>
                             <img src="/images/activity/hongkong/hkIcon02.png" alt="">
                             <h4>国际名企offer</h4>
                             <span>参访当天可向国际或者香港名企递交Resume，优异者会收到PwC和PCCW等知名企业的offer，获得名企实习机会。</span>
                         </li>
                        <li>
                             <img src="/images/activity/hongkong/hkIcon03.png" alt="">
                             <h4>高含金量</h4>
                             <span>基金会颁发的实习证书<br/>
基金会奖学金<br/>
参加美国哥伦比亚大学 Torch Light Foundation会议</span>
                         </li>
                        <li>
                             <img src="/images/activity/hongkong/hkIcon04.png" alt="">
                             <h4>尖端金融人士人脉</h4>
                             <span>学生将会接触到海内外精英金融人士，实训期间合作相处，成为志同道合的朋友，成为学生未来实现共赢的基础。</span>
                         </li>
                        <li>
                             <img src="/images/activity/hongkong/hkIcon05.png" alt="">
                             <h4>终身性能力提升</h4>
                             <span>金融能力、团队合作意识、领导能力、执行能力和沟通能力等。这些在未来职业发展道路上缺一不可的能力。</span>
                         </li>
                        <li>
                             <img src="/images/activity/hongkong/hkIcon06.png" alt="">
                             <h4>金融行业实战经验</h4>
                             <span>金融市场瞬息万变，未来的金融巨鳄必定要经得起市场的严峻考验，做到金融理论和实操相结合。</span>
                         </li>
                        </ul>
                 </div>
                 <div class="projectDetail">
                <p class="titles">项目信息</p>
                <div class="project_details">
                    <h2>项目信息</h2>
                    <div class="contens">
                        <p>
                                <b>项目地点： </b><span>香港</span>
                            </p>
                        <p>
                            <b>项目时间： </b><span>2017年7月24 -28日 （周一到周五）</span>
                        </p>
                        <p>
                            <b>项目费用： </b><span>6800元人民币（不包括往返机票和实训期间的住宿费用）</span>
                        </p>
                        <p>
                            <b>适合人群： </b><span>中国内地及香港对金融业感兴趣的中学生、大学生及工作人士</span>
                        </p>
                        <p>
                            <b>项目简介： </b>
                            <span class="metarial">
                                本次金融实训项目是由【看我看我】和香港【愿基金】共同为广大需要金融行业背景的学生提供的实训项目。现如今申请国外学校，学生的个性化背景十分重要，金融行业的实训背景能为学生带来的背景提升效果还是比较显著的。
香港愿基金金融实训计划，通过一系列金融行业专业讲座及金融机构参访，参加者将了解国际金融机构在中国区之运营业务、发展策略及工作岗位，与投资银行专业人士进行交流互动，掌握最前沿的金融市场动态，为未来进入金融行业做好职业规划。</span>
                        </p>
                        </div>
             </div>
        </div>


<div class="programBox">
             <div class="summerProgram">

                    <p class="titles" >实训内容</p>
                            <ul class="int_list clearfix">
                        <li>
                         <div class="intBox">
                             <img src="/images/activity/hongkong/hk-sx01.jpg" />
                             <h6>一、金融市场知识学习<img src="/images/intList_line.png"/></h6>
                             <p>
                                 Investment Bank<br />
                                Asset Management<br />
                                Pension, Endowment<br />
                                QFII、QDII、RQFII<br />
                                Private Equity<br />
                                Venture Capital<br />
                                QFLP and QDLP<br />
                                Equities<br />
                             </p></div>
                        </li>
                    <li>
                         <div class="intBox">
                             <img src="/images/activity/hongkong/hk-sx02.jpg" />
                             <h6>二、金融行业技能培养<img src="/images/intList_line.png"/></h6>
                             <p>
                                 面试技巧和注意事项<br/>
如何创办初创投资公司<br/>
企业与个人融资办法<br/>
企业融资途径<br/>
投行、资管、会计、保险、私募基金、风险投资、家族投资等<br/>
                             </p></div>
                        </li>
                    <li>
                         <div class="intBox">
                             <img src="/images/activity/hongkong/hk-sx03.jpg" />
                             <h6>三、金融机构参访<img src="/images/intList_line.png"/></h6>
                             <p>
                                彭博(Bloomberg)<br/>
汇港资讯（Infocast）<br/>
电讯盈科（PCCW）<br/>
香港交易所（HKEx）<br/>
香港贸易发展局(HKTDC)<br/>
                             </p><br/></div>
                        </li>
                    <div class="clear"></div>
                 </ul>
             </div>
         </div>
    <div class="activityResults">
            <p class="titles" >实训安排</p>
                            <div class="results">
                                <div class="resultsPart">
                <div class="results-parts">
                         <h4>DAY1</h4>
                         <span class="results-span">
                            数码港：<br/>
国际金融机构超过300家在中国/香港之运作、发展策略及其工作岗位介绍等培训内容</span>
                     </div>
                     <div class="results-parts">
                         <h4>DAY3</h4>
                         <span class="results-span">
                            公司拜访：
拜访对象包括但不限于香港电讯总部/香港贸易发展局
/会计师事务所等，具体参访企业视行程安排确定</span>
                     </div>
                     <div class="results-parts">
                         <h4>DAY5</h4>
                         <span class="results-span">
                            香港大学：
1.金融公司申请流程及面试技巧
(讲师：FocusEDU.cn 创始人 / 许轶 斯坦福Stanford MBA）
2.  毕业晚会　(学员分享及证书颁发)</span>
                     </div>
                     </div>
                            <div class="resultsPart">
                        <div class="results-parts">
                         <h4>DAY2</h4>
                         <span class="results-span">
                            金融区：
金融机构参访: 香港交易所，香港金融管理局，彭博Bloomberg，QFII
金融机构, Infocast(汇港资讯)</span>
                     </div>
                     <div class="results-parts">
                         <h4>DAY4</h4>
                         <span class="results-span">
                            数码港：
1.金融行业介绍：投行、资管、会计、保险、私募基金、风险投资、家族投资
(讲师：香港会计师CPA金融专业人士)
2.人事及培训技巧 (香港人力资源管理学会资深讲师)
3.如何写出与众不同的求职resume：
(讲师：FocusEDU.cn 创始人 / 许轶 斯坦福Stanford MBA）)</span>
                     </div>
                     </div>
             </div>
         </div>
    <div class="teachers">
                      <p class="titles" >大咖讲师</p>
                            <div class="teachers-wrapper">
                             <div class="teachers-loop">
                                 <ul>
                        <li>
                             <img src="/images/activity/hongkong/hk-dkjs01.png">
                             <p class="en-name"></p>
                             <p class="ch-name">William Kwok</p>
                             <span class="teacher-describe" style="height: auto"><b style="display: block;text-align: center">哥伦比亚大学“火炬光基金会”（名誉）理事</b>2013年创立中国桥金融网，拥有丰富的海外工作经验，借助香港愿基金平台，培育中国人才及搭建国际金融市场之桥梁。
William 已有近20年的金融从业资历，于投资银行、中国平安负责海外机构投资者（QFII）业务。
受邀到中外金融机构以及中美知名大学（如哥伦比亚大学和哈佛大学）进行讲座
近期金融出版物均被顶尖的中美大学图书馆收录。</span> </span>

                         </li>
                         <li>
                             <img src="/images/activity/hongkong/hk-dkjs02.png" alt="">
                             <p class="en-name"></p>
                             <p class="ch-name">许轶</p>
                             <span class="teacher-describe" style="height: auto"><b style="display: block;text-align: center">斯坦福大学MBA，芝加哥大学国际关系硕士</b>
曾就职于美国第一投资银行高盛公司和欧洲顶级投资银行瑞士信贷美国旧金山办公室，负责资产管理和投资交易，参与的股票债券交易和投资组合超过10亿美金。
原新东方总裁办助理，成都国外部主任，出版过十多本畅销书籍。
受到美国KahnAcademy的成功模式启发，许轶从投资银行辞职创办中国的焦点教育。
许老师一直坚持亲自授课，亲自带队参加考试，并不断出版业内顶尖书籍。</span> </span>

                         </li>
                         </ul>
                     
                 </div>
             </div>
             <img src="/images/keru-prev.png" width="20px" height="40px" id="prev">
             <img src="/images/keru-next.png" width="20px" height="40px" id="next">
         </div>
    <div class="case">
            <p class="titles">活动成果</p>
                    <ul class="clearfix">
            <li>
                     <p>
                         <img src="/images/activity/hongkong/hk-hdcg01.jpg" alt="">
                         <span>
                            <i>01</i>
                        所有参加者均可获得由愿基金及时代焦点国际教育颁发的实习证书</span>
                     </p>
                 </li>
            <li>
                     <p>
                         <img src="/images/activity/hongkong/hk-hdcg02.jpg" alt="">
                         <span>
                            <i>02</i>
                        成功毕业学员可获推荐参加哥伦比亚大学TorchLight Foundation九月中在纽约的会议</span>
                     </p>
                 </li>
            </ul>
         </div>



         <%--底部微信联系方式--%>
         <div class="application">
             <%--<p class="titles"><a href="">提升你的学术背景，让你的履历在<br />招生官的眼中再升一个等级吧~</a></p>--%>
             <div class="tel-yw-icon">
                 <span class="consult_tel">18810940195</span>
             </div>
             <div class="consulting">
                 <div class="erweima">
                     <img src="/images/gzh.png" alt=""><span>关注看我看我公众号<br/>获得更多留学资讯</span>
                 </div>
                 <div class="erweima">
                     <img src="/images/activity/hongkong/HUYIAN.jpg" alt=""><span>更多活动详细信息<br/>添加Amber老师</span>
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
      /*  var videoTop=$(".videoIntroduce").offset().top-80;
        console.log("高度"+videoTop)
        $(".signUp02").click(function () {
            $(window).scrollTop(videoTop)
        })*/
        if(wid>767){
            $("#hcharts img").css("margin-top", "-14rem")
            $("#hcharts").css("overflow", "hidden")
        }

        /*顶部banner变为手机端图片更换*/
        if(wid<=767){
            $(".gis_banner .bannerIcon").attr("src","/images/activity/hongkong/HK-smallBA.jpg")
        }
        /*项目特色不同数量更换不同样式2017-5-18*/
        var num01=$(".advantage li").length;
       /* console.log(num01)*/
        if(num01==4){
            $(".advantage ul li").css("width","22%")
            $(".advantage ul li:eq(3)").css("margin-left","1rem")
        }if(num01==6){
            /* $(".advantage ul li").css("width","30%")*/
            $(".advantage ul li:eq(3)").css("margin-left","1rem")
        }if($(window).width()<= 767){
            $(".advantage ul li:eq(3)").css("margin-left","auto")
        }
        /*项目活动or实习不同数量更换不同样式2017-5-18*/
        var num02=$(".int_list li").length;
        console.log(num02)
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
        if($(window).width()> 1600){
            $(".int_list li p").css("padding","0rem 4rem 0rem 6rem")
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
        if($(window).width()<= 1024){
            $(".int_list").css("width","90%")
        }
        if($(window).width()<= 768){
            $(".int_list").css("width","96%")
        }
        if($(window).width()<= 414){
            $(".int_list li").css("width","100%")
            $(".int_list li").css("margin","1rem 0")
            $(".int_list li:eq(3)").css("margin-left","0")
        }
        /*鹰计划不同数量更换不同样式2017-5-19*/
        var num03=$(".yjh ul li").length;
        console.log(num03)
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
                $(".case li p").css("height","22rem");
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
            console.log(num04)
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


    $(".newBottom").css("margin-top", "0")
    $("#goTopBtn").css("right", "0")



</script>
</html>
