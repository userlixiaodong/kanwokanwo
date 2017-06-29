<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <title>看我看我 |活动提升|七幕人生音乐剧，首招高中生实习</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | 七幕人生音乐剧，首招高中生实习">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | 七幕人生音乐剧，首招高中生实习">
    <meta name="description" content="通过【看我看我】平台独家申请，选拔优秀高中生，到【七幕人生】进行实习。通过【七幕人生】的培训与实习接触国内顶级剧组，获得第一手理念和知识，提升学员剧场、音乐剧、演出和运营等知识，名额稀缺，提升申请个性化背景。对于理科生来说，七幕人生的实习能够有效弥补文科方面的不足，真正做到文理兼修，打破美国招生官心目中对亚裔理工科学霸“nerdy”的刻板印象，大幅度提升录取几率。">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link rel="stylesheet" href="/style/sevenAges.css">
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
            <%--<a href="//kw-cdn.kanwokanwo.com/videos/cis.mp4" class="signUp">观看往期直播</a>--%>
        </div>
    </div>

    <ul class="mid_cont">

        <div class="programBg">
            <p class="titles">项目背景</p>
            <div class="programContent">
                <h4>背景介绍</h4>
                <span class="programText">
                    近几年，在美国，不论是像Facebook，Google大型公司，还是各大初创公司如Airbnb已将实习招募扩展到高中生群体。美国的教育专家指出，参加过实习的美国高中生，不管未来最终从事的职业是否和所实习的工作有关，但是实习之后，他们往往在学业上会更有动力取得好成绩，在进入大学之后也会在职业规划上更有优势。因为实习可以帮助学生早一些了解他们的所长和兴趣，也为他们就业时加分。
                </span>
                <div class="programImg">
                    <img src="/images/seven-pro.png">
                    <p class="programImg_describe">图为Facebook CEO小札举行隆重的欢迎仪式，欢迎17岁的Michael Sayman加入Facebook实习。</p>
                </div>
                <h4>项目必要性</h4>
                <span class="programText">
                    在美国感兴趣的学生一般都来自于高中的老师推荐，在中国由于教育体制的不同，高中生这样的机会很少。 本次【看我看我】为高中生们争取到国内顶级音乐剧团队【七幕人生】独家实习机会，给学生的申请背景增加一个重量级筹码。
实习时间4—6周，学生可以和中国顶级音乐剧组工作人员亲密接触，获得第一手理念和知识。并有行业内顶尖导师带队，为学员进行音乐剧产业、运营等相关专业培训，边实习，边学习。
                </span>
            </div>
        </div>

        <div class="advantage">
            <p class="titles">项目特色</p>
            <ul>
                <li>
                    <h4>独家机会高含金量</h4>
                    <span>看我独家，首招高中生<br/>大学生标准培训课<br/>带薪实习，劳有所得</span>
                </li>
                <li>
                    <h4>深入了解业内核心体系</h4>
                    <span>提升话剧相关知识<br/>获得第一手知识理念<br/>接触国内顶级剧组人员</span>
                </li>
                <li>
                    <h4>商业价值</h4>
                    <span>从商业角度进行研究<br/>顶级风投资助的创业团队<br/>对中国文化产生巨大影响</span>
                </li>
                <li>
                    <h4>申请背景提升</h4>
                    <span>涉及社会学、<br/>经济学、传媒学、<br/>文学等多角度调研与学习</span>
                </li>
            </ul>
        </div>

        <div class="projectDetail">
            <p class="titles">项目信息</p>
            <div class="project_details">
                <h2>项目信息</h2>
                <div class="contens">
                    <p>
                        <b>项目地点： </b><span>北京、广州、上海</span>
                    </p>
                    <p>
                        <b>项目时间： </b><span>2017-06-23——2017-10-23</span>
                    </p>
                    <p>
                        <b>申请要求： </b><span>要有申请美国常青藤大学的潜质；托福90分以上，英语流利</span>
                    </p>
                    <p>
                        <b>主办单位：</b><span>七幕人生音乐剧</span>
                    </p>
                    <p>
                        <b>适合人群：</b><span class="metarial">对戏剧影视，音乐，舞台艺术，跨文化交流，文学等学科感兴趣；有志于学习理工科、商科，并且缺乏文科类课外活动经历的同学</span>
                    </p>
                    <p>
                        <b>项目简介： </b>
                        <span class="metarial">
                         通过【看我看我】平台独家申请，选拔优秀高中生，到【七幕人生】进行实习。通过【七幕人生】的培训与实习接触国内顶级剧组，获得第一手理念和知识，提升学员剧场、音乐剧、演出和运营等知识，名额稀缺，提升申请个性化背景。对于理科生来说，七幕人生的实习能够有效弥补文科方面的不足，真正做到文理兼修，打破美国招生官心目中对亚裔理工科学霸“nerdy”的刻板印象，大幅度提升录取几率。</span>
                    </p>
                </div>
            </div>
        </div>

        <%--<div class="videoIntroduce">--%>
        <%--<p class="titles" style="color: #fff;">Keru暑期项目介绍</p>--%>
        <%--<div class="videoWrapper">--%>
        <%--<video id="video1" src="" type="video/mp4" width="100%" height="100%" controls="controls" poster="/images/keruv.jpg" webkit-playsinline></video>--%>
        <%--&lt;%&ndash;<i id="play" class="play"></i>&ndash;%&gt;--%>
        <%--</div>--%>
        <%--<c:choose>--%>
        <%--<c:when test="${sessionScope.loginUser == null}">--%>
        <%--<a  href="javascript: loginAlert();" class="videoSignUp" >报名申请</a>--%>
        <%--</c:when>--%>
        <%--<c:otherwise>--%>
        <%--<a class="videoSignUp" href="javascript: toApply();">报名申请</a>--%>
        <%--</c:otherwise>--%>
        <%--</c:choose>--%>
        <%--</div>--%>

        <%--七幕人生实习岗start--%>
        <div class="internship">
            <p class="titles" >七幕人生实习岗位</p>
            <ul class="int_list clearfix">
                <li>
                    <img src="/images/internship1.jpg" />
                    <h6>新媒体运营<img src="/images/intList_line.png"/></h6>
                    <p>
                        <b>实习时间：</b>6月23日——10月23日<br />
                        <b>实习地点：</b>北京<br />
                        <b>实习名额：</b>4名<br/>
                        <b>审核方式：</b>面试+笔试<br/>
                        <b>项目收费：</b>RMB 16800 <br />
                        <b>实习福利：</b><br/>薪酬￥50.00/人/日<br/>午餐补助￥15.00/人/日<br/>内部衍生品和票品购买优惠政策<br />
                        <b>实习安排：</b><br/><em>1~4周 培训</em><br />公司业务了解商业模式介绍<br/>音乐剧发展史，国内音乐剧发展方向<br/>新媒体运营知识介绍，技能指导<br/>知乎、豆瓣等渠道监控<br/><em>5~6周 实习工作</em><br/>参与新媒体工作<br/>线上活动的策划与执行<br/>参与月度策划选题<br/>音乐剧相关调研<br/>高中生群体兴趣调研<br/>高中生音乐剧认知调研<br/>
                    </p>
                </li>
                <li>
                    <img src="/images/internship2.jpg" />
                    <h6>票务管理<img src="/images/intList_line.png"/></h6>
                    <p>
                        <b>实习时间：</b>6月23日——10月23日<br />
                        <b>实习地点：</b>北京、上海<br />
                        <b>实习名额：</b>北京1名、上海1名<br/>
                        <b>审核方式：</b>面试+笔试<br/>
                        <b>项目收费：</b>RMB 6800 <br />
                        <b>实习福利：</b><br/>薪酬￥50.00/人/日<br/>午餐补助￥15.00/人/日<br/>内部衍生品和票品购买优惠政策<br />
                        <b>实习安排：</b><br/><em>1~4周 培训</em><br />项目管理和团队管理基本概念<br/>规范化的工作流程的意义<br/>跨行业的优秀工作习惯和软技巧培养<br/>库存管理要点<br/><em>5~6周 实习工作</em><br/>全部票务渠道宣传资源监控<br/>协助完成开票上架流程<br/>执行现场宣传和售票活动<br/>观众电话回访和意见收集<br/>观众调查问卷数据统计和分析<br/>各剧目销售数据统计和分析等<br/>
                    </p>
                </li>
                <li>
                    <img src="/images/internship3.jpg" />
                    <h6>演出统筹<img src="/images/intList_line.png"/></h6>
                    <p>
                        <b>实习时间：</b>6月23日——10月23日<br />
                        <b>实习地点：</b>北京、上海、广州<br />
                        <b>实习名额：</b>北京2名、上海2名、广州2名<br/>
                        <b>审核方式：</b>面试+笔试<br/>
                        <b>项目收费：</b>RMB 6800 <br />
                        <b>实习福利：</b><br/>薪酬￥50.00/人/场<br/>每日工作餐一份<br/>内部衍生品和票品购买优惠政策<br />
                        <b>实习安排：</b><br/><em>1~4周 培训</em><br />比肩迪士尼乐园的剧场服务理念<br/>剧场布置视觉方案制定原理<br/>人流疏导方式<br/>简单的财务知识和账务处理原则<br/><em>5~6周 实习工作</em><br/>剧场布置视觉方案制定原理<br/>项目管理和团队管理基本概念<br/>执行现场宣传和售票活动<br/>观众电话回访和意见收集<br/>观众调查问卷数据统计和分析<br/>各剧目销售数据统计和分析等<br/>
                    </p>

                </li>
                <div class="clear"></div>
            </ul>
        </div>

        <%--七幕人生引进乐剧start--%>
        <div class="case">
            <p class="titles">七幕人生引进乐剧</p>
            <ul class="clearfix">
                <li>
                    <p>
                        <img src="/images/seven-case1.jpg" alt="">
                        <span>
                            <i>01</i>
                        2013年10月<br/>百老汇经典音乐剧《Q大道》中文版<br/>在上海白玉兰剧场首演<br/>在600多人规模的上海白玉兰剧场<br/>《Q大道》自首演以来的上座率都在95%以上<br/>
                    </span>
                    </p>
                </li>
                <li>
                    <p>
                        <img src="/images/seven-case2.jpg" alt="">
                        <span>
                            <i>02</i>
                        2013年10月<br/>百老汇经典音乐剧《Q大道》中文版<br/>在上海白玉兰剧场首演<br/>在600多人规模的上海白玉兰剧场<br/>《Q大道》自首演以来的上座率都在95%以上<br/>
                    </span>
                    </p>
                </li>
                <li>
                    <p>
                        <img src="/images/seven-case3.jpg" alt="">
                        <span>
                            <i>03</i>
                        2013年10月<br/>百老汇经典音乐剧《Q大道》中文版<br/>在上海白玉兰剧场首演<br/>在600多人规模的上海白玉兰剧场<br/>《Q大道》自首演以来的上座率都在95%以上<br/>
                        </span>
                    </p>
                </li>
            </ul>
            <div class="music">
                <p>
                    <img src="/images/seven-case4.jpg" alt="">
                    <span>
                    成立至今，七幕人生已在全国近50个城市，为80万观众演出近800场，取得了票房和口碑上的双丰收，<br/>并获得华创资本和华人文化产业基金先后两轮投资，又于2016年获得联想控股旗下君联资本的投资。<br/>
                    </span>
                </p>
            </div>
        </div>

        <%--底部联系方式--%>
        <div class="application">
            <%--<p class="titles"><a href="">提升你的学术背景，让你的履历在<br />招生官的眼中再升一个等级吧~</a></p>--%>
            <div class="tel-yw-icon">
                <span class="consult_tel">010-5292-8288-8018</span>
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

    function loginAlert(){
        if (wid < 769){
            $("#signUp,.videoSignUp").on("click",function () {
                var ban=0;
                $(".mask").css("display","block");
                $(".leadFrame").show(400);
                document.addEventListener("touchmove",function(e){
                    if(ban==0){
                        e.preventDefault();
                        e.stopPropagation();
                    }
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
        location.href = "/userItem/applysa";
    }
    function toApply() {
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
        var teachersList = $(".teachers ul li");
        //师资介绍背景图片添加
        for (var i = 0; i < teachersList.length ; i++){
            var listUrl = '/images/keru-teacher'+parseInt(i+1)+'.png';
//            console.log(listUrl);
            teachersList.eq(i).css({"background":"url("+listUrl+") no-repeat center 30px","background-size":"55%"});
        }
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

