<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>kanwokanwo:mustRead</title>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <script src="/js/jquery-2.2.1.min.js"></script>
    <script src="/js/bootstrap.js"></script>

    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <style>

        @media screen and (max-width: 1920px) {
            html {
                font-size: 18px !important;
            }
        }

        @media screen and (max-width: 1300px) {
            html {
                font-size: 16px !important;
            }
        }

        @media screen and (max-width: 1280px) {
            html {
                font-size: 14px !important;
            }
        }

        @media screen and (max-width: 750px) {
            html {
                font-size: 12px !important;
            }

            body {
                max-width: 750px;
            }
        }


        /* iphone6 plus */
        @media (min-device-width: 414px) and (max-device-width: 736px) and (-webkit-min-device-pixel-ratio: 3) {
            html {
                font-size: 25.875px;
            }
        }

        /* iphone 6 */
        @media (min-device-width: 375px) and (max-device-width: 667px) and (-webkit-min-device-pixel-ratio: 2) {
            html {
                font-size: 23.4375px;
            }
        }

        /* 判断iphone5 *//* 横屏竖屏判断方法与ipad一样 */
        @media only screen and (min-device-width: 320px) and (max-device-width: 568px) {
            html {
                font-size: 20px;
            }
        }

        * {
            margin: 0;
            padding: 0;
        }

       html {
            font-size: 20px;
        }

        body {
            background: #f0f0f0;
        }

        .container {
            width: 1200px;
            height: auto;
            padding-top: 80px;
            text-align: center;
            overflow: hidden;
        }

        .substance {
            display: block;
            text-indent: 2em;
            font-size: 0.8rem;
            font-size: 0.8rem;
            line-height: 1.2rem;
            font-family: "Microsoft YaHei";
            text-align: left;
            margin: 0.8rem auto;
        }

        .letterTitle {
            height: 70px;
            font-weight: bold;
            background-color: #fff;
            margin: 1px auto 10px auto;
            /*padding:0.04px 20px;*/
            text-align: left;
        }

        .levelHeader {
            display: inline-block;
            border-left: 10px solid #04bc8e;
            height: 40px;
            line-height: 40px;
            padding-left: 15px;
            margin-top: 15px;
            margin-left: -264px;
            font-family: "Microsoft YaHei";
        }

        .secondary {
            font-size: 1.2rem;
            font-weight: bold;
            height: 30px;
            line-height: 30px;
            font-size: 20px;
            font-family: "Microsoft YaHei";
            text-align: left;
            border-left: 10px solid #04bc8e;
            margin: 0 0 15px 0;
            padding-left: 15px;
        }

        .container .img {
            width: 60%;
            height: auto;
        }

        .toStudent {
            width: 74%;
            float: right;
            padding-left: 20px;
            padding-right: 20px;
            background-color: #fff;
            padding-bottom: 4rem;
        }

        .toParent {
            width: 74%;
            float: right;
            padding-left: 20px;
            padding-right: 20px;
            background-color: #fff;
            padding-bottom: 4rem;
        }
        .toFlowChart{
            width: 74%;
            float: right;
            padding:20px;
            background-color: #fff;
        }
        .toFlowChart img{
            width:120%;
            height:auto;
        }
        .wrapper-parents{
            display: none;
        }
        .wrapper-students{
            display: block;
        }
        .wrapper-flowChart{
            display: none;
        }

        .navFor{
            width:24%;
            height: 500px;
            background:#ffffff;
            float: left;
            margin-right: 10px;
            margin-top: 80px;
        }
        .navFor a{
            display:block;
            line-height: 80px;
            width: 100%;
            text-align: center;
            font-size: 16px;
            font-family: "Microsoft YaHei";
            text-decoration: none;
            height: 80px;
            border-bottom: 1px dashed #ccc;
            color: #3d3d3d;
        }
       /* .navFor a:hover{
            background-color:#ccc;
            color:#ffffff ;
        }*/
        .subnav-avatar-down > i {
            font-size: 0.2rem;
        }
        .navFor a.active{
            background-color:#ccc;
            color:#ffffff ;
        }
        .container #img01,.container #img02,.container #img03,.container #img04{
            width:40% ;
        }


        @media screen and (max-width:1024px){
            .container {
                width: 99%;
                height: auto;
                padding-top: 0px;
                text-align: center;
                overflow: hidden;
            }
            .levelHeader {
                display: inline-block;
                border-left: 10px solid #04bc8e;
                height: 3rem;
                padding-left: 1.2rem;
                margin-top: 1.2rem;
                margin-left: -13rem;
                font-family: "Microsoft YaHei";
            }
        }
        @media screen and (max-width:768px){
            .levelHeader {
                display: inline-block;
                border-left: 10px solid #04bc8e;
                height: 3rem;
                padding-left: 1.2rem;
                margin-top: 1.2rem;
                margin-left: -10rem;
                font-family: "Microsoft YaHei";
            }
        }
        @media screen and (max-width:414px){
            .navFor {
                width: 21%;
                height: 15rem;
                background: #ffffff;
                float: left;
                margin-right: 1rem;
                margin-top: 6.6rem;
            }
            .levelHeader {
                display: inline-block;
                border-left: 10px solid #04bc8e;
                height: 3rem;
                padding-left: 1.2rem;
                margin-top: 1.2rem;
                margin-left:1rem;
                font-family: "Microsoft YaHei";
                font-size: 21px;
            }
            .secondary {
                font-size: 1.2rem;
                font-weight: bold;
                height: 2rem;
                line-height: 26px;
                font-size: 12px;
                font-family: "Microsoft YaHei";
                text-align: left;
                border-left: 10px solid #04bc8e;
                margin: 0 0 0 0;
                padding-left: 12px;
            }
            .navFor a {
                display: block;
                line-height: 4rem;
                width: 100%;
                text-align: center;
                font-size: 15px;
                font-family: "Microsoft YaHei";
                text-decoration: none;
                height: 4rem;
                border-bottom: 1px dashed #ccc;
                color: #3d3d3d;
            }
            p {
                margin: -21px 0 10px;
            }
            .h2 {
                font-size: 24px;
            }
            .navFor,.toStudent,.toParent,.toFlowChart{
                float: none;
                width: 100%;
            }
            .navFor{
                height: 4rem;
            }
            .navFor a {
                width: 33.33%;
                float: left;
            }
            b, strong {
                font-weight: bold;
                margin-top: 2rem;
                display: block;
            }
            .substance {
                display: block;
                text-indent: 2em;
                font-size: 0.8rem;
                font-size: 0.8rem;
                line-height: 1.2rem;
                font-family: "Microsoft YaHei";
                text-align: left;
                margin: 1.8rem auto;
            }
            .container .img{
                width: 80%;
            }
            .container #img01,.container #img02,.container #img03,.container #img04{
                width:80% ;
            }

        }
        @media screen and (max-width:319px){
            .levelHeader {
                display: inline-block;
                border-left: 10px solid #04bc8e;
                height: 3rem;
                padding-left: 1.2rem;
                margin-top: 1.2rem;
                margin-left: -5rem;
                font-family: "Microsoft YaHei";
            }


        }

    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="container">
    <div class="wrapper-students clearfix">
        <div class="navFor">
            <a class="student active" href="javascript:;">给同学的信</a>
            <a class="parents" href="javascript:;">给家长的信</a>
            <a class="flowChart" href="javascript:;">注册流程图</a>
        </div>
        <div class="letterTitle">
            <h2 class="levelHeader letterStudent">给同学的信</h2>
        </div>
        <div class="toStudent">
            <p>&nbsp;</p>
            <p class="secondary">关于录取，听听招生官怎么说</p>
            <span class="substance">
            斯坦福大学招生官：“所有被拒掉的学生中，绝大多数是符合斯坦福的申请要求的。实际上，有着GPA 4.0（平均绩点，斯坦福大学认定的绩点满分为5分）或以上的申请者数量，是我们实际录取人数的四到五倍。”
            </span>
            <span class="substance">维克森林大学招生办主任玛莎：“不要关注如何成为一名最佳申请者，而要关注如何成为一名最好的人。”</span>
            <span class="substance">劳伦斯大学招生及财政援助部主任肯.安瑟门特：“写大学申请信可能就像你正在对着「天才秀」的裁判歌唱一样，希望你所写的能够使他们按下那个大大的按钮，转过椅子来大声说「我选你」。确实是，你的声音就是我们要找的。”</span>
            <span class="substance">在哈佛招生办公室内部，每一名招生官都有一些共识：比如，不喜欢那些申请材料很厚的学生，尤其是那些给招生官送上 一本“个人专著”的申请人。</span>
            <p></p>
            <span class="substance"><b>传统的单一的文书申请导致的问题就是，招生官能看见你的文字，你的文采，你的活动，你的经历，就是看不见你的人。</b></span>
            <span class="substance">85%的美国大学招生官认为“视频+第三方面试”能更充分地展示学生。目前，视频简历已经获得近200个美国高校认可。
                <b>已经有人用视频简历获得了斯坦福大学的录取，</b>而看我看我多名同学的录取也同样得益于视频简历。</span>
            <p class="secondary">不要让你的本事，淹没在冷冰冰的文字</p>
            <span class="substance">
            <b>如今，“我们要看真人”成为美国大学的最大诉求。</b>
路透社在2016年12月2日报道称，新东方被控在美国大学入学申请中存在代写文书、材料造假等行为，宣布对新东方可能违反美国联邦证券法的行为展开调查。美国国际招生协会（AIRC）侯任主席表示，这“令人非常担忧”。
        </span>
            <img class="img" src="../../../images/news.png" id="img01" >
            <span class="substance">
            这些留学乱像直接导致美国大学对中国学生的怀疑。<b>无疑，申请材料的审核将成为美国大学决定是否录取该生的重点环节。</b>
        <p></p>
<span class="substance">如果你的嗓音够美，那就让招生官真真切切听到，如果你的动手能力很强，那就让招生官实实在在看到。中国虽有句古话，叫“妙笔生花”，然而欧美却有着这样的说法：“A picture beats a thousand words”（一张图胜过千言万语）。<b>百闻不如一见，再好的文字都不如一个生动的画面。</b></span>
        </span>
            <img class="img" src="../../../images/student.png"/>
            <span class="substance">
            美国旧金山大学副校长Stanley.D.Nel在接受“看我看我”团队采访时说，<b>看我看我给我留下了深刻的印象，我相信视频简历能让你从50万申请美国大学同学的材料中脱颖而出。</b>
        </span>
            <img class="img" src="../../../images/teacher.png"/>
            <p class="secondary">看我看我</p>
            <span class="substance">
            看我看我，是“分享经济”、社交网络与留学生态圈全方位融合的互联网创新产品，是新一代的开放式功能性知识分享和社交平台。能为中国学生提供和美国大学的直接交流，所有信息保证真实可靠。并且已经成功举办数场美国高中、大学讲座。如在3月11日举办的“哈佛大学MBA带你攻克美国最难进的大学Minerva Schools”讲座。
在看我看我里，还有由国外高校在读生和毕业生组成的<b>“校友导师”</b>团队，能一对一帮助学生了解目标学校的申请及录取情况、真实的校园生活、学习氛围等。假期也可以约起来，让“前辈们”带着学生参观校园。</span>
            <p></p>
            <span class="substance">Stanley.D.Nel说“记得在看我看我中看到一个同学的活动，他说自己对工程专业非常感兴趣。一个对工程专业很感兴趣的同学，是什么意思呢？在看我看我里，我就能看到这个同学自己组建的机器人、自己构建电路，这些都是很直观很触动人的地方，通过实实在在的视频，我们看到了他对申请专业的热情，这是美国大学非常看重的。再比如，一半以上的学生都说自己会打篮球，怎么个会法？是什么样的程度？你应该用视频让我们真实地看到。”</span>
            <img class="img" src="../../../images/teacher2.png"/>
            <p style="line-height: 5px;">&nbsp;</p>
            <img class="img" src="../../../images/teacher3.png"/>
            <p style="line-height: 5px;">&nbsp;</p>
            <img class="img" src="../../../images/teacher6.png" id="img02" />
            <span class="substance">
            美国Minerva大学亚洲区首席执行官、哈佛大学商学院 MBA  Kenn Ross（罗凯）表示，看我看我真实有效地搭建了学校、学生、家长的沟通桥梁，形式新颖而便捷，有广阔的前景。
此外，看我看我网站里还提供了海量美国高中及大学招生官的访谈视频，以及美国高中、大学的视频、图片及文字介绍；让搜索更加高效透明。更有价值的是，我们在提供招生官访谈和学校介绍信息之外，还将校友导师计划与之有机整合，让用户能够迅速了解感兴趣的学校的基本信息、录取案例，并能与该校在读学生取得直接联系，彻底扫除所有信息盲区，为用户获取一手、全面、准确的院校信息及决策参考提供一站式解决方案。</span>
            <p></p>
            <span class="substance"><b>如果非要说一个缺点，那就是太鲜活、太真实、太亮眼，给招生官的感觉只有震撼。还有，我们只接受有真实经历的同学，因为我们绝不作假。</b></span>
            <img class="img" src="../../../images/teacher4.png"/>
            <span class="substance">
            <b>看我看我</b>，这是社交媒体和大学申请流程的完美整合，是顺应当今留学申请趋势的巨大变革。因循传统，抑或是开拓创新，选择权就在你自己手中。
最后，看我看我衷心祝福每一位同学在申请过程中都能一帆风顺，拿到自己理想大学的offer。
        </span>
        </div>
    </div>
    <div class="wrapper-parents clearfix">
        <div class="navFor">
            <a class="student" href="javascript:;">给同学的信</a>
            <a class="parents active" href="javascript:;">给家长的信</a>
            <a class="flowChart" href="javascript:;">注册流程图</a>
        </div>
        <div class="letterTitle">
            <h2 class="levelHeader">给家长的信</h2>
        </div>
        <div class="toParent">
            <p>&nbsp;</p>
            <p class="secondary">留学不是叫外卖，哪个火用哪个</p>
            <span class="substance">
            敬爱的家长，生活中的你，可能已经习惯了所谓的“品牌效应”，买房上链家，外卖叫美团，订酒店用去哪儿、携程，所以面对孩子的留学，你们很可能会首先考虑所谓的“大机构”。
然而，不同于酒店、外卖等固定不变的服务，留学资讯时时刻刻有着千变万化。留学也不是叫外卖，如果随意选择，那很可能会被坑。<b>这不是我们说的，路透社不会骗你。</b>
路透社在2016年12月2日报道称，新东方被控在美国大学入学申请中存在代写文书、材料造假等行为，宣布对新东方可能违反美国联邦证券法的行为展开调查。美国国际招生协会（AIRC）侯任主席表示，这“令人非常担忧”。
        </span>
            <img class="img" src="../../../images/news.png" id="img03">
            <span class="substance">
            很多中介机构水平同样令人担忧，不少中介会出于自身利益推荐一些并不适合孩子的学校，再加上缺乏资历，他们也不能得到最有效的一手信息。
留学乱像的丛生，直接导致美国大学对中国学生的怀疑。无疑，<b>申请材料的审核甚至超过了分数评判，将成为学校决定是否录取该生的重点环节。</b>
斯坦福大学招生官说“所有被拒掉的学生中，绝大多数是符合斯坦福的申请要求的。实际上，有着GPA 4.0（平均绩点，斯坦福大学认定的绩点满分为5分）或以上的申请者数量，是我们实际录取人数的四到五倍。”
高分不录，低分高录，问题都出在申请材料上。
        </span>
            <p class="secondary">不要让孩子的本事，淹没在冷冰冰的文字</p>
            <span class="substance">
            <b>如今，“我们要看真人”成为美国大学的最大诉求。
传统的单一的文书申请导致的问题就是，招生官能看见孩子的文字、文采、活动、经历，就是看不见孩子本人。</b>
    85%的美国大学招生官认为“视频+第三方面试”能更充分地展示学生。目前，视频简历已经获得近200个美国高校认可。<b>已经有人用视频简历获得了斯坦福大学的录取</b>，而看我看我多名同学的录取也得益于视频简历。
        <p></p>
<span class="substance">如果孩子的嗓音够美，那就让招生官真真切切听到，如果孩子的动手能力很强，那就让招生官实实在在看到。中国虽有句古话，叫“妙笔生花”，然而欧美却有着这样的说法：“A picture beats a thousand words”（一张图胜过千言万语）。<b>百闻不如一见，再好的文字都不如一个生动的画面。</b></span>
        </span>
            <img class="img" src="../../../images/student.png"/>
            <span class="substance">
            美国旧金山大学副校长Stanley.D.Nel在接受“看我看我”团队采访时说，<b>看我看我给我留下了深刻的印象，我相信视频简历能让学生从50万申请美国大学同学的材料中脱颖而出。</b>
        </span>
            <img class="img" src="../../../images/teacher.png"/>
            <p class="secondary">看我看我</p>
            <span class="substance">
            看我看我，是“分享经济”、社交网络与留学生态圈全方位融合的互联网创新产品，是新一代的开放式功能性知识分享和社交平台。能为家长提供和美国大学的直接交流，所有信息保证真实可靠。并且已经成功举办数场美国高中、大学讲座。如在3月11日举办的“哈佛大学MBA带你攻克美国最难进的大学Minerva Schools”讲座。
在看我看我里，还有由国外高校在读生和毕业生组成的<b>“校友导师”</b>团队，能一对一帮助孩子了解目标学校的申请及录取情况、真实的校园生活、学习氛围等。假期也可以约起来，让“前辈们”带着孩子参观校园。
        <p></p>
<span class="substance">Stanley.D.Nel说“记得在看我看我中看到一个同学的活动，他说自己对工程专业非常感兴趣。一个对工程专业很感兴趣的同学，是什么意思呢？在看我看我里，我就能看到这个同学自己组建的机器人、自己构建电路，这些都是很直观很触动人的地方，通过实实在在的视频，我们看到了他对申请专业的热情，这是美国大学非常看重的。再比如，一半以上的学生都说自己会打篮球，怎么个会法？是什么样的程度？你应该用视频让我们真实地看到。”</span>
        </span>
            <img class="img" src="../../../images/teacher2.png"/>
            <p style="line-height: 5px;">&nbsp;</p>
            <img class="img" src="../../../images/teacher3.png"/>
            <p style="line-height: 5px;">&nbsp;</p>
            <img class="img" src="../../../images/teacher6.png" id="img04"/>
            <span class="substance">
            美国Minerva大学亚洲区首席执行官、哈佛大学商学院 MBA  Kenn Ross（罗凯）表示，看我看我真实有效地搭建了学校、学生、家长的沟通桥梁，形式新颖而便捷，有广阔的前景。
此外，看我看我网站里还提供了海量美国高中及大学招生官的访谈视频，以及美国高中、大学的视频、图片及文字介绍；让搜索更加高效透明。更有价值的是，我们在提供招生官访谈和学校介绍信息之外，还将校友导师计划与之有机整合，让用户能够迅速了解感兴趣的学校的基本信息、录取案例，并能与该校在读学生取得直接联系，彻底扫除所有信息盲区，为用户获取一手、全面、准确的院校信息及决策参考提供一站式解决方案。
       <p></p>
<span class="substance"><b>最后，如果非要说一个缺点，那就是太鲜活、太真实、太亮眼，给招生官的感觉只有震撼。还有，我们只接受有真实经历的同学，因为我们绝不作假。</b></span>
        </span>
            <img class="img" src="../../../images/teacher5.png"/>
            <span class="substance">
            <b>看我看我</b>，这是社交媒体和大学申请流程的完美整合，是顺应当今留学申请趋势的巨大变革。因循传统，抑或是开拓创新，选择权就在你和孩子手中。
        </span>
        </div>
    </div>
    <div class="wrapper-flowChart">
        <div class="navFor">
            <a class="student" href="javascript:;">给同学的信</a>
            <a class="parents" href="javascript:;">给家长的信</a>
            <a class="flowChart active" href="javascript:;">注册流程图</a>
        </div>
        <div class="letterTitle">
            <h2 class="levelHeader">注册流程图</h2>
        </div>
        <div class="toFlowChart">
            <img  src="../images/kwBigIcon.jpg">
        </div>
    </div>
</div>
<%@include file="../WEB-INF/views/common/bottom.jsp" %>
</body>
<script type="text/javascript">
    //    选项卡样式切换
    $('.parents').click(function(){
        $('.wrapper-students').css('display','none');
        $('.wrapper-parents').css('display','block');
        $('.wrapper-flowChart').css('display','none');
    });
    $('.student').click(function(){
        $('.wrapper-students').css('display','block');
        $('.wrapper-parents').css('display','none');
        $('.wrapper-flowChart').css('display','none');
    });
    $('.flowChart').click(function(){
        $('.wrapper-flowChart').css('display','block');
        $('.wrapper-students').css('display','none');
        $('.wrapper-parents').css('display','none');

    });


</script>
</html>
