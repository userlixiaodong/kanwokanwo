<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <title>看我看我 |活动提升|ITO UP , 富士山下重振伊豆古城</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | ITO UP , 富士山下重振伊豆古城">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | ITO UP , 富士山下重振伊豆古城">
    <meta name="description" content="伊东（Ito）是一个位于日本伊豆半岛的小城镇。如今，以温泉、渔业闻名全国的伊东受严重老龄化和交通不便影响，旅游业每况愈下，年轻人大量流失。这使得伊东成了研究地方再生社区营造的天然试验基地。无数社会创新话题等待被发现和探索。
在来自哈佛、耶鲁、斯坦福、东京大学的导师亲自教学和引导下，入选的竞希学生将在杭州和日本伊豆地区完成为期两周的“地方振兴实践”和“设计研发课程”。所有参与的竞希学生将获得来自哈佛大学导师和世界顶级设计所One Design Lab的联合推荐信，直通世界名校录取。">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link rel="stylesheet" href="/style/ito_up.css">
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

    <div class="mid_cont">

        <%--项目详情--%>
        <div class="advantage feature">
            <p class="titles">项目特色</p>
            <ul>
                <li>
                    <h4>感知世界前沿学术</h4>
                    <span>教授带领深入研究<br/>研发振兴方案</span>
                </li>
                <li>
                    <h4>顶级导师团队</h4>
                    <span>哈佛、耶鲁等名校导师<br/>获得哈佛重磅推荐信</span>
                </li>
                <li>
                    <h4>高端真实项目</h4>
                    <span>富士山下重振伊豆<br/>严格甄选精英学员</span>
                </li>
            </ul>
        </div>

        <%--项目详情--%>
        <div class="projectDetail">
            <p class="titles">项目详情</p>
            <div class="project_details">
                <h2>项目详情</h2>
                <div class="contens">
                    <p>
                        <b>项目地点：</b><span>中国——杭州市、日本——伊东市</span>
                    </p>
                    <p>
                        <b>项目时间：</b><span>2017-08-07——2017-08-18</span>
                    </p>
                    <p>
                        <b>项目费用：</b><span>45800元（培训课程费、签证、日本往返机票和当地交通食宿）</span>
                    </p>
                    <p>
                        <b>适合人群：</b><span>高中生、大学低年级生</span>
                    </p>
                    <p>
                        <b>申请要求：</b><span
                            class="metarial">托福90分以上，对社会学，经济学，城市规划等专业感兴趣；英语水平优秀，有团队精神，沟通协作能力强，善于观察，乐于解决问题</span>
                    </p>
                    <p>
                        <b>主办单位：</b><span>竞希教育</span>
                    </p>
                    <p>
                        <b>项目简介： </b>
                        <span class="metarial">
                         伊东（Ito）是一个位于日本伊豆半岛的小城镇。如今，以温泉、渔业闻名全国的伊东受严重老龄化和交通不便影响，旅游业每况愈下，年轻人大量流失。这使得伊东成了研究地方再生社区营造的天然试验基地。无数社会创新话题等待被发现和探索。
在来自哈佛、耶鲁、斯坦福、东京大学的导师亲自教学和引导下，入选的竞希学生将在杭州和日本伊豆地区完成为期两周的“地方振兴实践”和“设计研发课程”。所有参与的竞希学生将获得来自哈佛大学导师和世界顶级设计所One Design Lab的联合推荐信，直通世界名校录取。
                        </span>
                    </p>
                </div>
            </div>
        </div>

        <%--项目介绍--%>
        <%--<div class="videoIntroduce">--%>
            <%--<p class="titles" style="color: #fff;">Ito Up项目介绍</p>--%>
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
                            <p class="en-name">Andrew Walder</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                斯坦福大学社会学系教授
                            </span>
                        </li>
                        <li>
                            <p class="en-name">Angus Deaton</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                林斯顿大学经济学系教授
                            </span>
                        </li>
                        <li>
                            <p class="en-name">Shelley Kaga</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                耶鲁大学哲学系教授
                            </span>
                        </li>
                    <%--</ul>--%>
                    <%--<ul>--%>
                        <li>
                            <p class="en-name">Shelley Sandusky</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                加州大学伯克利分校法学博士
                            </span>
                        </li>
                        <li>
                            <p class="en-name">市仓隆平</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                京大学硕士、工作坊导师
                            </span>
                        </li>
                        <li>
                            <p class="en-name">许伟舜</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                哈弗大学硕士、课程研发
                            </span>
                        </li>
                    <%--</ul>--%>
                    <%--<ul>--%>
                        <li>
                            <p class="en-name">赖尊恒</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                哈佛大学硕士、课程研发
                            </span>
                        </li>
                        <li>
                            <p class="en-name">市仓隆平</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                耶鲁大学硕士、特约评委
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
            <img src="/images/keru-prev.png" width="20px" height="40px" id="prev">
            <img src="/images/keru-next.png" width="20px" height="40px" id="next">
        </div>

        <%--项目安排--%>
        <div class="activityResults">
            <p class="titles">项目安排</p>
            <div class="results">
                <div class="resultsPart">
                    <div class="results-parts">
                        <h4>体系入门课</h4>
                        <span class="results-span">
                            <b>杭州站   8/7—8/11</b><br/> 哈佛导师亲临杭州竞希课堂授课，<br/>开展学术和语言特训
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>创造力升级</h4>
                        <span class="results-span">
                            <b>伊豆站   8/11—8/15</b><br/> 团队抵达日本深入社会调研，<br/>根据调研结果研发振兴方案
                        </span>
                    </div>
                </div>
                <div class="resultsPart">
                    <div class="results-parts">
                        <h4>执行力突破</h4>
                        <span class="results-span">
                            <b>伊豆站   8/15—8/18</b><br/> 名师联动评估研发成果，<br/>耶鲁导师项目总结
                        </span>
                    </div>
                    <div class="results-parts">
                        <h4>自我提升总结</h4>
                        <span class="results-span">
                            <b>杭州站   8/19—未来</b><br/> 哈佛大学导师和世界顶级设计所<br/>One Design Lab的联合推荐信
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <%--项目优势--%>
        <div class="advantage adv">
            <p class="titles" style="color: #fff">项目优势</p>
            <ul>
                <li>
                    <h4>联合推荐信</h4>
                    <span>项目结束后可赢得哈佛导师和世界顶级设计所One Design Lab联合为学员提供的推荐信</span>
                </li>
                <li>
                    <h4>国际化授课</h4>
                    <span>与中国、美国、日本知名教授深度接触，密集田野考察、研讨会、团队研发，提升国际化背景</span>
                </li>
                <li>
                    <h4>超高师生比</h4>
                    <span>师生比接近1:1，10位世界级名校导师带领12名学员，深入日本社会，100小时高频互动</span>
                </li>
                <li>
                    <h4>创造力提升</h4>
                    <span>世界顶级导师手把手搭建思想地图，亲身参与地方振兴实践，用学员创造力振兴伊豆半岛小城</span>
                </li>
            </ul>
        </div>

        <%-- ASR项目FAQ 开始--%>
        <div class="question">
            <p class="titles" >ITO UP项目FAQ </p>
            <ul>
                <li>
                    <div>
                        <h5>1.项目老师会指导孩子办理签证吗？</h5>
                        <span>答：学生通过简历和面试筛选并签约成为正式ItoUP成员后，会收到筹备组详细的签证办理指导邮件。签证由筹备组全权负责办理。家长只需根据邮件提示，提供相应的签证材料即可（如学生本人护照、照片、家长经济情况证明等）。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>2.学生的安全如何保证，会有生活老师吗？ </h5>
                        <span>答：4位带队老师协助学生完成项目。从杭州站的行前课程培训开始，会有两位来自竞希的带队老师全程参与活动。其中一位老师毕业于日本立命馆大学，有8年在日经验，精通日语和日本文化。她将负责行前的基础日语培训、日本文化介绍，在日本期间的中日翻译，以及学生在当地的所有生活事宜。另一位随行老师毕业于美国斯坦福大学，有丰富的社会实践项目带队经验，负责保障学生与教授之间的沟通和项目顺利实施。此外，在伊东市还会有两位日本老师作为当地的向导，负责学生在活动期间的安全保障。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>3.项目资料中提到的“完成设计研发课程”，最终的呈现形式是什么呢? </h5>
                        <span>答：项目最终的核心研发成果是一份提供给日本伊东市的“参与式设计地图”。围绕该成果，导师团队会根据成果质量进行作品发表或参与国际评奖。根据每位参与学生的不同学术兴趣，导师团队还会有针对性地进行个性设计。例如，辅导学生完成作品集或论文创作。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>4.食宿标准是什么？学生和老师住在一起吗？</h5>
                        <span>答：所有食宿条件学生和老师相同，一起住，一起吃。住宿全程为当地闻名的四星级日式温泉旅馆。住宿条件为日式榻榻米房间，2-4人一间。学生在体验传统的日本风情的同时可以享受到正宗的伊东温泉。旅馆提供日本团队合宿所需的“会议室”及“报告厅”。餐食以当地特色日本料理为主，项目成员（学生、老师、工作人员）统一标准，早餐和午餐以四星级酒店餐标为主，晚餐根据当天行程，安排团队品尝日本当地特色食物。所有餐饮费用均已包含在项目费用中（人均每餐标准为120rmb）。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>5.联合推荐信具体是由谁出具的呢？是授课的哈耶普等美国名校的教授吗？</h5>
                        <span>答：承诺提供推荐信的主笔者为赴日指导的核心导师。包括市仓隆平、许伟舜、赖尊恒、中村菲利普等。推荐信出具单位可为导师个人，或来自哈佛建筑系的One Design Lab。参与前期授课（但不赴日）的导师不承诺为学生提供推荐信，但学生可在课堂积极表现，主动向相关导师提出推荐信请求，或与其保持长期联系，以期进一步的合作了解。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>6.除了地图和推荐信之外，项目成果还会包含其他内容吗？ 研发成果会有实际的应用吗？</h5>
                        <span>答：除了地图成果和推荐信外，导师团队会为每位学生出具活动参与证明（certificates）和个人指导报告。此外，本次日本项目结束后，项目成果会作为“老龄化城镇的旅游业振兴”课题的旗舰成果，开展后期一系列运用。目前，著名的地方再生类NGO中国乡建院已经加入合作，未来将把此次日本之行的成果运用到中国的老龄化小城镇中。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>7.有奖学金机会吗？</h5>
                        <span>答：有。本项目为部分特别优秀的学生提供奖学金。根据简历审核和面试结果，对表现尤为突出的学生发放30%起的研究奖学金，以报名费用扣除的方式给予奖励。奖学金发放时间为6-7月，行程正式启动前。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>8.后续会有什么其他项目吗？</h5>
                        <span>答： “地方再生”课题会持续推进，来自哈佛大学、耶鲁大学等院校的ItoUP导师将在全球其它地区继续开展相关工作。“老龄化城镇的旅游业振兴”课题未来将移师国内，在中国的老龄化小城镇进行应用。本次ItoUP的参与学生将作为核心成员开展相关工作。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>9.从申请到拿到录取大概要多久？？</h5>
                        <span>答：本次录取采取rolling decision，录满即止。审核团队收到学生简历后的3-4个工作日将发出面试通知，预约面试时间。面试后的3-4个工作日将通知录取结果。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>10.可以选导师吗？</h5>
                        <span>答：由于招生人数在15人以下，团队精干，因此不为学生具体指派导师。参与材料准备、现场授课、赴日指导的导师总计超过10位，职能交叉，因此亦无选择导师的必要。在日期间，具体的田野调查将进行分组，届时导师将随机选择学生。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>11.具体教授的分配会参考学生的意向专业吗？</h5>
                        <span>答：导师不做具体分配。但导师推荐信撰写、学习方案制定等重要步骤会考虑学生的专业选择。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>12.“全球联动评估研发成果”可以具体说明一下吗？</h5>
                        <span>答：导师团队会根据成果质量进行作品发表或参与国际评奖。具体信息未来会跟踪发布。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>13.因为带队导师有中国和日本人，是全程英语教学和指导嘛？有没有可能出现语言导致的沟通问题？</h5>
                        <span>答：该项目本身的教学指导、师生讨论、学生发表都以英语为主。来自竞希的两位随行老师，一位毕业于日本立命馆大学，有8年在日经验，具备专业的中日翻译能力，帮助学生解决在日本活动过程中出现的日语交流问题。另一位是来自斯坦福大学毕业的中英负责老师，帮助解决导师与学生之间的英文沟通问题。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>14.学生如果想中途自己出去玩可以吗？</h5>
                        <span>答：ItoUP项目有详细的日程安排，每一位学员都必须全程参与集体行动，不可在课程期间单独行动、中途退出。如有特殊情况需中途改变行程，ItoUP项目组将与学生、家长进行三方沟通协调。在行程的最后一日，团队会统一组织就近的日本特色观光和团建。</span>
                    </div>
                </li>
                <li>
                    <div>
                        <h5>15.活动呢的价值在哪里？能保证短短的9天时间能解决一个问题或者完成一个振兴计划吗？</h5>
                        <span>答：活动旨在为学生对接世界级导师，共同参与解决社会问题，设计解决方案。导师团队曾在肯尼亚Changqing贫民窟用类似的方式设计规划学校及配套社区，为当地的“地方再生”做出卓越贡献。本次日本之行，是另一次“地方再生”的国际实践。此外，日本之行结束后，更为宏大的“将日本经验应用于国内”的企划才刚刚开始，未来有望成为“学生提供社会解决方案”的出色样本</span>
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
                        <b>注：</b> 解释权归看我看我所有。
                    </p>
                </li>
            </ul>
        </div>

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
    function toApply1() {
        location.href = "/userItem/applyITO";
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
        var advList = $(".adv ul li");
        var resList = $(".results-parts");
        var chaImgList = $(".charactersImg li");
        var teachersList = $(".teachers ul li");
        var featureList = $(".feature ul li");
        //名师阵容背景图片添加
        for (var i = 0; i < teachersList.length; i++) {
            var listUrl = '/images/ITO_0' + parseInt(i + 1) + '.png';
            teachersList.eq(i).css({
                "background": "url(" + listUrl + ") no-repeat center 30px",
                "background-size": "55%"
            });
        }
        for (var i = 0; i < list.length; i++) {
            var listUrl = '/images/case' + parseInt(i + 1) + '.png';
            list.eq(i).css({"background": "url(" + listUrl + ") no-repeat center top", "background-size": "25%"});
        }
        for (var i = 0; i < advList.length; i++) {
            var advListUrl = '/images/adv' + parseInt(i + 1) + '.png';
            advList.eq(i).css("background", "url(" + advListUrl + ") no-repeat center 30px #f5f8fa");
        }
        for (var i = 0; i < featureList.length; i++) {
            var featureListUrl = '/images/adv' + parseInt(i + 1) + '.png';
            featureList.eq(i).css("background", "url(" + featureListUrl + ") no-repeat center 30px #f5f8fa");
        }
        for (var i = 0; i < resList.length; i++) {
            var resListUrl = '/images/results' + parseInt(i + 1) + '.png';
            resList.eq(i).css({
                "background": "url(" + resListUrl + ") no-repeat top left #fff",
                "background-size": "14%"
            });
            if (i < 2) {
                resList.eq(i).css("background-position", "top right");
            }
        }

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

            if (wid > 640) {
                for (var i = 0; i < list.length; i++) {
//            console.log(list[i]);
                    var listUrl = '/images/case' + parseInt(i + 1) + '.png';
//            console.log(listUrl);
                    list.eq(i).css({
                        "background": "url(" + listUrl + ") no-repeat center top",
                        "background-size": "15%"
                    });
                }
            }
        }
        /*ASR项目FAQ hover事件*/
        $(".question li div").on("mouseover",function () {
            $(this).children("span").stop().slideDown();
            $(this).parent().siblings("li").find("div span").stop().slideUp();
        });
        $(".question ul").mouseout(function(){
            $(this).find("div span").stop().slideUp();
        });
    })

</script>

</html>
