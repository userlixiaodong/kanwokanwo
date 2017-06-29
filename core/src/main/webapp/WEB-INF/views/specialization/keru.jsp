<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <title>看我看我 |活动提升|Keru暑期社会调研与实践</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | Keru暑期社会调研与实践">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | Keru暑期社会调研与实践">
    <meta name="description" content="Keru的暑期项目让学生参与到真实的项目中，调研学习并创造实际影响力，从而使他们成为真正的社会变革者，解决社会热点问题。通过参与项目来提升学生的社会责任与意识，让学生在未来的大学申请中得到突出的履历表现。在体验学习之旅的同时，Keru会聘请专业导师来指导学生完成项目。学生可以将自己在活动中制作的商业计划书提交给合作企业，通过筛选后的计划将被投入到企业运作中，产生真实的社会影响力。">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link rel="stylesheet" href="/style/keru.css">
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

    <div class="mid_cont">

        <div class="advantage">
            <p class="titles">项目特色</p>
            <ul>
                <li>
                    <h4>创造青少年的社会影响力</h4>
                    <span>挑战真实的社会问题研究真正的解决方案创造真实有效社会变革</span>
                </li>
                <li>
                    <h4>真实的社会调研</h4>
                    <span>系统的课程学习积极寻找解决方案参与真实社会调研中</span>
                </li>
                <li>
                    <h4>成果直接用于企业运作</h4>
                    <span>提交商业计书合作企业筛选计划书被投入企业运作中</span>
                </li>
                <li>
                    <h4>沃顿名师推荐信</h4>
                    <span>名校高学历老师个性化指导方式沃顿等名师推荐信</span>
                </li>
            </ul>
        </div>

        <div class="projectDetail">
            <p class="titles">项目详情</p>
            <div class="project_details">
                <h2>项目详情</h2>
                <div class="contens">
                    <p>
                        <b>项目地点： </b><span>广东汕头、福建武平、云南腾冲</span>
                    </p>
                    <p>
                        <b>项目时间： </b><span>2017-06-27——2017-08-20</span>
                    </p>
                    <p>
                        <b>申请期限： </b><span>5月31日截止，前15名报名学员优先考虑</span>
                    </p>
                    <p>
                        <b>主办单位：</b><span>课儒（上海）商务咨询有限公司</span>
                    </p>
                    <p>
                        <b>适合人群：</b><span>优秀初中生、高中生、大学生</span>
                    </p>
                    <p>
                        <b>项目简介： </b>
                        <span class="metarial">
                         Keru的暑期项目让学生参与到真实的项目中，调研学习并创造实际影响力，从而使他们成为真正的社会变革者，解决社会热点问题。通过参与项目来提升学生的社会责任与意识，让学生在未来的大学申请中得到突出的履历表现。在体验学习之旅的同时，Keru会聘请专业导师来指导学生完成项目。学生可以将自己在活动中制作的商业计划书提交给合作企业，通过筛选后的计划将被投入到企业运作中，产生真实的社会影响力。</span>
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

        <%--创造社会影响力的暑期项目start--%>
        <div class="summerProgram">
            <p class="titles" >创造社会影响力的暑期项目</p>
            <ul class="int_list clearfix">
                <li>
                    <img src="/images/keru-pro1.jpg" />
                    <h6>生存技能教育<img src="/images/intList_line.png"/></h6>
                    <p>
                        <b>活动地点：</b>广东汕头<br />
                        <b>活动时间：</b>2017/6/27——2017/7/11<br />
                        <b>合作社会企业：</b>Hello Project <br />
                        <b>关键问题：</b>教育真的能解决贫困地区孩子的心理和社会健康问题吗？<br />
                        <b>学生感兴趣的领域：</b>心理学与教育<br />
                    </p>
                </li>
                <li>
                    <img src="/images/keru-pro2.jpg" />
                    <h6>饮用水安全<img src="/images/intList_line.png"/></h6>
                    <p>
                        <b>活动地点：</b>福建武平<br />
                        <b>活动时间：</b>2017/7/15——2017/7/30<br />
                        <b>合作社会企业：</b>思援环保<br />
                        <b>关键问题：</b>社会企业项目真的能帮 助中国解决饮水安全问题吗？<br />
                        <b>学生感兴趣的领域：</b>环境与社会责<br />
                    </p>
                </li>
                <li>
                    <img src="/images/keru-pro3.jpg" />
                    <h6>农村经济发展<img src="/images/intList_line.png"/></h6>
                    <p>
                        <b>活动地点：</b>云南腾冲<br />
                        <b>活动时间：</b>2017/8/5——2017/8/20<br />
                        <b>合作社会企业：</b>小蜜人<br />
                        <b>关键问题：</b>长期被忽视的农产品真 的能助推中国农村的经济增长吗？<br />
                        <b>学生感兴趣的领域：</b>商业与经济<br />
                    </p>

                </li>
                <div class="clear"></div>
            </ul>
        </div>
        <%--创造社会影响力的暑期项目end--%>

        <%--项目成功案例start--%>
        <div class="case">
            <p class="titles">项目成功案例</p>
            <ul class="clearfix">
                <li>
                    <p>
                        <img src="/images/keru-case1.jpg" alt="">
                        <span>
                            <i>01</i>
                        2016年暑假，我们的学生来到云南，为思援环保进行水资源筛选进行调研活动。
                    </span>
                    </p>
                </li>
                <li>
                    <p>
                        <img src="/images/keru-case2.jpg" alt="">
                        <span>
                            <i>02</i>
                        调研当地水质安全，检测净水指标。安装思援净水器，测量环保当地净水设备系统，普及净水知识。
                    </span>
                    </p>
                </li>
                <li>
                    <p>
                        <img src="/images/keru-case3.jpg" alt="">
                        <span>
                            <i>03</i>
                        我们的学生设计了问卷调查表，访问了当地的村民了解真实的情况。
                    </span>
                    </p>
                </li>
                <li>
                    <p>
                        <img src="/images/keru-case4.jpg" alt="">
                        <span>
                            <i>04</i>
                        他们策划了新的解决方案，提供给思援环保的创始人。
                     </span>
                    </p>
                </li>
                <li>
                    <p>
                        <img src="/images/keru-case5.jpg" alt="">
                        <span>
                            <i>05</i>
                        这个方案运用到了福建项目中，5000名学生受益于我们的学生设计的净水方案。
                    </span>
                    </p>
                </li>
            </ul>
        </div>

        <%--成功案例end--%>
        <div class="successCase">
            <p class="titles" style="color: #fff;">成功案例</p>
            <div class="cases">

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
                    <span style="display: block;">
                        <label style="font-weight: bold;">姓名：</label>陈尤琪 学校: 浙江省瑞安中学   SAT: 1490/1600  TOEFL: 110 <br/>
                        <label style="font-weight: bold;">录取学校:</label> UC Berkeley UIUC, Penn State, OSU, Pursue, University of Colorado<br/>
                        <label style="font-weight: bold;">学员感言：</label><br/>
Keru的项目是我撰写CommonApp文 书的主要内容。为此，我全身心投入并 收获了对于环境保护的巨大热情。在活 动期间，我进行观察并深入了解云南当 地的人民以及他们的生活环境。这对我 申请大学时的个人陈述起了很大作用， 并使我脱颖而出。
                    </span>
                    <span>
                        <label style="font-weight: bold;">姓名：</label>高楠  学校: 上海美国学校   SAT: 2340/2400  TOEFL: 115 <br/>
                        <label style="font-weight: bold;">录取学校:</label> Brown, UC Berkeley, UCLA, Tufts, Duke and UBC with $10,000 scholarship<br/>
                        <label style="font-weight: bold;">学员感言：</label><br/>
Keru帮助我坚定了对于环境科学的热爱 。去年夏天，我将自己学习到的科学知 识应用到对实际问题的处理中，来帮助 解决真实世界中的公共卫生问题。在 Keru我体验到了真正的学习、探索的过 程，以及最真实的社区融入的经验。</span>

                </div>
                <ol class="charactersImg">
                    <li style="border: 2px solid #fff;">
                        <img src="/images/keruper1.png" title="陈尤琪"><span class="imgMask" style="display: none"></span>
                    </li>
                    <li>
                        <img src="/images/keruper2.png" title="高楠"><span class="imgMask"></span>
                    </li>
                </ol>
            </div>
            <%--<a href="#" class="videoSignUp">点击报名</a>--%>
        </div>

        <div class="teachers">
            <p class="titles">师资介绍</p>
            <div class="teachers-wrapper">
                <div class="teachers-loop">
                    <ul>
                        <li>
                            <p class="en-name">Ming Khor</p>
                            <p class="ch-name">许思明</p>
                            <span class="teacher-describe">
                            宾夕法尼亚大学<br/>沃顿商学院工商管理硕士<br/>美丽中国项目主管<br/>苹果公司企业社会责任<br/>（CSR）部门项目经理
                        </span>
                        </li>
                        <li>
                            <p class="en-name">Josh Lim</p>
                            <p class="ch-name">林浩正</p>
                            <span class="teacher-describe">
                            工商管理与国际关系双硕士学位<br/>夕法尼亚大学，沃顿商学院 <br/>Inventis投资副总<br/>虎管理基金旗下的对冲基金分析员<br/>UBS瑞银全球资产管理分析员
                        </span>
                        </li>
                        <li>
                            <p class="en-name">Xiaochun Ni</p>
                            <p class="ch-name">倪筱莼</p>
                            <span class="teacher-describe">
                            美国宾夕法尼亚大学沃顿商学院金<br/>融专业高等荣誉学士学位<br/>凯雷投资集团亚洲投资基金经理<br/>加入凯雷之前，任职于高盛集团<br/>负责中国消费板块投资研究
                        </span>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p class="en-name">Arthur Tong</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                             加利福尼亚州立大学<br/>普华永道高级顾问<br/>Sketchers美国区国际财务<br/>分析师<br/>
                        </span>
                        </li>
                        <li>
                            <p class="en-name">Yueqiu Gao</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                            新加坡国立大学<br/>毕马威交易并购咨询部门 <br/>高级顾问 <br/>
                        </span>
                        </li>
                        <li>
                            <p class="en-name">Matei Daian</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                            贝恩咨询顾问<br/>斯坦福本科学士学位<br/>沃顿商学院MBA<br/>
                        </span>
                        </li>
                    </ul>
                </div>
            </div>
            <img src="/images/keru-prev.png" width="20px" height="40px" id="prev">
            <img src="/images/keru-next.png" width="20px" height="40px" id="next">
        </div>

        <%--学院录取学校start--%>
        <div class="admissionSchool ">
            <p class="titles">学员录取学校</p>
            <ul class="admissionList clearfix">
                <li><p><img style="display: block; width: 100%" src="/images/u767.jpg" alt=""></p></li>
                <li><p><img style="display: block; width: 100%" src="/images/u769.jpg" alt=""></p></li>
                <li><p><img style="display: block; width: 100%" src="/images/u771.jpg" alt=""></p></li>
                <li><p><img style="display: block; width: 100%" src="/images/u773.jpg" alt=""></p></li>
                <li><p><img style="display: block; width: 100%" src="/images/u777.jpg" alt=""></p></li>
                <li><p><img style="display: block; width: 100%" src="/images/u779.jpg" alt=""></p></li>
                <li><p><img style="display: block; width: 100%" src="/images/u783.jpg" alt=""></p></li>
                <li><p><img style="display: block; width: 100%" src="/images/u787.jpg" alt=""></p></li>
                <li><p><img style="display: block; width: 100%" src="/images/u789.jpg" alt=""></p></li>
                <li><p><img style="display: block; width: 100%" src="/images/u793.jpg" alt=""></p></li>
            </ul>
        </div>

        <%-- keru项目FAQ 开始--%>
        <div class="question">
            <p class="titles">Keru项目FAQ </p>
            <ul>
                <li>
                    <p>一、关于 Keru Trips 的理念</p>
                </li>
                <li>
                    <div>
                        <h5>1、Keru 提供什么样的服务？</h5>
                        <span>Keru 向中国众多的社会企业提供商业咨询的服务，它们所涉及的领域包括水污染、农村贫困、教育、环境保护、移民和城镇化、健康与福祉以及公共卫生等。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>2、Keru 的教育项目是什么内容？</h5>
                        <span>Keru 的教育项目脱胎于Keru 与其社会企业合作伙伴之间的真实合作项目，并被命名为Keru Trips。其内容包括带领学生前往中国农村欠发达地区，让他们去发现 Keru 的合作伙伴们所面临的真实困境。学生们会被分成小组进行活动，在职业导师的指导下，他们将运用批判性思维来寻找问题的切入点和解决方案。这一教育模式也契合了 Keru 的使命，那就是培养具有社会变革力的下一代。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>3、Keru Trips 的教育方法是什么样的？</h5>
                        <span>Keru 运用设计思维的方法论来解决问题。当学生们在当地社区进行观察并面临困难时，我们鼓励他们运用批判性思维来应对。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>4、Keru Trips 的最终成果是什么？</h5>
                        <span>在项目的整个过程中，对于当地社区所面临的问题，Keru 的学生将有机会去设计、测试并提出一个解决方案。在项目两周时间的尾声，各学生小组将会向 Keru 合作伙伴的高管们展示其最终解决方案。而学生的这些成果也将作为重要来源，整合入 Keru 的专业服务并提供给合作伙伴。</span>
                    </div>
                </li>
                <li>
                    <p>二、关于申请、报名和组织</p>
                </li>
                <li>
                    <div>
                        <h5>1、你们项目费用的依据是什么？它都包含了哪些内容？</h5>
                        <span>对于正在寻求自身发展并产生影响力的未来学生领袖而言，Keru 致力于向他们提供安全、变革性和充满意义的教育体验。我们的费用包含项目所有的基本费用（当地交通、住宿、饮食等），以及导师和当地工作人员的课程费用。我们也会通过合作伙伴将费用中的部分款项用来支持当地社区。请注意，往返项目地的旅费并未包含在我们的费用中，请自己另行负担。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>2、每次项目通常的人员构成是什么样的？</h5>
                        <span>10 至 15 名学生，5 名工作人员。我们将学生人数限定在这一数量是为了保证项目的高质量，并且良好的师生比也能让每位学生得到导师个性化的指导。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>3、学生和工作人员分别来自哪里？</h5>
                        <span>Keru 在组队时会充分考虑队伍构成的多样性，这样能够保证在解决问题时能够有不同观点的碰撞。我们招募的学生通常来自中国的公立和国际学校，也有部分来自北美地区的学校。与此相类似的，我们的导师通常也代表了不同的职业背景和领域。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>4、具体的导师分配会参考学生的意见吗？</h5>
                        <span>Keru 的导师都具有相同的资质并经过严格训练，以向学生传授内容并提供支持。学生们的分组主要依据各自的兴趣、性格以及背景，以保证每个小组的多样化及高产出。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>5、Keru Trips 一般要多长时间？</h5>
                        <span>1 至 2 周时间。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>6、从申请到拿到录取大概要多久？</h5>
                        <span>一般在 2 周左右。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>7、对这个项目很感兴趣，但是暑期已经有其他安排，后续会推出其他活动吗？</h5>
                        <span>会的。敬请关注我们的官方网站 http://www.keruknowledge.com ，或微信公众号：keruknowledge。</span>
                    </div>
                </li>
                <li>
                    <p>三、关于后勤和安全</p>
                </li>
                <li>
                    <div>
                        <h5>1、你们项目的住宿条件如何？学生和老师住在一起吗？</h5>
                        <span>Keru 队伍的所有成员会共同住在当地集镇的宾馆、或者学校宿舍内。学生们一般被安排住在双人间。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>2、你们项目的饮食条件如何？</h5>
                        <span>在整过项目期间，Keru 的队伍会尝试一些当地的特色美食。大部分时间，三餐会被安排在当地的餐馆、食肆或学校食堂。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>3、学生安全如何保障？会有生活老师吗？</h5>
                        <span>Keru Trips 的每次活动都由至少 5 名工作人员（包含导师，以下统称为老师）及 10 至 15 名学生组成。学生们的所有活动，包括出行、学习、生活等都会结伴而行，并由老师带领以确保安全。未经老师允许，学生不得独自外出。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>4、学生如果想中途自己出去玩可以吗？</h5>
                        <span>不行。整过活动项目是专门基于两周的时长而精心设计的，如果中途离开必将扰乱整个流程以及团队的完整性。</span>
                    </div>
                </li>
                <li>
                    <p>四、关于活动内容和准备</p>
                </li>
                <li>
                    <div>
                        <h5>1、我家孩子高一在读，对专业方面没有什么概念，您可以提供一些建议吗？</h5>
                        <span>Keru 项目的宗旨，是通过富有挑战和创新性的环境，向学生介绍一些最基本的技能和概念。即使对于项目活动的主题没有预先的背景知识，学生们仍可通过自主性和探索性地学习来参与并从中获益。除了行前培训和布置的任务，我们还将提供导师和指南来帮助学生。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>2、这个活动会有行前培训吗？我的孩子没有相关基础，可以参与吗？</h5>
                        <span>Keru 会向学生提供线上的行前培训，来让他们熟悉与我们主题相关的基本概念以及要求。学生们将会收到一份由 Keru 撰写的哈佛商学院风格的案例，这其中包含了项目相关地区、合作伙伴以及关键人物的重要信息。Keru 还会在项目开始前给学生布置几个行前任务。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>3、这个项目专业性强吗？（比如对于不一定要在大学学习经济或者商科的学生，参与 Keru 的小蜜人项目意义大嘛？）</h5>
                        <span>我们欢迎所有学生参与到 Keru 项目中来，任何背景和兴趣的学生都能报名。</span>
                    </div>
                </li>
                <li>
                    <p>五、关于活动价值和后续<p/>
                </li>
                <li>
                    <div>
                        <h5>1、这个活动的含金量如何？最后能在申请时起到多大的作用呢？</h5>
                        <span>除了学习到专业知识及批判性思维之外，Keru 的学生还将在大学申请时获得实际的收益。我们过往的项目参与者通过这些活动经历撰写出了独一无二的个人文书，并且还收到了导师们的推荐信。此外，Keru 还将提供一份完成社会实践项目的证书。去年，Keru 的学生便通过这些材料申请并成功收获了诸如 Brown、UC Berkeley、UCLA、Tufts、Johns Hopkins、 University of Michigan 以及 Duke 等顶级名校的录取通知。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>2、推荐信可以保证吗？</h5>
                        <span>导师将会视学生各自不同的努力和表现来给予推荐，而每位学生也都将有机会来证明自己技能上的成长和创造力。无论如何，全情投入的学生必将会收到一封来自导师的高质量的推荐信。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>3、最终的项目成果可以详细说一下吗？</h5>
                        <span>学生们在项目中接触到的是我们合作伙伴正在面临的一个现实挑战。通过讲座、课堂讨论以及实地探访，学生们将会了解到背景主题，例如用水安全。他们会以 4 – 5 人为一个小组，在导师的指导下对于该问题进行主要的研究，寻找并形成一个解决方案，并最终向我们合作伙伴的 CEO 提交及陈述该方案。Keru 则会在后续与合作伙伴一起深入到方案的长期执行中去。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>4、活动的价值在哪里？能保证短短的半个月能解决一个问题或者完成一个解决方案吗？</h5>
                        <span>学生们的项目成果将会整合到 Keru 向客户（同时也是我们合作伙伴）的长期而专业的咨询服务中去。去年，我们的学生对于思援环保所面临的一系列问题提出了一个初步的方案，之后我们将学生的发现整合进了针对这一客户的长期项目中，并于这个学年在福建落地执行。这些学生也因此有理由将该方案的最初设计归于自己名下。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>5、如果想根据研究成果写一个 research paper，老师会指导嘛？</h5>
                        <span>活动结束后，对于仍然有意愿直接参与到我们合作伙伴项目中去的学生，我们将可以给他们提供个性化的辅导。在学生们追求社会影响力和个人成长的道路上，Keru 将会持续地、不遗余力地给予支持和帮助。</span>
                    </div>
                </li>

            </ul>
        </div>
        <%-- keru项目FAQ 结束--%>

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
        <!--<%--弹窗效果--%>-->
        <div class="popup_box" style="display: none">
            <span class="popup_close"></span>
            <a href="javascript:toOrder();" style="margin-top: 5.7rem;">请使用已有信息申请</a>
            <a href="javascript:toApplication();" style="margin-top: 2rem;">修改已有信息</a>
        </div>
        <!--<%--弹窗蒙版--%>-->
        <div class="fe_window_mask"></div>
    </div>
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

    /*$(".videoSignUp").click(function() {
        $(".popup_box").show();
        $(".fe_window_mask").show();
        var scrollH = $(window).scrollTop();
        $(window).scroll(function() {
            $(this).scrollTop(scrollH)
        });
    })*/


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

    //返回顶部功能实现
//    $(window).scroll(function() {
//        var sc = $(window).scrollTop();
////        console.log(sc);
//        var rwidth = $(window).width();
//        if (sc > 0) {
//            $("#goTopBtn").css("display", "block");
//            $("#goTopBtn").css("left", (rwidth - 36) + "px");
//        } else {
//            $("#goTopBtn").css("display", "none");
//        }
//    })
//    $("#goTopBtn").click(function() {
//        var sc = $(window).scrollTop();
//        $('body,html').animate({
//            scrollTop: 0
//        }, 500);
//    })

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
        //location.href = "/userItem/applyKeru";
        /*location.href="/order/enroll/"+$("#ItemId").val();*/
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
        $(".question li div").on("mouseover",function () {
            $(this).children("span").stop().slideDown();
            $(this).parent().siblings("li").find("div span").stop().slideUp();
        });
        $(".question ul").mouseout(function(){
            $(this).find("div span").stop().slideUp();
        });
        $(".newBottom").css("margin-top","0")
    })

</script>

</html>
