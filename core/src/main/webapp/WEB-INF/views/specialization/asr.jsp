<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>看我看我 |活动提升|ASR科研项目，参与最前沿国内科研</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | ASR科研项目，参与最前沿国内科研">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | ASR科研项目，参与最前沿国内科研">
    <meta name="description" content=" ASR项目是由中国顶级国家实验室和“看我看我”联合举办科研项目，研究课题与带队导师均源自国家自然科学最高学术机构。ASR往期只招收中国重点大学（清华，北大）本科生，在中国最顶级的国家级实验室内跟随老师进行物理、生物、心理学、免疫专业课题研究。本次与看我看我获得独家高中生平台参与名额。">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css"/>
    <link rel="stylesheet" href="/style/asr.css">
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
        <div class="project-bg">
            <p class="titles">项目背景</p>
            <div class="enroll_box">
                <div class="enroll_top">
                    <%--<img src="/images/asr-bg-img1.png" alt="" />--%>
                    <p><span>ASR项目是什么？</span><br /><br />
                        <i style="font-style: normal;">ASR项目是由中国顶级国家实验室和“看我看我”联合举办科研项目，研究课题与带队导师均源自国家各大顶级学术机构。</i><br/><br/>
                        <i style="font-style: normal;">ASR往期只招收中国重点大学（清华，北大）本科生，在中国最顶级的国家级实验室内跟随老师进行物理、生物、心理学、免疫等专业课题研究。</i>
                    </p>
                </div>
                <div class="enroll_bottom">
                    <%--<img src="/images/asr-bg-img2.png" />--%>
                    <p>
                        为什么参加科研<br /><br />
                        <i style="font-style: normal;font-size: 0.9rem;line-height: 1.5rem;">个性化背景一直以来都是美国大学最为重视的录取标准之一，其中与未来学生专业性相关的活动更是重中之重。现在很多活动都并非真正的学术研究项目，为学生带来的申请不能带来显著的优势。</i><br/><br/>
                        <i style="font-style: normal;font-size: 0.9rem;line-height: 1.5rem;">ASR项目由国家顶级实验室博士研究员带领学员展开课题研究，含金量不言而喻。<br/>招收学员人数有限，项目结束后将得到中科院导师根据学员实际表现出具的推荐信。</i>
                    </p>
                </div>
            </div>
        </div>

        <div class="advantage">
            <p class="titles">项目优势</p>
            <ul>
                <li>
                    <h4>学术价值高</h4>
                    <span>国家级实验室内进行科研<br/>物理、生物等研究课题<br/>交叉学科培养综合能力</span>
                </li>
                <li>
                    <h4>顶级研究员导师</h4>
                    <span>源自国内顶级实验室的研究员<br/>清华、北大、中科院等<br/>业内取得众多成就</span>
                </li>
                <li>
                    <h4>高含金量提升申请背景</h4>
                    <span>研究员导师出具推荐信<br/>导师1对3高精度指导<br/>首次招募高中生</span>
                </li>
            </ul>
        </div>

        <div class="projectMessage">
            <p class="titles">项目信息</p>
            <div class="project_message">
                <h2>项目信息</h2>
                <div class="project-contens">
                    <p>
                        <b>活动地点： </b><span>北京</span>
                    </p>
                    <p>
                        <b>申请截止日期： </b><span>每期仅招收3位学员，名额一满即刻停止报名</span>
                    </p>
                    <p>
                        <b>适合人群： </b><span>高中生、大学生</span>
                    </p>
                    <p>
                        <b>项目简介： </b>
                        <span class="metarial">
                         ASR项目是由中国顶级国家实验室和“看我看我”联合举办科研项目，研究课题与带队导师均源自国家自然科学最高学术机构。ASR往期只招收中国重点大学（清华，北大）本科生，在中国最顶级的国家级实验室内跟随老师进行物理、生物、心理学、免疫专业课题研究。本次与看我看我获得独家高中生平台参与名额。</span>
                    </p>
                </div>
                <div class="xmxx" style="text-align: center">
                    <%--<a href="javascript:;" class="signUp">点击报名</a>--%>
                    <c:choose>
                        <c:when test="${sessionScope.loginUser == null}">
                            <a href="javascript: loginAlert();;" class="signUp" id="signUp">点击报名</a>
                        </c:when>
                        <c:otherwise>
                            <a href="javascript:toApply();;" class="signUp" id="signUp">点击报名</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>

        <%--<div class="doctor">
            <p class="titles">国家级博士研究员</p>
            <div class="doctor-content">
                <img src="/images/asr-doctor.jpg">
                <div class="img-decoration">
                    <h4>张博士</h4>
                    <hr>
                    <p>副研究员</p>
                    <span>
                        张博士承担多项国际合作和国家级科研项目，与国外科研机构保持着良好的合作关系，他的相关论文多次在国际会议中得到其他与会专家学者的青睐。张博士在国内外均发表过多篇论文，对大气颗粒物，大气复合污染天空地一体化监测，空气质量卫星遥感监测，PM2.5等课题都有着深入研究。
                    </span>
                </div>
            </div>
        </div>--%>

        <div class="yjh">
            <p class="titles">项目课题</p>
            <ul class="clearfix">
                <li>
                    <div class="yjhCont">
                        <h6><b class="line">地球遥感大气颗粒物治理</b> <br><i>¥27800</i></h6>
                        <div class="yjhInfo">
                            <p><b>课题时间（暂定）：</b><span>7月3日——7月31日</span></p>
                            <p><b>适课时安排：</b><span>每周一、三、五下午13：00~18:00</span></p>
                            <p><b>招收名额：</b><span>3人</span></p>
                            <p><b>导师：</b>
                                <span>
                                副研究员 <br>
                                承担多项国际合作和国家级科研项目，与国外科研机构保持着良好的合作关系。对大气颗粒物，大气复合污染天空地一体化监测，空气质量卫星遥感监测，PM2.5等课题都有着深入研究。
                                </span>
                            </p>
                            <p><b>适用学员：</b><span>
                                1.对物理、地理、农业、环境科学、大气、遥感、分子工程学感兴趣的学生；该项目属于交叉学科，因此对学生综合能力要求较高；<br>
                                2. 英语流利，托福100分以上。
                            </span></p>
                            <p><b>课程内容：</b><span>项目由博士研究员带领学员进行地球遥感大气颗粒物治理，地理，空气质量遥感监测等交叉学科的研究，主要探讨大气污染与环境污染现状监测。</span></p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="yjhCont">
                        <h6><b class="line">现代生物技术和基因工程</b> <br><i>¥37800</i></h6>
                        <div class="yjhInfo">
                            <p><b>课题时间（暂定）：</b><span>第一期（暑期班）：2017年7月3日——2017年7月31日</span><br><span>第二期（暑期班）：2017年8月3日——2017年8月31日</span><br><span>第三期（春季周末班）：2018年3月4日—— 2018年5月20日</span><br><span>以上三期师资、课时数以及项目形式完全一致，具体研究课题根据学生个人兴趣与导师商讨确定。</span></p>
                            <p><b>适课时安排：</b><span>第一期、第二期，每周一、三、五下午13：00~18:00</span><br><span>第三期，每周六下午13：00~18:00</span></p>
                            <p><b>招收名额：</b><span>3人/每期</span></p>
                            <p><b>导师：</b>
                                <span>
                                    研究员 <br>
                                    相关论文多次在国际会议中得到其他与会专家学者的青睐，在国内外均发表过多篇论文，对合成生物学，生物工程，现代生物技术以及基因工程有着深入研究。
                                </span></p>
                            <p><b>适用学员：</b>
                                <span>
                                    1.对生物、微生物、基因工程、生物合成、营养学感兴趣的学生；该项目属于交叉学科，因此对学生综合能力要求较高。<br>
                                    2.英语流利，托福100分以上。
                                </span>
                            </p>
                            <p><b>课程内容：</b><span>项目由博士研究员带领学员进行生物工程，现代生物技术以及基因工程等交叉学科的研究，主要探讨与生物，微生物相关的问题，用基因工程的手段改造已有微生物使之产生有用物质</span></p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="yjhCont">
                        <h6><b class="line">心理学、免疫、营养学、传媒</b> <br><i>¥——</i></h6>
                        <div class="yjhInfo">
                            <p>
                                <b>心理学、免疫、营养学、传媒更多高端研究课题，敬请期待~多个清华、北大、中科院、人大、华南理工大学等国内顶级高校研究员亲自带队研究课题正在洽谈中....</b>
                            </p>
                            <p><span>心理学、免疫、营养学、传媒，其他您感兴趣的专业也可以联系我们，我们为您联系研究员</span></p>
                            <p><b>电话：13681039513</b></p>
                            <p><b>负责人微信：</b></p>
                            <img src="/images/lxrewm.png" alt="" class="lxrewm">
                            <p><b>更多高端研究课题，敬请期待~</b></p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>


        <div class="projectDetail">
            <p class="titles" >项目详情</p>
            <div class="projectContainer">
                <div class="project_details">
                    <div class="pro-border">
                        <h3>为什么要参与ASR项目？</h3>
                        <div class="contents">
                            <p>
                                <b>ASR项目主要能从以下几个方面提升学员背景，从而助力申请： </b><br><span>1.实打实的接触国内最顶级的师资和实验室资源，培养科研能力，提升专业背景。从做实验，收集数据到阅读文献，了解学界最新科研进展，并最终写出自己的科研报告，ASR项目与学生在大学期间参与的科研无异。可以帮助高中生提前锻炼科研能力，在一个特定的细分领域成为小专家，向招生官证明你的科研和学术水平，并且在众多申请者中脱颖而出。</span>
                            </p>
                            <p>
                                <span>2.“Why major”言之有物:很多顶级名校的申请中都会要求附加文书，而其中很重要的一篇就是“why major”,也就是你为什么要申请这个专业。（当然也可以申请undecided，但是对于有方向的学生来说，我们推荐选一个特定专业来申请）。在密集的授课、阅读、讨论以及论文写作的过程中，学员会深刻的了解一个特定专业，并且积累实验和科研经历，在真正申请时做到言之有物而不是泛泛而谈，通过真实的科研经历打动招生官。</span>
                            </p>
                            <p>
                                <span>3.帮助选校：除了对“why major”的帮助外，参与ASR项目还能够帮助学员选择大学，让学员的眼光不囿于综合排名，从专业方向的角度更加科学的选校，并且选择更加适合自己的学校。</span>
                            </p>
                            <p>
                                <span>4.收获重磅中英文推荐信，可直接用于申请大学：导师会根据学生的表现出具客观具体的推荐信，看我看我也会积极与导师沟通，同时敦促学员按时参与项目，高质量的完成导师布置的任务，从而保证学员的成长和推荐信质量。</span>
                            </p>
                            <p>
                                <span >
                                    5.每期限招3人，名额稀缺：1：3的师生保证学员能够密集接触国内顶级的导师和实验室资源，同时也能结识其他优秀的同龄人。项目方向定制化， 时长中等，性价比极高。
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="content-arrange">
                    <div class="pro-border">
                        <h3>内容安排</h3>
                        <ul>
                            <li>博士导师亲自指导课题 </li>
                            <li>实验方法解析</li>
                            <li>最新的科研方法讲解 </li>
                            <li>前沿学术知识分析指导 </li>
                            <li>试验与数据分析 </li>
                            <li>学员研究报告指导 </li>
                            <li>学员数据分析图表生成 </li>
                            <li>博士研究员出具推荐信 </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%-- ASR项目FAQ 开始--%>
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
    console.log(wid);

    function loginAlert(){
        if (wid < 769){
            $("#signUp,.videoSignUp").on("click",function () {
                var ban=0;
                $(".mask").css("display","block");
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
    function toApply(){
        //location.href = "/userItem/applyAsr";
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
        var list = $(".cases ul li");
        var advList = $(".advantage ul li");
        for (var i = 0; i < advList.length ; i++) {
            var featureListUrl = '/images/asr-adv' + parseInt(i + 1) + '.png';
            advList.eq(i).css({"background": "url(" + featureListUrl + ") no-repeat center 30px #f5f8fa","background-size":"15%"});
        }

        $(".gis_banner_btn").css({"width":wid*0.4,"top":$(".gis_banner").height()*0.8,"left":wid*0.3});
        if (wid < 769){
            $(".mid_cont").css({"width":wid,"max-width":"750px","margin":"0 auto"});
            $(".gis_banner").css("width",wid);
            $(".gis_banner_btn").css({"width":wid,"top":$(".gis_banner").height()*0.7,"left":0});
            $(".leadFrame").css({"width":wid*0.8,"left":wid*0.5});
            $(".user-login").css({"width":wid,"height":hei,"position":"fixed","margin-left":wid*0.1,"top":"0px"});
            $(".application").css("width",wid);
            if(wid > 640){
                for (var i = 0; i < list.length ; i++) {
//            console.log(list[i]);
                    var listUrl = '/images/case'+parseInt(i+1)+'.png';
//            console.log(listUrl);
                    list.eq(i).css({"background":"url("+listUrl+") no-repeat center top","background-size":"15%"});
                }
            }
            //    项目背景部分文字在移动端超出字数用省略号代替
//            var strs = "";
//            for (var i=0;i<$(".enroll_top p").length;i++){
//                var str = $(".enroll_top p").eq(i).html();
//                var s = str.length;
////                    console.log(str);
////                    console.log(s);
//                if(s > 20){
//                    strs = strs + $(".enroll_top p").eq(i).html(str.substr(0,40)+"......");
//                }
//            }
//            for (var i=0;i<$(".enroll_bottom p span").length;i++){
//                var str = $(".enroll_bottom p span").eq(i).html();
//                var s = str.length;
//                if(s > 20){
//                    strs = strs + $(".enroll_bottom p span").eq(i).html(str.substr(0,20)+"...");
//                }
//            }

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