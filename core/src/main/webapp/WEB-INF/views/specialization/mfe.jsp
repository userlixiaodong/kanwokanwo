<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
       <title>看我看我 |活动提升|奇思孵化，12天抱走属于自己的发明</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | 奇思孵化，12天抱走属于自己的发明">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | 奇思孵化，12天抱走属于自己的发明">
    <meta name="description" content="奇思孵化是【看我看我】联合国内高端创客教育机构【MFEducation】，为大家提供的一个为期12天的创新素养训练，学生经过两个阶段的导师指导学习，最终能够亲手做出一件原创小发明。学员自己完成的发明可以参赛或者申请专利，更能用于大学申请。">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css"/>
    <link rel="stylesheet" href="/style/mfe.css">
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
<div class="weixinFrame"></div>

<div class="container_box">
    <%@include file="/WEB-INF/views/common/top.jsp" %>
    <input type="hidden" id="ItemId" value="${Item.itemId}">
    <div class="gis_banner">
        <img src="/images/BA-MFE.jpg" class="ban-pic">
        <img src="/images/banner-wx.png" class="ban-wx">
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

    <div class="mid_cont">

        <%--项目背景 --%>
        <div class="programBg">
            <p class="titles">项目背景</p>
            <div class="programContent">
                <span class="programText">
                    据统计中国赴美留学生中，人数最多的就是是学习STEM相关专业的同学，占留美总人数的40%多。MIT的招生页面为所有有志于入读MIT的高中生们详细列举了一些有价值的课外活动，除了传统的奥林匹克和各种科学类竞赛之外，排序最高的活动机会就是“创客类”活动，MIT鼓励学生变想象为现实，这也足可见创造类活动在申请中的重要性和必要性。
                </span>
                <div class="programImg">
                    <img src="/images/mfe-bg-img.jpg">
                    <%--<p class="programImg_describe"></p>--%>
                </div>
                <span class="programText">
                    “创客类”活动不仅只适用于理科生，也适合于文科类专业申请者的活动扩展。众所周知美国的申请标准包括申请者的文理全面发展，一项耗时不长的STEM相关活动正是扩充学生展示面的绝佳选择。
                </span>
            </div>
        </div>

        <%--项目特色--%>
        <div class="advantage">
            <p class="titles">项目特色</p>
            <ul>
                <li>
                    <h4>独一无二的原创发明</h4>
                    <span>每个学员的作品都是自己设计，自己制造，每个人的作品都是原创发明</span>
                </li>
                <li>
                    <h4>化想象为现实</h4>
                    <span>可能以往你认为天马行空的想法，在这里都将由你亲手把它变成现实</span>
                </li>
                <li>
                    <h4>普林斯顿导师带队</h4>
                    <span>创客导师均毕业于海内外名校，有普林斯顿的STEM导师，也有浙大的年轻创客</span>
                </li>
                <li>
                    <h4>成果用途广泛</h4>
                    <span>学员在导师指导下，自己完成的发明可以参赛或者申请专利，更能用于大学申请</span>
                </li>
            </ul>
        </div>

        <%--项目信息--%>
        <div class="projectDetail">
            <p class="titles">项目信息</p>
            <div class="project_details">
                <h2>项目信息</h2>
                <div class="contens">
                    <p>
                        <b>项目地点：</b><span>上海市普育西路105号公益新天地5号楼205~207 Fablab 实验室</span>
                    </p>
                    <p>
                        <b>项目时间：</b><span>6月14日——6月25日<br/>6月28日——7月9日<br/>7月12日——7月23日<br/>7月26日——8月6日<br/>8月9日——8月20日<br/>（以上五期任选，师资阵容完全一致）</span>
                    </p>
                    <p>
                        <b>项目费用：</b><span>20000（包含授课费用和材料费）</span>
                    </p>
                    <p>
                        <b>适合人群：</b>
                        <span class="metarial">初二~高二学生<br/>热爱科技，崇尚科学，敢于创新</span>
                    </p>
                    <p>
                        <b>项目简介： </b>
                        <span class="metarial">
                            奇思孵化是【看我看我】联合国内高端创客教育机构【MFEducation】，为大家提供的一个为期12天的创新素养训练，学生经过两个阶段的导师指导学习，最终能够亲手做出一件原创小发明。学员自己完成的发明可以参赛或者申请专利，更能用于大学申请。
                        </span>
                    </p>
                </div>
            </div>
        </div>

        <%--计划介绍    --%>
        <%--<div class="videoIntroduce">--%>
        <%--<p class="titles" style="color: #fff;">CIS官方视频介绍</p>--%>
        <%--<div class="videoWrapper">--%>
        <%--<video id="video1" src="http://focusedu.oss-cn-hangzhou.aliyuncs.com/videos/CIS2.mp4" type="video/mp4" width="100%" height="100%" controls="controls" poster="/images/video2.png" webkit-playsinline></video>--%>
        <%--&lt;%&ndash;<i id="play" class="play"></i>&ndash;%&gt;--%>
        <%--</div>--%>
        <%--<p class="titles" style="color: #fff;">CIS看我看我直播视频</p>--%>
        <%--<div class="videoWrapper">--%>
        <%--<video id="video1" src="http://focusedu.oss-cn-hangzhou.aliyuncs.com/videos/cis.mp4" type="video/mp4" width="100%" height="100%" controls="controls" poster="/images/cisv2.png" webkit-playsinline></video>--%>
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

        <%--师资阵容--%>
        <div class="teachers">
            <p class="titles">师资阵容</p>
            <div class="teachers-wrapper">
                <div class="teachers-loop">
                    <ul>
                        <li>
                            <p class="en-name">Shiyao Gu</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                主导Fablab创客空间和课程建设，指导MFE学生完成创客研究报告。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">Xavier Hu</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                机械工程导师，其指导的学生多人在青创赛，明日科技之星，谷歌挑战赛等崭露头角。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">Jundi Wang</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                负责智能化设计的技术导师，其指导的学生多人被康奈尔大学、牛津大学等世界名校录取。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">Vincent Yu</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                嵌入式系统导师。其指导的学生多人登上《少年爱迪生》等青少年创新电视栏目。
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
            <img src="/images/keru-prev.png" width="20px" height="40px" id="prev">
            <img src="/images/keru-next.png" width="20px" height="40px" id="next">
            <c:choose>
                <c:when test="${sessionScope.loginUser == null}">
                    <a class="videoSignUp" href="javascript:loginAlert();" style="color:#fff;">点击报名</a>
                </c:when>
                <c:otherwise>
                    <a class="videoSignUp" href="javascript:toApply();" style="color:#fff;">点击报名</a>
                </c:otherwise>
            </c:choose>
        </div>

        <%--课程安排start--%>
        <div class="internship">
            <p class="titles" >课程安排</p>
            <ul class="int_list clearfix">
                <li>
                    <img src="/images/mfe-int1.jpg" />
                    <h6>一、工程基础与创新素养训练<img src="/images/intList_line.png"/></h6>
                    <p>
                    <span>
                        1、智能硬件与嵌入式设计
                    </span>
                    <span>
                       2、编程思维基础
                    </span>
                    <span>
                        3、3D打印与机械设计基础
                    </span>
                    <span>
                        4、Android App设计基础
                    </span>
                    <span>
                        5、提出自己的创新想法
                    </span>
                    </p>
                </li>
                <li>
                    <img src="/images/mfe-int2.jpg" />
                    <h6>二、个人项目研究及制作<img src="/images/intList_line.png"/></h6>
                    <p>
                    <span>
                        1、学生自主提出创意，创客
                    </span>
                    <span>
                       2、导师严格把关，共同制定实现方案。
                    </span>
                    <span>
                        3、学生将在项目时间中深入习得其精髓，在多位明星导师共同辅导下真正实现跨学科整合，挑战创意极限。
                    </span>
                    </p>
                </li>
                <div class="clear"></div>
            </ul>
        </div>
        <%--课程安排end--%>
        <%--往期学员部分获奖作品start--%>
        <div class="works">
            <p class="titles" >往期学员部分获奖作品</p>
            <ul>
                <li>
                    <img src="/images/mfe-work1.jpg">
                    <div class="works-introduce">
                        <p>第32届上海市青少年科技创新大赛<i>一等奖</i></p>
                        <span>基于脑波识别的抑郁情绪预防及缓解头戴系统研究</span>
                    </div>
                </li>
                <li>
                    <img src="/images/mfe-work2.jpg">
                    <div class="works-introduce">
                        <p>第32届上海市青少年科技创新大赛<i>一等奖</i></p>
                        <span>基于空调冷凝水的环保自动加湿器</span>
                    </div>
                </li>
                <li>
                    <img src="/images/mfe-work3.jpg">
                    <div class="works-introduce">
                        <p>第32届上海市青少年科技创新大赛<i>一等奖</i></p>
                        <span>基于误差增量算法智能寻迹的智能轻型载物平台设计</span>
                    </div>
                </li>
                <li>
                    <img src="/images/mfe-work4.jpg">
                    <div class="works-introduce">
                        <p>第32届上海市青少年科技创新大赛<i>一等奖</i></p>
                        <span>基于中心集束组网方式的闹钟</span>
                    </div>
                </li>
                <li>
                    <img src="/images/mfe-work5.jpg">
                    <div class="works-introduce">
                        <p>谷歌科学挑战赛亚太地区获得社区影响奖<i>唯一提名的中国小科学家</i></p>
                        <span>防水管结冰系统</span>
                    </div>
                </li>
                <li>
                    <img src="/images/mfe-work6.jpg">
                    <div class="works-introduce">
                        <p>少年爱迪生选送录制项目</p>
                        <span>宠物安全背心</span>
                    </div>
                </li>
            </ul>
        </div>
        <%--往期学员部分获奖作品end--%>
        <%--底部联系方式--%>
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

    if (wid > 769) {
        imgLen = $(".teachers-loop li").length; //轮播图总数
        var step = 3; 	//每一步移动的图片数 li个数
        teacherWrapperWid = wid * 0.6;     //轮播显示部分宽度
        teacherUlWid = wid * 0.6;     //ul宽度
        teacherLiWid = wid * 0.6 * 0.3333333;//li宽度
        $(".teachers-wrapper").css({"width":teacherWrapperWid,"margin-left":wid*0.2});
        $(".teachers-loop li").css({"width":teacherLiWid});
        $(".teachers-loop").css("width", teacherLiWid * imgLen);
        //名师阵容图片切换事件
        //左箭头点击处理
        $("#prev").click(function(){
            //首先，获得当前ul的marginLeft
            var currentPos = parseFloat($(".teachers-loop").css('marginLeft'));
            //计算出前一页ul的marginLeft
            var prevPos = (currentPos+teacherUlWid)>0?0:(currentPos+teacherUlWid);
            $(".teachers-loop").animate({marginLeft: prevPos}, 600);
            $(".teachers-loop>li").eq(7).prependTo($(".teachers-loop"));
            $(".teachers-loop").css('marginLeft',prevPos);
        });
        //右箭头点击处理
        $("#next").click(function(){
            var currentPos = parseFloat($(".teachers-loop").css('marginLeft'));
            var nextPos = (currentPos-teacherUlWid)<(imgLen-step)/step*(-teacherUlWid)?(imgLen-step)/step*(-teacherUlWid):(currentPos-teacherUlWid);
            console.log((imgLen-step)/step*(-teacherUlWid));
            $(".teachers-loop").animate({marginLeft:nextPos}, 600, function () {
                $(".teachers-loop>li").eq(0).appendTo($(".teachers-loop"));
                $(".teachers-loop").css('marginLeft', nextPos);
            });
        });
        // 往期学员部分获奖作品鼠标悬浮显示遮罩层事件
        $(".works ul li").hover(function(){
            $(this).children("div").stop().fadeToggle("slow");
        });
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
    function toApply(){
        //location.href = "/userItem/applyMfe";
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
        var advList = $(".advantage ul li");
        var teachersList = $(".teachers ul li");
//        项目特色背景图添加
        for (var i = 0; i < advList.length ; i++) {
            var advListUrl = '/images/mfe-adv'+parseInt(i+1)+'.png';
            advList.eq(i).css({
                "background":"url("+advListUrl+") no-repeat center 30px #f5f8fa",
                "background-size":"15%"
            });
        }
        //名师阵容背景图片添加
        for (var i = 0; i < teachersList.length; i++) {
            var listUrl = '/images/mfe-tea' + parseInt(i + 1) + '.png';
            teachersList.eq(i).css({
                "background": "url(" + listUrl + ") no-repeat center 30px",
                "background-size": "55%"
            });
        }

        $(".gis_banner_btn").css({"width":wid*0.4,"top":$(".gis_banner").height()*0.8,"left":wid*0.3});
        if (wid < 769){
            $(".mid_cont").css({"width":wid,"max-width":"750px","margin":"0 auto"});
            $(".gis_banner").css("width",wid);
            $(".gis_banner_btn").css({"width":wid,"top":$(".gis_banner").height()*0.7,"left":0});
            $(".project_details").css({"width":wid*0.98,"margin-left":wid*0.01});
            $(".leadFrame").css({"width":wid*0.8,"left":wid*0.5});
            $(".user-login").css({"width":wid,"height":hei,"position":"fixed","margin-left":wid*0.1,"top":"0px"});
        }
    })

</script>

</html>
