<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <title>看我看我 |活动提升|CIS—常春藤教授亲自指导学术项目</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | CIS—常春藤教授亲自指导学术项目">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | CIS—常春藤教授亲自指导学术项目">
    <meta name="description" content="对于真正走进伙计名校来说，国际视野、世界公民意识、社会责任、独立能力、调研沟通以及做项目的能力反而比很多国际组织认证的证书或者高大上的联合国合影更加重要。
非洲野生动物保护训练营，也许并不能让你在10天的时间帮上野生动物很多，但只要你努力了，做出一点点的贡献并且埋下了善的种子，锻炼了你未来担道义的肩膀，这样就足够了。它会影响你成长后可能去做的事情，以及未来你可能对身边的人带来的影响，才是你这次与非洲遇见的意义，无论对于你自己，对于非洲野生动物，还是说对于这个全球化的时代。">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link rel="stylesheet" href="/style/cis.css?20170402">
    <link rel="stylesheet" href="/style/mengban.css">
    <script src="/js/jquery-2.2.1.min.js"></script>
    <script src="/js/bootstrap.js"></script>
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
<div class="weixinFrame"></div>

<div class="container_box">
    <%@include file="/WEB-INF/views/common/top.jsp" %>
    <input type="hidden" id="ItemId" value="${Item.itemId}">
    <div class="gis_banner">
        <div class="gis_banner_btn">
        <c:choose>
            <c:when test="${sessionScope.loginUser == null}">
                <a href="javascript: loginAlert();;" class="signUp" id="signUp">点击报名</a>
            </c:when>
            <c:otherwise>
                <a href="javascript:toApply();;" class="signUp" id="signUp">点击报名</a>
            </c:otherwise>
        </c:choose>
            <a href="//kw-cdn.kanwokanwo.com/videos/cis.mp4" class="signUp">观看往期直播</a>
        </div>
    </div>

    <div class="mid_cont">

        <div class="advantage">
            <p class="titles">优势&特色</p>
                <ul>
                    <li>
                        <h4>是学术项目，而非体验项目</h4>
                        <span>学员直接接触课题核心教授，项目在申请中具有高度的学术认可度</span>
                    </li>
                    <li>
                        <h4>不出国，直享美国大学原版课程</h4>
                        <span>节约费用，教学质量与藤校真实课程一致提前适应美国大学课程</span>
                    </li>
                    <li>
                        <h4>常青藤在职教授亲临中国执教</h4>
                        <span>20余位来自常青藤名校，在各自领域拥有重大成就的教授学者亲临中国</span>
                    </li>
                    <li>
                        <h4>所有课程均可转换大学学分</h4>
                        <span>项目获得美国大学普遍认可，预修美国本科课程，提前获得美国大学学分</span>
                    </li>
                    <li>
                        <h4>一对五教学，师生比1.66/1</h4>
                        <span>每个研究小组仅招5人，并配备专业独立RA顾问导师、生活老师各一名</span>
                    </li>
                    <li>
                        <h4>教授私人推荐信</h4>
                        <span>项目结束后，表现优异的学生有机会得到教授私人办公室推荐信</span>
                    </li>
                </ul>
        </div>

        <div class="videoIntroduce">
            <p class="titles" style="color: #fff;">CIS官方视频介绍</p>
            <div class="videoWrapper">
                <video id="video1" src="http://focusedu.oss-cn-hangzhou.aliyuncs.com/videos/CIS2.mp4" type="video/mp4" width="100%" height="100%" controls="controls" poster="/images/video2.png" webkit-playsinline></video>
                <%--<i id="play" class="play"></i>--%>
            </div>
            <p class="titles" style="color: #fff;margin-top: 2rem;">CIS看我看我直播视频</p>
            <div class="videoWrapper">
                <video id="video1" src="http://focusedu.oss-cn-hangzhou.aliyuncs.com/videos/cis.mp4" type="video/mp4" width="100%" height="100%" controls="controls" poster="/images/cisv2.png" webkit-playsinline></video>
                <%--<i id="play" class="play"></i>--%>
            </div>
            <c:choose>
                <c:when test="${sessionScope.loginUser == null}">
                    <a  href="javascript: loginAlert();" class="videoSignUp" >报名申请</a>
                </c:when>
                <c:otherwise>
                    <a class="videoSignUp" href="javascript: toApply();">报名申请</a>
                </c:otherwise>
            </c:choose>
        </div>


        <div class="projectDetail">
            <p class="titles">项目详情</p>
            <div class="project_details">
                <h2>项目详情</h2>
                <div class="contens">
                    <p>
                        <b>项目时间： </b><span>2017-07-10——2017-08-04</span>
                    </p>
                    <p>
                        <b>项目场地： </b><span>北京——清华大学<br />上海——上海交通大学</span>
                    </p>
                    <%--<p>--%>
                        <%--<b>项目收费： </b><span>无</span>--%>
                    <%--</p>--%>
                    <p>
                        <b>主办单位：</b><span>谨德教育&nbsp;&nbsp;&nbsp;<%--<a href="#" style="font-size:0.64rem;color: #017c9b;">查看简介&gt;&gt;</a>--%></span>
                    </p>
                    <p>
                        <b>适合人群：</b><span>高中在读</span>
                    </p>
                    <p>
                        <b>项目简介： </b>
                        <span class="metarial">
                            CIS 研究项目致力于帮助中国学生学习独立研究技能，提升批判性思维能力，并且了解博雅教育。在与全球顶尖大学教授共同研究的过程中，学生能够熟悉如何在学习过程中能够运用独立思维。在中国独特的教育环境下，CIS研究项目能够最好地弥补学生在创造性学习经验上的不足。在过去四年里，CIS科研项目帮助大量中国学生进入斯坦福，哈佛，哥伦比亚等世界名校。
                        </span>
                    </p>
                </div>
            </div>
        </div>

        <div class="activityResults">
            <p class="titles">活动成果</p>
            <div class="results">
                <div class="resultsPart">
                    <div class="results-parts">
                        <h4>美国大学学分</h4>
                        <span class="results-span">
                            CIS项目目前已经与美国两百多所大学完成了学分认证的工作,所有项目学员可以在项目结束后与美国大学沟通转换学分
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>学术背景提升</h4>
                        <span class="results-span">
                            项目将给学生申请带来显著的学术优势。往期学员极高的名校录取比例说明了CIS在学生背景提升上的作用
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>成绩单</h4>
                        <span class="results-span">
                            教授将根据学生一个月的课上、课下、思维、沟通、考试、论文等多方面综合给予项目结业评分B-以上评分被认为是合格毕业学员
                        </span>
                    </div>
                </div>
                <div class="resultsPart">
                    <div class="results-parts">
                        <h4>私人推荐信</h4>
                        <span class="results-span">
                            如果学生表现优异，将有可能得到教授由个人办公室署名，直接通过CA等申请系统向大学提交的推荐信
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>官方推荐信</h4>
                        <span class="results-span">
                            CIS项目官方将要求教授为学员出具项目官方推荐信（教授将根据学员实际表现出具推荐信）
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>论文</h4>
                        <span class="results-span">
                            所有学员会在项目结束后获得自身研究成果。A评级学员中50%优异学术成果将发表在由清华大学联合举办的青少年科研年刊
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="successCase">
            <p class="titles" style="color: #fff;">成功案例</p>
            <div class="cases">
                <ul>
                    <li>
                        <%--<img src="/images/authority.png">--%>
                        <span class="caseSpan">71.1%的学员进入美国<br/>前三十大学就读</span>
                    </li>
                    <li>
                        <%--<img src="/images/school.png">--%>
                        <span class="caseSpan">100%学员进入美国<br/>前五十大学就读</span>
                    </li>
                    <li>
                        <%--<img src="/images/way.png">--%>
                        <span class="caseSpan">94.37%学员获得教授推荐信，而27位中国学生得到了申请推荐人</span>
                    </li>
                </ul>
                <hr style="width: 62%;margin: 0 auto -3rem;">
                <%--<ul>--%>
                    <%--<li>--%>
                        <%--&lt;%&ndash;<img src="/images/diversification.png">&ndash;%&gt;--%>
                        <%--<span class="caseSpan">2015界哥伦比亚大学东亚史研究所副主任的南方丝绸之路研究中的四位学员中的石轶卓、陶思宇同学被哥大同时录取并获得全奖，震惊中国留学行业</span>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--&lt;%&ndash;<img src="/images/location.png">&ndash;%&gt;--%>
                        <%--<span class="caseSpan">2015年卢若文同学在CIS项目顾问，哈佛大学21年大中华区主招生官Sally女士支持下以托福95分SAT1970分成功ED宾夕法尼亚大学更是打破了中国留学十余年来唯分数论的奇迹</span>--%>
                    <%--</li>--%>
                <%--</ul>--%>
                <div class="characters">
                    <span style="display: block;">哥伦比亚大学 全额奖学金（$60,000每年）<br/>
“在CIS，我在哥伦比亚大学教授Adam的帮助下完成了《薄伽梵歌与儒家文化对比》研究，提前体会到了在顶级名校学习的感觉，并最终拿到了Adam 教授的私人推荐信。CIS对我最终成功申请哥大并拿到全额奖学金起到了至关重要的作用。”
                    </span>
                    <span>宾夕法尼亚大学<br/>
“CIS项目是我高中阶段最爱的活动。在哈佛大学中华区主招生官Sally教授的帮助下，我完成了关于中国环保产业的研究，全方位了解了目前的中国环保产业现状，并且坚定了自己将要学习相关专业的决心。如果没有CIS和Sally教授的热情推荐，我是不可能以托福95，SAT1970的分数被宾大录取的。”
                    </span>
                    <span>哥伦比亚大学<br/>
“不论是在科研，学习，还是申请方面，CIS 项目对我的帮助都很大。我提前学习到了在美国大学做research的方法，并且和项目教授建立了深厚的友谊。我还在CIS项目收获到了很多好朋友。”
                    </span>
                    <span>康奈尔大学<br/>
“在参与CIS项目之前，我对美国大学所要求的research 是完全不了解的。CIS 项目密度很大，每天课程都在5小时以上，教授还会亲自领导讨论，每天都能收获很多。”
                    </span>
                </div>
                <ol class="charactersImg">
                    <li style="border: 2px solid #fff;">
                        <img src="/images/tsy.png" title="陶斯宇"><span class="imgMask" style="display: none"></span>
                    </li>
                    <li>
                        <img src="/images/lrw.png" title="卢若文"><span class="imgMask"></span>
                    </li>
                    <li>
                        <img src="/images/stz.png" title="石轶卓"><span class="imgMask"></span>
                    </li>
                    <li>
                        <img src="/images/zyy.png" title="郑越洋"><span class="imgMask"></span>
                    </li>
                </ol>
            </div>
            <%--<a href="#" class="videoSignUp">点击报名</a>--%>
        </div>

        <div class="application">
            <%--<p class="titles"><a href="">提升你的学术背景，让你的履历在<br />招生官的眼中再升一个等级吧~</a></p>--%>
            <span class="consult_tel">010-5292-8288-8018</span>
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
        <div id="goTopBtn"></div>
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
    var wid = $(window).width();
    var hei = $(window).height();
    function loginAlert(){
        if (wid < 769){
            $("#signUp,.videoSignUp").on("click",function () {
                var ban=0;
                $(".mask").css("display","block").bind("touchmove",function(e){
                    e.preventDefault();
                    e.stopPropagation();
                },false);
                $(".leadFrame").show(400).bind("touchmove",function(e){
                    e.preventDefault();
                    e.stopPropagation();
                },false);
            });
            $(".login-before-close-btn").on("click",function () {
                $(".mask").css("display","none");
                $(".leadFrame").css("display","none");
            });
        }else {
            $(".login-before").css('display','block');
        }
    }
    function closeAlert(){
        $(".login-before").css('display','none');
        location.reload();
    }
    function toApply1(){
        location.href = "/userItem/apply";
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
        //成功案例添加背景图片
        var list = $(".cases ul li");
        var advList = $(".advantage ul li");
        var resList = $(".results-parts");
        var chaImgList = $(".charactersImg li");


        for (var i = 0; i < list.length ; i++) {
//            console.log(list[i]);
            var listUrl = '/images/case'+parseInt(i+1)+'.png';
//            console.log(listUrl);
            list.eq(i).css({"background":"url("+listUrl+") no-repeat center top","background-size":"25%"});

        }
        for (var i = 0; i < advList.length ; i++) {
//            console.log(advList[i]);
            var advListUrl = '/images/adv'+parseInt(i+1)+'.png';
//            console.log(advListUrl);
            advList.eq(i).css("background","url("+advListUrl+") no-repeat center 30px #f5f8fa");
        }
        for (var i = 0; i < resList.length ; i++) {
//            console.log(resList[i]);
            var resListUrl = '/images/results'+parseInt(i+1)+'.png';
//            console.log(advListUrl);
            resList.eq(i).css({"background":"url("+resListUrl+") no-repeat top left #fff","background-size":"14%"});
            if(i < 3){
                resList.eq(i).css("background-position","top right");
            }
        }
        //成功案例图像对应内容切换
        $(".charactersImg li").on("click",function(){
            var i = $(this).index();
            var chaSpanList = $(".characters span").eq(i);
//            console.log(i);
//            console.log(chaSpanList.html());
            $(this).css("border","2px solid #fff").children("span").css("display","none");
            $(this).siblings("li").css("border","none").children("span").css("display","block");
            chaSpanList.css("display","block").siblings().css("display","none");
        });
//        console.log($(".gis_banner").height());
//        console.log(wid);
        $(".gis_banner_btn").css({"width":wid*0.4,"top":$(".gis_banner").height()*0.8,"left":wid*0.3});
        if (wid < 769){
            $(".mid_cont").css({"width":wid,"max-width":"750px","margin":"0 auto"});
            $(".advantageTable").css("width",wid);
            $(".gis_banner").css("width",wid);
            $(".gis_banner_btn").css({"width":wid,"top":$(".gis_banner").height()*0.7,"left":0});
            $(".project_details").css({"width":wid*0.98,"margin-left":wid*0.01});
            $(".leadFrame").css({"width":wid*0.8,"left":wid*0.5});
            $(".user-login").css({"width":wid,"height":hei,"position":"fixed","margin-left":wid*0.1,"top":"0px"});

            if(wid > 640){
                for (var i = 0; i < list.length ; i++) {
//            console.log(list[i]);
                    var listUrl = '/images/case'+parseInt(i+1)+'.png';
//            console.log(listUrl);
                    list.eq(i).css({"background":"url("+listUrl+") no-repeat center top","background-size":"15%"});
                }
            }
            //    简介文字超出字数用省略号代替
            $(function () {
                //成功案例部分
//                var strs = "";
//                for (var i=0;i<$(".caseSpan").length;i++){
//                    var str = $(".caseSpan").eq(i).html();
//                    var s = str.length;
////                    console.log(str);
////                    console.log(s);
//                    if(s > 20){
//                        strs = strs + $(".caseSpan").eq(i).html(str.substr(0,36)+"......");
//                    }
//                }
                //活动成果部分
//                for (var i=0;i<$(".results-span").length;i++){
//                    var str = $(".results-span").eq(i).html();
//                    var s = str.length;
////                    console.log(s);
////                    console.log(str);
//                    if(s > 50){
//                        strs = strs + $(".results-span").eq(i).html(str.substr(0,50)+"...");
//                    }
//                }

//            报名按钮点击事件及弹出框屏幕禁止事件

            })
        }
    })

</script>

</html>