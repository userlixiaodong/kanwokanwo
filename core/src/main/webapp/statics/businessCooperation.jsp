<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/3
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Partners</title>
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <script src="/js/jquery-2.2.1.min.js"></script>
    <script src="/js/bootstrap.js"></script>

    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link rel="stylesheet" type="text/css" href="/style/businessCooperation.css?20170505">
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="topBanner">【看我看我】现诚招商业合作伙伴</div>
<div class="container">

    <div class="wrapper-parents clearfix">
        <div class="navFor">
            <a class="parents active" href="javascript:;">商务合作</a>
            <a class="student" href="javascript:;">关于我们</a>
        </div>
        <div class="letterTitle">
            <h2 class="levelHeader"><i></i>商务合作</h2>
        </div>
        <div class="toParent business">
            <p class="title">【看我看我】现诚招商业合作伙伴，类别包括但不限于各类有助于学生申请背景提升的 </p>
            <hr>
            <img class="provideIMG" src="/images/provideBjts.jpg" alt="">
            <p class="title">看我看我为您提供</p>
            <hr>
            <img class="provideIMG" src="/images/provideyou.png" alt="">
            <p class="title">此外，如果您是中国高中或国际学校，也欢迎您联系我们，我们将为您提供：</p>
            <hr>
            <div class="ProvideYou">
                <ul class="clearfix">
                    <li>
                        <p><img src="/images/Provide01.png" alt=""><span>学校介绍页面制作</span></p>
                    </li>
                    <li>
                        <p><img src="/images/Provide02.png" alt=""><span>学校官方介绍视频拍摄</span></p>
                    </li>
                    <li>
                        <p><img src="/images/Provide03.png" alt=""><span>免费为3名优秀学生指导及拍摄视频简历</span></p>
                    </li>
                    <li>
                        <p><img src="/images/Provide04.png" alt=""><span>学生组团报名看我看我活动的独家优惠</span></p>
                    </li>
                </ul>
                <p class="context">
                    【看我看我】希望通过我们的努力，打破顶级名校招生的区域局限性，<br>
                    让更多非北上广深的优秀学生拿到名校offer。我们的服务将帮助国外高校了解<br>
                    您的学校和学生，综合提升学生申请软实力，为学校将来的招生和发展打下坚实基础。<br>
                </p>
            </div>
            <div class="manager clearfix">
                <p>
                    <img src="/images/managerEwm.jpg" alt="">
                    <span>负责人微信</span>
                </p>
                <p>
                    <span><b class="icon1">BD负责人：</b> Amber</span>
                    <span><b class="icon2">手   机  号：</b> 13681039513</span>
                    <span><b class="icon3">Email：</b>Amberhu@kanwokanwo.com</span>
                </p>

            </div>
        </div>



    </div>

    <div class="wrapper-students clearfix">
        <div class="navFor">
            <a class="parents " href="javascript:;">商务合作</a>
            <a class="student active " href="javascript:;">关于我们</a>
        </div>
        <div class="letterTitle">
            <h2 class="levelHeader letterStudent"><i></i>关于我们</h2>
        </div>
        <div class="toStudent aboutUs">
           <p class="title">【看我看我】——新一代的留学服务平台 </p>
            <hr>
            <div class="aboutcont clearfix">
                <img src="/images/hezuo01.png" alt="">
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;看我看我，是一个为留学服务业创造价值的平台它将多媒体客制化、智能匹配、直播互动的技术优势与行业资源、意见领袖资源、名校资源整合，解决传统留学服务行业信息不透明，不对称的痛点，促进留学生态系统的良性运转。</span>
            </div>
            <p class="title">针对目前出国留学的主要痛点，【看我看我】提供全方位的解决方案</p>
            <hr>
            <div class="solution">
                <p>
                    <i><b>1.</b>信息不对称</i><br>
                    <span>只能片面的了解学校→【看我看我】提供全面详实的中文院校库，并提供实时招生信息更新和视频介绍，帮助学生和家长把握申请形势，全方位了解别处找不到的学校和院校特色，筛选适合自己的学校。</span>
                </p>
                <p>
                    <i><b>2.</b>信息不透明</i><br>
                    <span>甄别成本高→【看我看我】为学生提供各个学科，针对各个年级的优质活动和院校资源，项目特色一目了然，免除额外费用。</span>
                </p>
                <p>
                    <i><b>3.</b>中国申请人逐年增加</i><br>
                    <span>竞争愈加激烈→【看我看我】可以免费帮助学生创造个性化多媒体简历，通过视频，图片和文字的方式，让学生给招生官呈现的不仅仅是考试分数和冷冰冰的文字，大幅度提升被录取几率。</span>
                </p>
                <p>
                    <i><b>4.</b>各个活动申请系统不统一</i><br>
                    <span>申请活动费时费力→【看我看我】独家整合优质活动资源并统一报名流程，一次填写即可申请多个活动， 大幅提升效率，帮助学生节约时间和精力。</span>
                </p>
                <p>
                    <i><b>5.</b>教育资源不平衡</i><br>
                    <span>严重向特大城市倾斜→通过【看我看我】的免费多媒体简历和优质活动资源，让各地的学生都能提升竞争力，收获梦想学校的offer。截止目前，我们已帮助学生获取哈佛，斯坦福，剑桥，杜克等顶尖名校的offer。（点击这里查看成功学生案例）</span>
                </p>
                <p>
                    <i><b>6.</b>海归裸归回国人数逐年增加</i><br>
                    <span>投资留学的回报率无法保障→【看我看我】提供专业的职业规划，让学生不仅留学成功，更能成功留学。将家庭大额的留学投资转化为切实可见的美国名企offer。</span>
                </p>
            </div>

        </div>


    </div>

</div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>
</html>
<script type="text/javascript">
    //    选项卡样式切换
    $('.parents').click(function(){
        $('.wrapper-students').css('display','none');
        $('.wrapper-parents').css('display','block');
    });
    $('.student').click(function(){
        $('.wrapper-students').css('display','block');
        $('.wrapper-parents').css('display','none');
    });
</script>
