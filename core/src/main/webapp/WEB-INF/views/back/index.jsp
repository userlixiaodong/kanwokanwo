<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/16
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>看我看我:一站式留学服务平台·背景提升·视频简历·院校库</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <meta name="title" content="看我看我 | 留学 | 活动 | 夏校 | 院校库 | 视频文书">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | 夏校 | 院校库 | 视频文书">
    <meta name="description" content="【看我看我】是一个新一代留学服务平台，旨在通过视频简历、独家暑期和实习活动、斯坦福等名师宝典等帮助学生提升申请背景，更充分地向国外高校展示自己，打破顶级名校招生的区域局限性，让更多中国高中拥有录取常青藤名校的学生。">
    <meta http-equiv="Expires" CONTENT="0"/>
    <meta http-equiv="Cache-Control" CONTENT="no-cache"/>
    <meta http-equiv="Pragma" CONTENT="no-cache"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9, IE=8">
    <link rel="stylesheet" type="text/css" href="/style/public.css?201604278722121100000"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160322"/>
    <link rel="stylesheet" type="text/css" href="/style/index.css?20160427222422"/>
    <link rel="stylesheet" href="/style/newIndex.css">
    <style>
        /*弹窗样式*/
        .popup_box{
            width: 600px;
            height: 420px;
            background-color: #f3f7ff;
            position: fixed;
            left: 50%;
            top: 50%;
            margin-left: -300px;
            margin-top: -210px;
            z-index:999;
            display: none;
        }
        .popup_box img{
            display: block;
            margin: 0 auto;
            padding: 62px 0 40px 0;

        }
        .popup_box p{
            text-align: center;
            font-size: 18px;
            font-family: "微软雅黑";
            color: #666666;
            padding: 0;
            margin: 0;
            line-height:30px;
        }
        .popup_box .popup_btn{
            display: block;
            width: 100px;
            height: 42px;
            background-color: #1bb38c;
            font-size: 18px;
            color: #FFFFFF;
            font-family: "微软雅黑";
            border-radius: 4px;
            text-decoration: none;
            line-height: 42px;
            text-align: center;
            margin: 40px auto;
        }
        .popup_box .popup_btn:hover{
            background-color: #39cea8;
        }
        .popup_box .popup_close{
            display: block;
            cursor: pointer;
            width: 23px;
            height: 23px;
            background: url(/images/cisformclose.png)no-repeat center;
            position: absolute;
            right: 13px;
            top:13px
        }


        .fe_window_mask{
            display: none;
            position:fixed;
            left:0;
            top:0;
            z-index:699;
            width:100%;
            height:100%;
            margin:0;
            padding:0;
            background:#000 none repeat scroll 0 0;
            opacity:0.3;
        }
    </style>
</head>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<body>
<div>
    <%-- 01顶部banner图start--%>
    <div class="indexBanner">
        <ul class="bannerBox">
            <li><a href="/specialization/5"><img src="/images/BA-index02.jpg"></a></li>
        	<li><a href="/admission/profile/videoDocument"><img src="/images/BA-index01.jpg"></a></li>
            <li><a href="/specialization/9"><img src="/images/BA-ASR1.jpg"></a></li>
            <li><a href="/specialization/10"><img src="/images/BA-CCTV1.jpg"></a></li>
            <li><a href="/specialization/11"><img src="/images/BA-africa.jpg"></a></li>
        </ul>
        <div class="step">
            <span class="active"></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
        <span class="bannerprev"><img src="/images/prev.png" border="0"></span>
        <span class="bannernext"><img src="/images/next.png" border="0"></span>
    </div>
    <%-- 顶部banner图end--%>
    <%--02导航start   --%>
    <div class="fwtj">
        <ul class="fwtjList">
            <li><a href="#videojump"><span>私人订制视<br>频简历服务</span></a></li>
            <li><a href="/specialization/list"><i></i><span>看我看我独家<br>背景提升活动</span></a></li>
            <li><a href="/video/list"><i></i><span>美国大学招生官<br>招生信息分享</span></a></li>
            <li><a href="/admission/profile/partnerschoolList"><i></i><span>最新最完善<br>院校库系统</span></a></li>
        </ul>
    </div>
    <%--导航end   --%>

    <%--03背景提升活动start  --%>
    <div class="bjts clearfix">
        <h5 class="indexTitle">看我看我——热门<i>留学</i>背景提升活动</h5>
        <ul class="bjtsList">
            <li onclick="bgDetail1();">
                <img src="/images/newindex/s_asr.jpg" alt="">
                <div class="bjtsInfo">
                    <b>ASR科研项目（仅剩1席）</b>
                    <i>活动时间：2017.07.03—2017.07.31</i>
                    <p><span>学术科研</span><span>生物化学</span><span>环境科学</span><span>社会学人类学</span></p>
                </div>
            </li>
            <li onclick="bgDetail2();">
                <img src="/images/newindex/s_keru.jpg" alt="">
                <div class="bjtsInfo">
                    <b>KERU暑期项目（仅剩7席）</b>
                    <i>活动时间：2017.06.27—2018.08.20</i>
                    <p><span>公益</span><span>社会实践</span><span>生物化学</span><span>环境科学</span><span>社会学人类学</span></p>
                </div>
            </li>
            <li onclick="bgDetail3();">
                <img src="/images/newindex/s_qmrs.jpg" alt="">
                <div class="bjtsInfo">
                    <b>七幕人生（仅剩3席）</b>
                    <i>活动时间：2017.06.23—2018.10.23</i>
                    <p><span>经济金融</span><span>实习</span><span>社会实践</span><span>戏剧音乐艺术</span></p>
                </div>
            </li>
            <li onclick="bgDetail4();">
                <img src="/images/newindex/s_cis.jpg" alt="">
                <div class="bjtsInfo">
                    <b>CIS报名季（仅剩6席）</b>
                    <i>活动时间：2017.03.11—2017.07.09</i>
                    <p><span>学校科研</span><span>经济金融</span><span>暑校</span><span>政治国际关系</span><span>物理数学</span></p>
                </div>
            </li>
        </ul>
        <div class="moreBtn"><a href="/specialization/list">更多活动</a></div>
    </div>
    <%--背景提升活动end   --%>
    <%--04视频简历留学申请新潮流start  --%>
    <div class="interview-resume">
        <h5 class="indexTitle" style="color: #fff">视频简历——<i>留学</i>申请新潮流</h5>
        <div class="interview-content">
            <div class="interview-content-top">
                <div class="interview-content-inner">
                    <ul class="interview-inner-title">
                        <li>
                            <span>现在，视频简历可以用于申请所有的美国大学</span>
                        </li>
                    </ul>
                    <span class="interview-inner-enSpan">
                “ KanwoKanwo profile is a great tool for students to personalize their college applications and for us to see the real person behind each application. I'd like to see more applicants use KanwoKanwo to showcase their unique identity and extracurricular accomplishments. ”
            </span>
                    <span class="interview-inner-chSpan">
                看我看我是一个对于学生个性化申请具有很大作用的网站，通过看我看我，我们可以看到文书背后对应申请者真正的样子。希望能看到更多的申请人使用看我看我展示他们独特的一面和课外成就。
            </span>
                    <div class="interview-describe">
                        <span>Stanley D. Nel</span>
                        <span>旧金山大学副校长</span>
                    </div>
                </div>
                <div class="interview-content-inner">
                    <ul class="interview-inner-title">
                        <li>
                            <span>从七年级开始，记录你的活动和成就，以便在申请学校时做出系统性的展现。</span>
                        </li>
                    </ul>
                    <span class="interview-inner-enSpan">
                “ It doesn't matter where you are applying, every high school and college can now see your whole story.Sometimes it's hard to choose the words that accurately express your passions; however, Kanwokanwo allowed me to show, rather than just talk. ”
            </span>
                    <span class="interview-inner-chSpan">
                不管你申请哪里的大学，每一个个高中和大学都能看到你完整的履历。有时很难选择一个精准的词汇来表达你想说的话，不过在看我看我，你可以用行动与语言一起展示出你想表达的，这回比只用语言描述更到位。
            </span>
                    <div class="interview-describe">
                        <span>Cindy Chow</span>
                        <span>高中申请学员</span>
                    </div>
                </div>
            </div>
            <ul class="interview-content-bottom">
                <li><span>100%美国大学认可视频文书</span></li>
                <li><span>200+视频文书申请成功案例</span></li>
                <li><span>旧金山大学招生官喜爱视频形式文书</span></li>
            </ul>
            <a href="/admission/profile/videoDocument" class="moreMessage">更多信息</a>
        </div>
    </div>
    <%--04视频简历留学申请新潮流end  --%>
    <%--05独家美国高校采访视频start--%>
    <div class="interview-video">
        <h5 class="indexTitle">看我看我独家<i>美国</i>高校采访视频</h5>
        <ul>
            <li>
                <img src="/images/index-video-school1.jpg">
                <div class="video-introduce">
                    <div class="borderLine">
                        <p>Grier School 专访</p>
                        <span>Grier School招生官亲自介绍，源自学校的最真实最有用的信息</span>
                        <a href="/video/pagelistm" class="videos-more">更多高中视频</a>
                    </div>
                </div>
            </li>
            <li>
                <img src="/images/index-video-school2.jpg">
                <div class="video-introduce">
                    <div class="borderLine">
                        <p>斯坦福MBA许轶老师教你写文书</p>
                        <span>如何写好申请文书，低分高录。成功的文书写作案例赏析。</span>
                        <a href="/video/pagelistu" class="videos-more">更多大学视频</a>
                    </div>
                </div>
            </li>
            <li>
                <img src="/images/index-video-school3.jpg">
                <div class="video-introduce">
                    <div class="borderLine">
                        <p>研究生申请问题小百科</p>
                        <span>哥大实力学姐孟宇，为你解答申请大学与真正的大学生活的相关问题</span>
                        <a href="/video/pagelistg" class="videos-more">更多研究生视频</a>
                    </div>
                </div>
            </li>
        </ul>
        <a href="/video/list" class="moreVideo">更多视频</a>
    </div>
    <%--独家美国高校采访视频end--%>
    <%--06最全美国院校信息库start--%>
    <div class="xxkSchool">
        <h5 class="indexTitle">最全美国<i>院校</i>信息库</h5>
        <div class="yxkInfo">
            <ul class="clearfix">
                <li style="">
                    <div class="yxkLeft clearfix">
                        <div class="bigImg">
                            <img src="/images/newindex/yxk01.png" alt="">
                            <img src="/images/newindex/yxk02.png" alt="">
                            <img src="/images/newindex/yxk03.png" alt="">
                            <img src="/images/newindex/yxk04.png" alt="">
                        </div>
                        <div class="smallImg">
                            <img class="active" src="/images/newindex/yxksmall01.png" alt="">
                            <img src="/images/newindex/yxksmall02.png" alt="">
                            <img src="/images/newindex/yxksmall03.png" alt="">
                            <img src="/images/newindex/yxksmall04.png" alt="">
                        </div>
                    </div>
                    <div class="yxkRight clearfix">
                        <p class="schoolName"><span><a href="/Lynchburg-College">林奇堡大学 <i>Lynchburg <b>College</b></i></a><img src="/images/newindex/yxkSchool01.jpg" alt=""></span></p>
                        <p class="grade clearfix"><span>托福成绩：80</span><span>雅思成绩：6.5 </span><span>SAT中间分：1330</span><span>每年学费：$30805   </span></p>
                        <div class="jbxx">
                            <p>基本信息</p>
                            <table cellpadding="0" cellspacing="1">
                                <tr>
                                    <td>学校类型</td>
                                    <td>地域类型</td>
                                    <td>学生数量</td>
                                    <td>占地面积</td>
                                </tr>
                                <tr>
                                    <td>私立、男女混校</td>
                                    <td>城市</td>
                                    <td>2715</td>
                                    <td>264英亩</td>
                                </tr>
                            </table>
                        </div>
                        <div class="literature">
                            <p>学校简介</p>
                            <span>
                                林奇堡学院是一所规模中等却有着全面教育的私立大学，建于1903年，坐落于美国弗吉尼亚州林奇堡市，现有在校本科生及研究生共2700多人。林奇堡学院可授予学士、硕士和博士学位，专业设置广泛。在著名的美国新闻与世界报道杂志的美国南部最好的硕士学校排行中，林奇堡学院排名第33位；在普林斯顿评论列出的的美国最好的大学排名中，林奇堡学院排名第368位。
                            </span>
                        </div>
                    </div>
                </li>
                <li style="">
                    <div class="yxkLeft clearfix">
                        <div class="bigImg">
                            <img src="/images/newindex/yxk05.jpg" alt="">
                            <img src="/images/newindex/yxk06.jpg" alt="">
                            <img src="/images/newindex/yxk07.jpg" alt="">
                            <img src="/images/newindex/yxk08.jpg" alt="">
                        </div>
                        <div class="smallImg">
                            <img class="active" src="/images/newindex/yxksmall05.jpg" alt="">
                            <img src="/images/newindex/yxksmall06.jpg" alt="">
                            <img src="/images/newindex/yxksmall07.jpg" alt="">
                            <img src="/images/newindex/yxksmall08.jpg" alt="">
                        </div>
                    </div>
                    <div class="yxkRight">
                        <p class="schoolName"><span><a href="/minerva">密涅瓦大学 <i>Minerva <b>Schools at KGI</b></i></a><img src="/images/newindex/yxkSchool02.jpg" alt=""></span></p>
                        <p class="grade clearfix"><span>成绩要求：官网测试</span><span>每年学费：$12,500</span><span style="width: 100%">录取要求：通过自主测试、有独特的个人成就、综合素质</span></p>
                        <div class="jbxx">
                            <p>基本信息</p>
                            <table cellpadding="0" cellspacing="1">
                                <tr>
                                    <td>学校类型</td>
                                    <td>授课形式</td>
                                    <td>学生数量</td>
                                </tr>
                                <tr>
                                    <td>私立、男女混校</td>
                                    <td>游学</td>
                                    <td>1000+</td>
                                </tr>
                            </table>
                        </div>
                        <div class="literature">
                            <p>学校简介</p>
                            <span>
                                Minerva大学为全球最具智慧、最积极进取的学生提供一种全新的大学体验。凭借重新定义的学生群体、创造性的教学课程、严格的学术标准、顶尖的技术水准和真实的全球体验，Minerva大学致力于向全球的未来领袖和创新者们提供非同一般的文理科教育。
                                Minerva入学标准高于传统的常春藤大学，不会为了招生人数而降低标准。而招生范围却决不仅限于美国，而是放眼于全世界的顶尖高中毕业生。
                            </span>
                        </div>
                    </div>
                </li>
                <li style="">
                    <div class="yxkLeft clearfix">
                        <div class="bigImg">
                            <img src="/images/newindex/yxk09.jpg" alt="">
                            <img src="/images/newindex/yxk10.jpg" alt="">
                            <img src="/images/newindex/yxk11.jpg" alt="">
                            <img src="/images/newindex/yxk12.jpg" alt="">
                        </div>
                        <div class="smallImg">
                            <img class="active" src="/images/newindex/yxksmall09.jpg" alt="">
                            <img src="/images/newindex/yxksmall10.jpg" alt="">
                            <img src="/images/newindex/yxksmall11.jpg" alt="">
                            <img src="/images/newindex/yxksmall12.jpg" alt="">
                        </div>
                    </div>
                    <div class="yxkRight">
                        <p class="schoolName"><span><a href="/universityofsanfrancisco">旧金山大学 <i>University  <b>of San Francisco</b></i></a><img src="/images/newindex/yxkSchool03.jpg" alt=""></span></p>
                        <p class="grade clearfix"><span>托福成绩：79</span><span>雅思成绩：6.5 </span><span>GPA:3.0</span><span>每年学费：$62000</span></p>
                        <div class="jbxx">
                            <p>基本信息</p>
                            <table cellpadding="0" cellspacing="1">
                                <tr>
                                    <td>学校类型</td>
                                    <td>地域类型</td>
                                    <td>学生数量</td>
                                </tr>
                                <tr>
                                    <td>私立、男女混校</td>
                                    <td>城市</td>
                                    <td>8000+</td>
                                </tr>
                            </table>
                        </div>
                        <div class="literature">
                            <p>学校简介</p>
                            <span>
                                旧金山大学（University of San Francisco）是美国加州的一所非盈利教会私立学校，成立于1855年。它是一所以社区服务为宗旨的研究型大学，可以授予硕士和博士学位。学校的校园面积不大（在旧金山的市区的山坡上，靠近金门大桥），但是学生人数不少，有一万多人，其中六成是本科生。学校的代表色是绿色和金色，以前的昵称为“灰雾”，后改为“堂”（Don，对西班牙贵族的尊称）。
                            </span>
                        </div>
                    </div>
                </li>
                <li style="">
                    <div class="yxkLeft clearfix">
                        <div class="bigImg">
                            <img src="/images/newindex/yxk13.jpg" alt="">
                            <img src="/images/newindex/yxk14.jpg" alt="">
                            <img src="/images/newindex/yxk15.jpg" alt="">
                            <img src="/images/newindex/yxk16.jpg" alt="">
                        </div>
                        <div class="smallImg">
                            <img class="active" src="/images/newindex/yxksmall13.jpg" alt="">
                            <img src="/images/newindex/yxksmall14.jpg" alt="">
                            <img src="/images/newindex/yxksmall15.jpg" alt="">
                            <img src="/images/newindex/yxksmall16.jpg" alt="">
                        </div>
                    </div>
                    <div class="yxkRight">
                        <p class="schoolName"><span><a href="/villanovauniversity">维拉诺瓦大学 <i>Villanova <b>University </b></i></a><img src="/images/newindex/yxkSchool04.jpg" alt=""></span></p>
                        <p class="grade clearfix"><span>托福成绩：  100</span><span>雅思成绩：   7.0</span><span>SAT中间分：1360</span><span>每年学费：$62258   </span></p>
                        <div class="jbxx">
                            <p>基本信息</p>
                            <table cellpadding="0" cellspacing="1">
                                <tr>
                                    <td>学校类型</td>
                                    <td>地域类型</td>
                                    <td>学生数量</td>
                                    <td>占地面积</td>
                                </tr>
                                <tr>
                                    <td>私立、男女混校</td>
                                    <td>城市</td>
                                    <td>10000+</td>
                                    <td>254英亩</td>
                                </tr>
                            </table>
                        </div>
                        <div class="literature">
                            <p>学校简介</p>
                            <span>维拉诺瓦大学是位于美国宾夕法尼亚州费城西北郊Radnor镇的一所私立大学。维拉诺瓦大学成立于1842年，是宾夕法尼亚州历史最悠久，规模最大的天主教大学。十年多来，在美国新闻与世界报道（U.S. News and World Report）的排名中，在美国北部最佳硕士项目大学分类中（Best Universities-Masters category），维拉诺瓦大学一直排名第一。根据最新的美国新闻与世界报道（U.S. News and World Report）在2017年美国综合性大学（Best Colleges Rankings）排名中，维拉诺瓦大学名列第50位，跻身为世界一流大学。</span>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="pageNum clearfix">
            <span class="active"></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
        <div class="moreBtn" id="videojump"><a href="/admission/profile/partnerschoolList">更多学校</a></div>
        <span class="yxkprev"><img src="/images/newindex/yxkLeft.png" border="0"></span>
        <span class="yxknext"><img src="/images/newindex/yxkRight.png" border="0"></span>
    </div>
    <%--最全美国院校信息库end--%>
    <%--07看我看我，助力你的留学梦start--%>
    <div class="cgal" >
        <h5 class="indexTitle">看我看我——<i>成功案例</i></h5>
        <ul class="clearfix">
            <li><img src="/images/newindex/cgal05.png" alt=""><p><span>SHINING ZHAO</span><br><i>OFFER：</i><br><b>牛津大学<br> 帝国理工大学<br>  佐治亚理工学院</b></p><a href="/shiningzhao">他的视频简历</a></li>
            <li><img src="/images/newindex/cgal06.png" alt=""><p><span>XINYUYAO</span><br><i>OFFER：</i><br><b>波士顿学院<br> 罗彻斯特大学<br>凯斯西储大学</b></p><a href="/xinyuyao">她的视频简历</a></li>
            <li><img src="/images/newindex/cgal07.png" alt=""><p><span>XIE SIXIONG</span><br><i>OFFER：</i><br><b>Trinity-Pawling School<br> Loyola School, NY </b></p> <a href="/xiesixiong">他的视频简历</a></li>
            <li><img src="/images/newindex/cgal08.png" alt=""><p><span>CHENG CHI</span><br><i>OFFER：</i><br><b>南加州大学<br> 密歇根大学工程<br>北卡教堂山</b></p><a href="/chengchi">他的视频简历</a></li>
        </ul>
    </div>
    <%--看我看我，助力你的留学梦end--%>
    <%--08国外大学对看我看我的认可start--%>
        <div class="gwrk" >
            <div class="gwrkBox">
                <h5 class="indexTitle">国外大学对看我看我的<i>认可</i></h5>
                <div class="colleges-column text-center col-lg-12 col-xs-12 relative-position">
                    <img src="/images/colleges-big-pic.jpg" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/universityofsanfrancisco.mp4">
                    <div class="colleges-content col-lg-12 col-xs-12">
                        <%--<h3>国外大学对看我看我的认可</h3>--%>
                        <dl class="absolute-position">
                            <dt>Stanley D. Nel</dt>
                            <dd>Vice President of University of San Francisco</dd>
                            <dd>
                                <a href="javascript:;" class="md-trigger video-container" data-modal="cusGuide">
                                    <i class="glyphicon glyphicon-play-circle" src="/images/colleges-big-pic.jpg" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/universityofsanfrancisco.mp4"></i>
                                </a>
                            </dd>
                            <%--<dd><img src="images/colleges-small-pic.jpg"></dd>--%>
                        </dl>
                        <a href="javascript:;" class="colleges-btn md-trigger video-container" data-modal="cusGuide">
                            <i class="glyphicon glyphicon-play-circle" src="/images/colleges-big-pic.jpg" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/universityofsanfrancisco.mp4"></i>
                        </a> </div>
                </div>
            </div>
        </div>

    <%--国外大学对看我看我的认可end--%>
    <%--09合作伙伴start--%>
    <%-- 合作企业start--%>
    <div class="businessParters">
        <h5 class="indexTitle">合作<i>企业</i></h5>
        <ul class="partersList clearfix">
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb01.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb02.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb03.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb04.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb05.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb06.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb07.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb08.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb09.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb10.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb11.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb12.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb13.jpg" alt=""></p></li>
            <li><p><img style="display: block; width: 100%" src="/images/newindex/hzhb14.jpg" alt=""></p></li>
        </ul>
    </div>
    <%--合作伙伴end--%>
    <%--10免费咨询start--%>
    <div class="mfzxBa">
        <div class="mfzx clearfix">
            <div class="mfzxLeft">
                <h5 class="indexTitle"><i>看我</i>看我</h5>
                <h6>一个为留学服务业创造价值的平台，它将多媒体客制化、智能匹配、直播互动的技术优势与行业资源、意见领袖资源、名校资源整合，解决传统留学服务行业信息不透明，不对称的痛点，促进留学生态系统的良性运转。</h6>
                <p>
                    <span>留学活动背景提升活动</span>
                    <span>最新、最完善美国大学信息</span>
                    <span>独家国外大学招生官分享视频</span>
                    <span>私人订制视频简历服务</span>
                </p>
            </div>
            <div class="mfzxRight">
                <h5 class="indexTitle"><i>免费</i>咨询</h5>
                    <p><i>联系电话：</i><input type="text" id="phone" name="phone"></p>
                    <p>
                        <i>问题描述：</i>
                        <textarea rows="8" cols="20" id="problem" name="problem"></textarea>
                    </p>
                    <p>
                        <button id="btnsubmit">提交</button>
                        <span>我们将在第一时间联系您，对您的问题作出解答</span>
                    </p>
            </div>
        </div>
    </div>
    <%--免费咨询end--%>

</div>
<%--弹窗效果--%>
<div class="popup_box">
    <span class="popup_close"></span>
    <img src="/images/cisformIcon.png"/>
    <p>恭喜您提交成功！我们会在5个工作日内与您取得联系，<br />
        祝您心情愉快。</p>
    <a href="javascript:;" class="popup_btn">确定</a>

</div>
<%--弹窗蒙版--%>
<div class="fe_window_mask"></div>
<%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>
<script src="/js/video.js"></script>
<%--<script type="text/javascript" src="/js/index.js?version=20160428"></script>--%>
<script type="text/javascript" src="/js/video-popup.js?201605121953"></script>
<script type="text/javascript">
    function bgDetail1() {
        location.href = "/specialization/9";
    }
    function bgDetail2() {
        location.href = "/specialization/5";
    }
    function bgDetail3() {
        location.href = "/specialization/7";
    }
    function bgDetail4() {
        location.href = "/specialization/1";
    }
    //轮播图
    $(function() {

        $("#btnsubmit").click(function () {

                var phone=$("#phone").val();
                var problem=$("#problem").val();
                if(phone==""){
                    return;
                }
                if(problem==""){
                     return;
                 }
                $.post("/userItem/consultation",{"phone":$("#phone").val(),"problem":$("#problem").val()},function(data){
                    // 获得到返回的数据:
                    if(data == 1){
                        $(".popup_box").show();
                        $(".fe_window_mask").show();
                        var scrollH=$(window).scrollTop();
                        $(window).scroll(function(){
                            $ (this).scrollTop (scrollH)
                        });
                    }else{
                        // 跳保存页面

                    }
                });

        })
        //弹窗事件
        $(".popup_close").click(function(){
            window.location.href='/'/*跳转链接*/
        });

        $(".popup_btn").click(function(){
            window.location.href='/'/*跳转链接*/
        });


        var windowW = $(window).width();
        $(window).load(function() {
            var imgH = $(".indexBanner li img").height();
            $(".indexBanner").css("height",imgH)
        });
        if(windowW<=768){
            /*$(".indexBanner li img").attr("src","/images/indexBanner01.jpg");*/
            $(".indexBanner li img").each(function (index,ele) {
                $(ele).attr("src","/images/newBanner0"+(index+1)+".jpg")
            })
        }

        $(".indexBanner li").css("width", windowW)
        var w = $(".indexBanner li").width();

        var l = 0;
        var timer = null;
        var len = $(".bannerBox li").length * 2; //复制了一份图片，长度变了。
        $(".bannerBox").append($(".bannerBox").html()).css({
            'width': len * w,
            'left': -len * w / 2
        });

        //自动每8秒切换一次
        timer = setInterval(init, 4000);
        function init() {
            $(".indexBanner .bannernext").trigger('click');
        }

        /*鼠标移入清除定时器方法*/
        function hoverFun (ele) {
            $(ele).hover(function () {
                clearInterval(timer);
            },function () {
                timer = setInterval(init, 4000);
            })
        }
        hoverFun(".step span");
        hoverFun(".bannerBox li");
        hoverFun(".bannernext");
        hoverFun(".bannerprev");

        $(".bannerprev").click(function() {
            l = parseInt($(".bannerBox").css("left")) + w; //这里要转成整数，因为后面带了px单位
            showCurrent(l);
        });
        $(".bannernext").click(function() {
            l = parseInt($(".bannerBox").css("left")) - w; //这里要转成整数，因为后面带了px单位
            showCurrent(l);
        });

        function showCurrent(l) { //把图片的左右切换封装成一个函数
            if($(".bannerBox").is(':animated')) { //当ul正在执行动画的过程中，阻止执行其它动作。关键之处，不然图片切换显示不完全，到最后图片空白不显示。
                return;
            }
            /*console.log("before l:"+l);*/
            $(".bannerBox").animate({
                "left": l
            }, 500, function() {
                var index = ((-w*(len/2+1))-l)/w;
                if(l == 0) {
                    /*console.log("================="+(-len * w / 2));*/
                    $(".bannerBox").css("left", -len * w / 2);
                } else if(l == (1 - len) * w) {
                    //图片位置到最后一张时（第二份最后一张）时，就把图片定位到第一份最后一张。
                    // 从而显示的是第一份最后一张。
                    /* console.log("*************"+(1 - len / 2) * w);*/
                    $(".bannerBox").css('left', (1 - len / 2) * w);
                    //$(".step span").eq(0).click();
                }
                /*console.log("index--"+index);*/
                $(".step span").eq(index+1).addClass("active").siblings().removeClass("active");

            });
        }
        $(".step span").on("click", function() {
            var index = $(this).index();
            l = (-w*(len/2+1)) - (index-1)*w;
            showCurrent(l);
        });

        if(windowW>768){
            function yxkFun() {
                var w01 = $(".yxkInfo li").width();
                var num = 0;
                var timer01 = null;
                var len01 = $(".yxkInfo li").length * 2; //复制了一份图片，长度变了。
                $(".yxkInfo ul").append($(".yxkInfo ul").html()).css({
                    'width': len01 * w01,
                    'left': -len01 * w01 / 2
                });
                //自动每8秒切换一次
                timer01 = setInterval(init01, 4000);
                function init01() {
                    $(".yxknext").trigger('click');
                }

                /*鼠标移入清除定时器方法*/
                function hoverFun01 (ele) {
                    $(ele).hover(function () {
                        clearInterval(timer01);
                    },function () {
                        timer01 = setInterval(init01, 4000);
                    })
                }
                hoverFun01(".pageNum span");
                hoverFun01(".yxkInfo li");
                hoverFun01(".yxknext");
                hoverFun01(".yxkprev");

                $(".yxkprev").click(function() {
                    num = parseInt($(".yxkInfo ul").css("left")) + w01; //这里要转成整数，因为后面带了px单位
                    showCurrent01(num);
                });
                $(".yxknext").click(function() {
                    num = parseInt($(".yxkInfo ul").css("left")) - w01; //这里要转成整数，因为后面带了px单位
                    showCurrent01(num);
                });

                function showCurrent01(num) { //把图片的左右切换封装成一个函数
                    if($(".yxkInfo ul").is(':animated')) { //当ul正在执行动画的过程中，阻止执行其它动作。关键之处，不然图片切换显示不完全，到最后图片空白不显示。
                        return;
                    }
                    /*console.log("before l:"+l);*/
                    $(".yxkInfo ul").animate({
                        "left": num
                    }, 500, function() {
                        var index01 = ((-w01*(len01/2+1))-num)/w01;
                        if(num == 0) {
                            /*console.log("================="+(-len * w / 2));*/
                            $(".yxkInfo ul").css("left", -len01 * w01 / 2);
                        } else if(num == (1 - len01) * w01) {
                            //图片位置到最后一张时（第二份最后一张）时，就把图片定位到第一份最后一张。
                            // 从而显示的是第一份最后一张。
                            /* console.log("*************"+(1 - len / 2) * w);*/
                            $(".yxkInfo ul").css('left', (1 - len01 / 2) * w01);
                            //$(".step span").eq(0).click();
                        }
                        /*console.log("index--"+index);*/
                        $(".pageNum span").eq(index01+1).addClass("active").siblings().removeClass("active");
                    });
                    $(".pageNum span").on("click", function() {
                        var index01 = $(this).index();
                        /*console.log(index01)*/
                        num = (-w01*(len01/2+1)) - (index01-1)*w01;
                        showCurrent01(num);
                    });
                }
                /*院校背景提升大小图对应切换*/
                $(".smallImg img").click(function () {
                    var num=$(this).index();
                    $(this).parent().parent().find(".bigImg img").eq(num).fadeIn(1000).siblings().css("display","none");
                    $(this).css("border","0.1rem solid #19c09f").siblings().css("border","0.1rem solid #fff");
                })

            }
            yxkFun()
        }

        if(windowW>767){
            $(".bjtsList li").hover( function () {
                $(this).stop().animate({
                    "marginTop":"-0.6rem"
                })

            },function(){
                $(this).stop().animate({
                    "marginTop":"0rem"
                })
            })
        }


        // 独家美国高校采访视频模块鼠标悬浮显示遮罩层事件
//        $(".interview-video ul li").hover(function(){
//            $(this).children("div").stop().fadeToggle("slow");
//        });
    });


</script>
</html>