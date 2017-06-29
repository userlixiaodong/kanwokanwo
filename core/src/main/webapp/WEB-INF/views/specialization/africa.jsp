<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>看我看我 |活动提升|非洲野生动物保护训练营</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | 非洲野生动物保护训练营">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | 非洲野生动物保护训练营">
    <meta name="description" content="对于真正走进伙计名校来说，国际视野、世界公民意识、社会责任、独立能力、调研沟通以及做项目的能力反而比很多国际组织认证的证书或者高大上的联合国合影更加重要。
非洲野生动物保护训练营，也许并不能让你在10天的时间帮上野生动物很多，但只要你努力了，做出一点点的贡献并且埋下了善的种子，锻炼了你未来担道义的肩膀，这样就足够了。它会影响你成长后可能去做的事情，以及未来你可能对身边的人带来的影响，才是你这次与非洲遇见的意义，无论对于你自己，对于非洲野生动物，还是说对于这个全球化的时代。">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" href="/style/africa.css">
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
        <img src="/images/BA-africa.jpg" class="ban-pic">
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

        <%--项目特色--%>
        <div class="advantage feature">
            <p class="titles">项目特色</p>
            <ul>
                <li>
                    <h4>成果丰厚</h4>
                    <span>国际认可的英文项目结业证书国际学术会议及项目实践机会优秀学员推荐信等</span>
                </li>
                <li>
                    <h4>意义重大</h4>
                    <span>成为首次肯尼亚项目野保大使专家指导下学习相关知识国际野保组织参访学习</span>
                </li>
                <li>
                    <h4>能力提升</h4>
                    <span>信息搜索能力/自主学习的能力国际视野、学术思辩能力项目策划与管理</span>
                </li>
                <li>
                    <h4>参与社区发展</h4>
                    <span>真正深入田野和项目点调研亲手参与部分社区发展项目不仅理解动物，也理解人</span>
                </li>
            </ul>
        </div>

        <%--项目背景 --%>
        <div class="programBg">
            <p class="titles">项目背景</p>
            <div class="programContent">
                <span class="programText">
                    非洲大陆以野性、神秘而著称，其丰富的野生动物资源是大自然慷慨赐予的宝藏。然而，不幸的是，这里的动物们一直面临着各种生存的风险。野生动物与人类共存于地球，它们在整个生态系统中发挥着巨大的作用，保护野生动物，就是保护我们自己。
                </span>
                <div class="programImg">
                    <img src="/images/africa-bg-img.jpg">
                    <%--<p class="programImg_describe"></p>--%>
                </div>
                <span class="programText">
                    随着国际上一半的野生动物保护问题都跟中国人有关，野保问题成为了中国人在世界上一个饱受误会和诟病的事情，让更多的中国青年更多地参与到国际野保工作变得十分重要。让我们更了解世界，也让世界更能用正确客观的眼睛来看待我们中国人。
                </span>
            </div>
        </div>

        <%--项目详情--%>
        <div class="projectDetail">
            <p class="titles">项目信息</p>
            <div class="project_details">
                <h2>项目信息</h2>
                <div class="contens">
                    <p>
                        <b>项目时间：</b><span>2017-7-11——2017-7-21（10天）</span>
                    </p>
                    <p>
                        <b>项目期限：</b><span>2017年5月15日—2017年6月10日</span>
                    </p>
                    <p>
                        <b>项目费用：</b><span>29800（不含机票）</span>
                    </p>
                    <p>
                        <b>适合人群：</b>
                        <span class="metarial">
                        1.热爱大自然，喜欢动物，向往非洲大草原的你；<br/>
                        2.对公益创新实践项目或社区发展类项目感兴趣的你；<br/>
                        3.对中国走出去，中非领域话题感兴趣，希望培养国际化视野的你；<br/>
                        4.计划要留学欧美深造（本科或者硕士），希望完善简历，提升申请背景，留学申请专业为环境保护、动物学、社会学、教育学、国际关系、传播学、国际政治学、发展学等相关专业的你；<br/>
                        5.英文听说水平良好，基本交流对话无问题的你。<br/>
                        </span>
                    </p>
                    <p>
                        <b>项目简介： </b>
                        <span class="metarial">
                         对于真正走进伙计名校来说，国际视野、世界公民意识、社会责任、独立能力、调研沟通以及做项目的能力反而比很多国际组织认证的证书或者高大上的联合国合影更加重要。
非洲野生动物保护训练营，也许并不能让你在10天的时间帮上野生动物很多，但只要你努力了，做出一点点的贡献并且埋下了善的种子，锻炼了你未来担道义的肩膀，这样就足够了。它会影响你成长后可能去做的事情，以及未来你可能对身边的人带来的影响，才是你这次与非洲遇见的意义，无论对于你自己，对于非洲野生动物，还是说对于这个全球化的时代。
                        </span>
                    </p>
                </div>
            </div>
        </div>

        <%--往期野保活动剪辑--%>
        <%--<div class="videoIntroduce">--%>
            <%--<p class="titles" style="color: #fff;">往期野保活动剪辑</p>--%>
            <%--<div class="videoWrapper">--%>
                <%--<video id="video1" src="http://focusedu.oss-cn-hangzhou.aliyuncs.com/videos/CIS2.mp4" type="video/mp4"--%>
                       <%--width="100%" height="100%" controls="controls" poster="/images/video2.png"--%>
                       <%--webkit-playsinline></video>--%>
                <%--&lt;%&ndash;<i id="play" class="play"></i>&ndash;%&gt;--%>
            <%--</div>--%>
            <%--<c:choose>--%>
                <%--<c:when test="${sessionScope.loginUser == null}">--%>
                    <%--<a href="javascript: loginAlert();" class="videoSignUp">报名申请</a>--%>
                <%--</c:when>--%>
                <%--<c:otherwise>--%>
                    <%--<a class="videoSignUp" href="javascript: toApply();">报名申请</a>--%>
                <%--</c:otherwise>--%>
            <%--</c:choose>--%>
        <%--</div>--%>

        <%--名师阵容--%>
        <div class="teachers">
            <p class="titles">名师阵容</p>
            <div class="teachers-wrapper">
                <div class="teachers-loop">
                    <ul>
                        <li>
                            <p class="en-name">&nbsp;</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                中国生物多样性保护与绿色发展基金会（简称“中国绿发会”）秘书长，北京大学、美国普渡大学化学系联合培养博士，中国“光彩事业”的首创发起人， 曾任九届、十届、十一届全国政协委员、全国政协提案委员会委员、全国工商联常委、中国民主建国会会员、北京大学中小企业创业中心研究员 等。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">&nbsp;</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                毕业于复旦大学新闻学院与哥伦比亚大学国际关 系学院国际发展专业，曾作为哥伦比亚大学访问 学者。自2011年开始，他多次前往南美亚马逊雨 林，非洲各国调研和报道中国海外投资遇到的机 遇与挑战。2014年4月，他创立中南屋，致力于帮
助中国人走进非洲，同时作为许多国际组织的顾 问研究中非关系。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">&nbsp;</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                毕业于华中师范大学教育学与社会工作专业，在 国内多家NGO担任过项目总监，有丰富的国际学 生交流与公益活动经验。来到肯尼亚之后，她作 为中南屋的首席运营总监负责中南屋青年项目和 野保项目的统筹与设计，多次在肯尼亚组织野保 夏令营、反盗猎剪铁丝网、观鸟等野保活动。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">Kahindi （肯尼亚本地导师）</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                肯尼亚著名野保组织“拯救大象”历史上第一位 非洲裔自然科学家，在肯尼亚多家知名野保基 金 会 如 Nature Kenya, Namunyak Wildlife Conservation Trust等及私人保护区担任理事会 成员，并为肯尼亚野保局、非政府组织、大学 提供咨询及培训。
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

        <%--活动成果--%>
        <div class="activityResults">
            <p class="titles">活动成果</p>
            <div class="results">
                <div class="resultsPart">
                    <div class="results-parts">
                        <h4>国际认可的英文项目结业证书</h4>
                        <span class="results-span">
                        由中国生物多样性保护与绿色发展基金会，非洲动物福利协会和中非领域知名机构中南屋联合颁发。
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>文章发表</h4>
                        <span class="results-span">
                        可推荐至国家级刊物，如《社会与公益》，知名网络媒体，如今日看点，或全球知名中非研究平台，如The China Africa Project等
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>创新公益实践方案</h4>
                        <span class="results-span">
                        学员将在指导下，根据实践情况，制定相应的后续创新实践方案（众筹，募捐，工艺品营销，成立社团等），并对其执行，推动非洲当地的野生动物保护事业发展。
                        </span>
                    </div>
                </div>
                <div class="resultsPart">
                    <div class="results-parts">
                        <h4>优秀学员推荐信</h4>
                        <span class="results-span">
                        优秀学员有机会获得中非领域专家，常青藤大学校友和非洲动物福利协会专家的推荐信。
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>中国绿发会非洲办事处宣传大使</h4>
                        <span class="results-span">
                        优秀学员有机会成为中国绿发会非洲办事处的宣传大使，协助非洲办事处在国内开展与野保相关的宣传教育工作。
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>国际学术会议及项目实践机会</h4>
                        <span class="results-span">
                        特别优秀的学员后续将有机会被推荐参加国内外的环境保护、动物保护相关的学术会议及项目，如CITES、UNFCCC（联合国气候变化大会）等。
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="case">
            <p class="titles">往期活动剪影</p>
            <div class="caseImg">
                <ul class="imgWrapper">
                    <li class="imgFirst">
                        <img src="/images/africa-case1.jpg">
                        <span class="case-span1">和动物亲密接触</span>
                    </li>
                    <ul class="imgInner">
                        <li>
                            <img src="/images/africa-case2.jpg">
                            <span class="case-span2">学习改装太阳能灯线路</span>
                        </li>
                        <li>
                            <img src="/images/africa-case3.jpg">
                            <span class="case-span2">参访野保组织</span>
                        </li>
                        <li>
                            <img src="/images/africa-case4.jpg">
                            <span class="case-span2">野外考察</span>
                        </li>
                        <li>
                            <img src="/images/africa-case5.jpg">
                            <span class="case-span2">向当地妇女学习编制传统手工篮子</span>
                        </li>
                    </ul>
                </ul>
            </div>
        </div>

        <div class="feedback">
            <p class="titles" style="color:#fff;">学员反馈</p>
            <div class="feed-content">
                <span class="feed-span">
                    对于我来说，大概有两个方面的收获。从项目经历来说，第一次去非洲的某个国家，亲眼看到亲身经历这里的每一天，虽然距离当地人的生活还有一段距离，但确实令我对这里有了新的认识。在肯尼亚的十天主要围绕野保主题进行，于是第一次见到了野生的活的长颈鹿、非洲象、羚羊和各种异常漂亮的鸟等等动物，实际感受到哦原来我之前保护的物种是这样的，因为把纸上见到的东西放到眼前，再看新闻的时候会觉得亲切许多。因为和这里的普通的人的聊天得以了解工作并不全是为了梦想，更可能出于迫切需要，和农户野保工作者在没有灯光的夜晚安装防狮灯被假的狮子叫声惊吓的恐惧，才能体会到有一部分人之所以伤害动物的需要，才能更好的找到合适的方法解决动物屡屡被害的问题。 人和动物的关系，最佳方案是向着互惠互利的方向发展，最难得的大概是向着相安无事的方向努力。另一个方面是在这次旅途中认识的各位伙伴。接触最多的是六位小朋友和两位带队老师，当地人同伴中的Kahindi和kate，每个人都让我觉得需要学习和非常可爱，每个人都令我觉得我之前的五年确实是荒废许多。也是因为认识了伙伴们，我大概觉得，有热情有专注的方向真的是超级棒的事情。暂时没有也不用太着急认真做好现下的事情也很棒，如果这一生到头都没有发现这件事情，至少这一生我都认真的过完了，确实没有亏待自己（我也不知道怎么了感想发展到了这一步）。总结就是，收获颇丰。
                </span>
                <p class="feed-p">推荐理由（多选）</p>
                <ul>
                    <li>
                        <span>项目内容有亮点，吸引人</span>
                    </li>
                    <li>
                        <span>项目质量高，很靠谱</span>
                    </li>
                    <li>
                        <span>项目经历独特，体验好</span>
                    </li>
                    <li>
                        <span>项目成果有保障，且权威</span>
                    </li>
                    <li>
                        <span>项目导师棒，良师益友</span>
                    </li>
                    <li>
                        <span>可以切实锻炼提高各方面能力</span>
                    </li>
                    <li>
                        <span>对留学申请有帮助</span>
                    </li>
                </ul>
            </div>
            <div class="feed-content">
                <span class="feed-span">
感想就是和老师聊天的时候收获颇丰，学了很多提问的套路。现在回来还在不断练习如何提问，很容易就把别人套住一直问。
见到了真正的非洲，和想象里太不一样了，很喜欢那里的阳光和动物。
收获有很多，从同行的小伙伴身上也学到了很多。
关于田野调查和自己的专业方向更明确了，以前这一切都只是活在我的想象里。珍·古道尔的书只能靠想象和图片，真正到肯尼亚，真正到草原上，那种感觉太神奇了。
                </span>
                <p class="feed-p">推荐理由（多选）</p>
                <ul>
                    <li>
                        <span>项目内容有亮点，吸引人</span>
                    </li>
                    <li>
                        <span>项目经历独特，体验好</span>
                    </li>
                    <li>
                        <span>项目导师棒，良师益友</span>
                    </li>
                    <li>
                        <span>对留学申请有帮助</span>
                    </li>
                </ul>
            </div>
            <div class="feed-content">
                <span class="feed-span">
真的学到了特别多关于野保的知识，也看到了很多从未看到过的景色。非洲一直是我想去的地方，我在四年级就看过一本关于肯尼亚和它的野生动物的书，就一直很向往。这次不仅仅是圆了这个梦想，更是学到了很多东西。无论是实用技巧上的，个人品格上的还是理论知识上，都可以说是受益匪浅。非常感谢各位老师的带领和姐姐哥哥们的照顾，比心。
                </span>
                <p class="feed-p">推荐理由（多选）</p>
                <ul>
                    <li>
                        <span>项目内容有亮点，吸引人</span>
                    </li>
                    <li>
                        <span>项目质量高，很靠谱</span>
                    </li>
                    <li>
                        <span>项目经历独特，体验好</span>
                    </li>
                    <li>
                        <span>项目导师棒，良师益友</span>
                    </li>
                    <li>
                        <span>可以切实锻炼提高各方面能力</span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="moreMessage">
            <p class="titles">更多信息</p>
            <ul>
                <li>
                    <p>参考行程</p>
                    <img src="/images/africa-more1.png">
                    <a href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/activities/files/ckxc.docx">点击下载</a>
                </li>
                <li>
                    <p>肯尼亚当地情况简介</p>
                    <img src="/images/africa-more2.png">
                    <a href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/activities/files/ddqk.docx">点击下载</a>
                </li>
                <li>
                    <p>项目特别说明</p>
                    <img src="/images/africa-more3.png">
                    <a href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/activities/files/xmtbsm.docx">点击下载</a>
                </li>
            </ul>
        </div>

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
    }
//    更多信息模块点击下载功能
    function startDownloading(downloadUri, useIFrame) {
        if (!downloadUri || !downloadUri.length) {
            return;
        }
        if (!useIFrame) {
            window.location.href = downloadUri;
        } else {
            var frame = $("<iframe />");
            frame.appendTo($("body")).attr({ "src": downloadUri, "display": "none" });
            setTimeout(function () {
                frame.remove();
            }, 600000);
        }
    }
//    登录弹框
    function loginAlert() {
        if (wid < 769) {
            $("#signUp,.videoSignUp").on("click", function () {
                $(".mask").css("display", "block").bind("touchmove",function(e){
                    e.preventDefault();
                    e.stopPropagation();
                },false);
                $(".leadFrame").show(400).bind("touchmove",function(e){
                    e.preventDefault();
                    e.stopPropagation();
                },false);
            });
            $(".login-before-close-btn").on("click", function () {
                $(".mask").css("display", "none");
                $(".leadFrame").css("display", "none");
            });
        } else {
            $(".login-before").css('display', 'block');
        }
    }
//    关闭弹框
    function closeAlert() {
        $(".login-before").css('display', 'none');
        location.reload();
    }
    function toApply() {
        //location.href = "/userItem/applyAfrica";
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
        var resList = $(".results-parts");
        var teachersList = $(".teachers ul li");
        var featureList = $(".feature ul li");
        //名师阵容背景图片添加
        for (var i = 0; i < teachersList.length; i++) {
            var listUrl = '/images/africa-tea' + parseInt(i + 1) + '.png';
            teachersList.eq(i).css({
                "background": "url(" + listUrl + ") no-repeat center 30px",
                "background-size": "55%"
            });
        }
//        项目特色背景图添加
        for (var i = 0; i < featureList.length; i++) {
            var featureListUrl = '/images/adv' + parseInt(i + 1) + '.png';
            featureList.eq(i).css("background", "url(" + featureListUrl + ") no-repeat center 30px #f5f8fa");
        }
//        活动成果背景图添加
        for (var i = 0; i < resList.length ; i++) {
            var resListUrl = '/images/results'+parseInt(i+1)+'.png';
            resList.eq(i).css({"background":"url("+resListUrl+") no-repeat top left #fff","background-size":"15%"});
            if(i < 3){
                resList.eq(i).css("background-position","top right");
            }
        }
//        项目成功案例模块图片放大效果
        $(".imgWrapper li span").mouseover(function () {
            $(this).addClass("img-hover");
            $(this).siblings("img").addClass("img-hover");
        }).mouseout(function () {
            $(this).removeClass("img-hover");
            $(this).siblings("img").removeClass("img-hover");
        });

        $(".gis_banner_btn").css({"width": wid * 0.4, "top": $(".gis_banner").height() * 0.8, "left": wid * 0.3});
        if (wid < 769) {
            $(".mid_cont").css({"width": wid, "max-width": "750px", "margin": "0 auto"});
            $(".advantageTable").css("width", wid);
            $(".gis_banner").css("width", wid);
            $(".gis_banner_btn").css({"width": wid, "top": $(".gis_banner").height() * 0.7, "left": 0});
            $(".project_details").css({"width": wid * 0.98, "margin-left": wid * 0.01});
            $(".leadFrame").css({"width": wid * 0.8, "left": wid * 0.5});
            $(".user-login").css({
                "width": wid,
                "height": hei,
                "position": "fixed",
                "margin-left": wid * 0.1,
                "top": "0px"
            });

        }
    })

</script>

</html>
