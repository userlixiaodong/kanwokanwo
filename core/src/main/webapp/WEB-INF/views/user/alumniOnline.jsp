<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="/js/jquery-2.2.1.min.js"></script>
    <script src="/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link href="/style/alumnus.css" rel="stylesheet">
    <title>校友导师</title>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
    <section class="alumnus-page container-fluid">
        <div class="row">
            <div class="sm-first">
                <video class="video-v">
                    <source src="/images/alumnus_3.mp4" type="video/MP4" />
                    您的浏览器不支持当前视频播放，请升级浏览器。
                </video>
                <i class="video-tip-1   ">Here is the introductory video</i>
                <a class="video-tip-2">
                   Let's check it.
                </a>
                <a class="video-btn"></a>
            </div>
            <div class="sm-second container-fluid" >
                <h2>校友导师是谁？</h2>
                <ul class="s-center">
                    <li class="un-list">
                        <ul>
                            <li>
                                <b>国外高校在读生</b>
                            </li>
                            <li>
                                <b>国外高校毕业生</b>
                            </li>
                        </ul>
                    </li>
                    <li class="application">
                        <h4>
                            申请成为校友导师
                        </h4>
                        <p>请提交您的主页链接，平台会在36小时内完成初审。
                            通过初审后我们会联系您提交相关证明文件，请您
                            关注站内通知。</p>
                        <input class="link-text" type="text" value="Http://">
                        <input class="apply-btn " type="button" value="提交">
                    </li>
                </ul>
            </div>
            <div class="sm-third">
                <h2>校友导师可以做什么？</h2>
                <ul class="container">
                    <li class="col-lg-3" >
                        <div>
                        <img src="/images/diannao.png" width="226">
                        <span style="background: #003551;"></span>
                        <h4>接受学生咨询线上沟通</h4>
                        <p>帮助申请者了解目标学校的申请及录取情况，真实的校园生活、学习氛围等，模拟面试等学习和生活</p>
                        </div>
                    </li>
                    <li  class="col-lg-3" >
                        <div>
                        <img src="/images/view.png" width="226">
                        <span style="background: #00267b;"></span>
                        <h4>面试指导及模拟面试</br>
                            经验交流</h4>
                        <p>用亲身体会帮助申请者了解本校的面试流程及注意事项交流经验总结教训，模拟面试等学习和生活</p>
                        </div>
                    </li>
                    <li  class="col-lg-3">
                        <div>
                        <img src="/images/lead.png" width="226">
                        <span  style="background: #7a2206;"></span>
                        <h4>带领学生参观校园</br>
                            线下见面</h4>
                        <em></em>
                        <p>假期可以约起来，带着未来的师弟师妹参观介绍校园的学习和生活</p>
                        </div>
                    </li>
                    <li  class="col-lg-3" >
                        <div>
                        <img src="/images/wutai.png" width="226">
                        <span style="background: #034937;"></span>
                        <h4>企业招聘海外联系人</br>
                            展现自己能力的舞台</h4>
                        <em></em>
                        <p>协助国内知名企业到学校内开展宣和招聘活动，协助推荐优秀学生，包括想到中国工作的外国学生</p>
                        </div>
                    </li>
                </ul>
            </div>
            <%--搜索栏--%>
            <%--<div class="search-mode col-lg-12">--%>
                <%--<div class="center">--%>
<%--&lt;%&ndash;                    <input type="search" class="search-school" value="Search here···">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<input type="text" value="Search here···" onfocus="if(this.value=='Search here···'){this.value='${q}'}"&ndash;%&gt;--%>
                        <%--&lt;%&ndash;onblur="if(this.value==''){this.value='Search now···'}" class="navbar-search-input">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<a class="go-btn">GO</a>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<i class="glyphicon glyphicon-search"></i>&ndash;%&gt;--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--搜索栏--%>

<%--            <li class="pc-search">
                    <span>
                        <input type="text" value="Search now···" onfocus="if(this.value=='Search now···'){this.value='${q}'}"
                               onblur="if(this.value==''){this.value='Search now···'}" class="navbar-search-input"><!--value="${q}"-->
                        <i class="glyphicon glyphicon-search"></i>
                    </span>
            </li>--%>
            <div class="sm-alumnus">
                <div class="alumnus-head">
                    <h2 class="alumnus-forth">校友导师计划</h2>
                    <p>
                        听学霸分享自己的成功经验  让校友透露名校的内幕信息</br>请导师再现面试的真实情景  给学生指明正确的申请道路
                    </p>
                    <%--<a class='alumnus-btn'>快来参加吧</a>--%>
                </div>
                <h2 class='alumnus-h2'>热门校友导师</h2>
                <ul class="alumnus-hot">
                    <li class="li-content">
                        <a href="/ZixiAn" target="_blank">
                            <i class="photo">
                            <img src="/images/azx.jpg" width="200">
                            </i>
                        <b>Zixi An</b>
                        <span>
                            <i style="font-size: 20px;">卡耐基梅隆大学</i>
                            </br>
                            <i>Carnegie Mellon University</i>
                        </span>
                        </a>
                        <em></em>
                        <a href="/ZixiAn" target="_blank" class="am-introduce">
                            <b>Zixi An</b>
                            <p>As designing engineer of the club I participated with my group in the 2014 New York .</p>
                        </a>

                    </li>
                    <li class="li-content" style="">
                        <a href="/huangcaiwei" target="_blank">
                            <i class="photo">
                            <img src="/images/hcw.jpg" width="200">
                            </i>
                            <b>Caiwei Huang</b>
                        <span>
                            埃默里大学
                            </br>
                            <i>Emory University</i>
                        </span>
                        </a>
                        <em></em>
                        <a href="/huangcaiwei" target="_blank" class="am-introduce">
                            <b>Caiwei Huang</b>
                            <p>My research interest is in China’s energy policy and I have represented Emory at United Nations Framework Convention.</p>
                        </a>

                    </li>
                    <li class="li-content" style="">
                        <a href="/lizongyi" target="_blank">
                            <i class="photo">
                            <img src="/images/lzy.jpg" width="200">
                            </i>
                            <b>Zongyi Li</b>
                        <span>
                            <i style="font-size: 20px;">圣路易斯华盛顿大学</i>
                            </br>
                            <i>Washington University</i>
                        </span>
                        </a>
                        <em></em>
                        <a href="/lizongyi" target="_blank" class="am-introduce">
                            <b>Zongyi Li</b>
                            <p>My name is Zongyi Li, Study at Washington University in St. Louis.</p>
                        </a>
                    </li>
                    <li class="li-content" style="">
                        <a href="/liuhaoyang" target="_blank">
                            <i class="photo">
                            <img src="/images/CrystalLiu.jpg" width="200">
                            </i>
                            <b>Crystal Liu</b>
                        <span>
                            凡德比特大学
                            </br>
                            <i>Vanderbilt University</i>
                        </span>
                        </a>
                        <em></em>
                        <a href="/liuhaoyang" target="_blank" class="am-introduce">
                            <b>Haoyang Liu</b>
                            <p>毕业于人大附中，现为Vanderbilt大三学生，主修政治经济双学位，专功中美比较政治，曾在北京泰达宏利基金公司和华盛顿智库Brookings Institution担任暑期研究员。</p>
                        </a>
                    </li>
                    <li class="li-content" style="">
                        <a href="/wanghaoyu" target="_blank">
                            <i class="photo">
                                <img src="/images/why.png" width="200">
                            </i>
                            <b>Haoyu Wang</b>
                        <span>
                            史瓦兹摩尔学院
                            </br>
                            <i>Swarthmore College</i>

                        </span>
                        </a>
                        <a href="/wanghaoyu" target="_blank" class="am-introduce">
                            <b>Haoyu Wang</b>
                            <p>My name is Haoyu Wang, Study at Harvard Graduate School of Design.</p>
                        </a>
                    </li>
                    <li class="li-content">
                        <a href="/yushangdi" target="_blank">
                            <i class="photo">
                                <img src="/images/ysd.JPG" width="200">
                            </i>
                            <b>Shangdi Yu</b>
                        <span>
                            康奈尔大学
                            </br>
                            <i>Cornell University</i>
                        </span>
                        </a>
                        <a href="/yushangdi" target="_blank" class="am-introduce">
                            <b>Shangdi Yu</b>
                            <p>I'm Maria Yu from Cornell University. Before college, I went to a high school in Pennsylvania for four years.</p>
                        </a>
                    </li>
                    <li class="li-content" style="">
                        <a href="/zhanghaomiao" target="_blank">
                            <i class="photo">
                                <img src="/images/zhh.png" width="200">
                            </i>
                            <b>Haomiao Zhang</b>
                        <span>
                            卡耐基梅隆大学
                            </br>
                            <i>Carnegie Mellon University</i>
                        </span>
                        </a>
                        <a href="/zhanghaomiao" target="_blank" class="am-introduce">
                            <b>Haomiao Zhang</b>
                            <p>My name is Haomiao Zhang, Study at CARNEGIE MELLON UNIVERSITY .</p>
                        </a>
                    </li>
                    <li class="li-content" style="">
                        <a href="/zhangwenrui" target="_blank">
                            <i class="photo">
                                <img src="/images/zwr.JPG" width="200">
                            </i>
                            <b>Wenrui Zhang</b>
                        <span>
                            达特茅斯学院
                            </br>
                            <i>Dartmouth College</i>
                        </span>
                        </a>
                        <a href="/zhangwenrui" target="_blank" class="am-introduce">
                            <b>Wenrui Zhang</b>
                            <p>My name is Wenrui Zhang, Study at The Experimental High School Attached to Beijing Normal University.</p>
                        </a>
                    </li>
                </ul>
                <%--<a class="alumnus-more">MORE</a>--%>
                <%--<div class="examples alumnus-hot col-lg-12">--%>
                    <%--<div class="slider js_ease ease">--%>
                        <%--<div class="frame js_frame">--%>
                            <%--<ul class="slides js_slides">--%>
                                <%--<li class="js_slide">--%>
                                    <%--<div class="li-content">--%>
                                        <%--<a href="/ZixiAn" target="_blank">--%>
                                            <%--<img src="../../../images/azx.jpg" width="250">--%>
                                        <%--</a>--%>
                                        <%--<b>Zixi An</b>--%>
                                        <%--<span><img src="../../../images/carnegiemellonuniversity.jpg" width="30"><i>Carnegie Mellon University</i></span>--%>
                                        <%--<p>As designing engineer of the club I participated with my group in the 2014 New York .</p>--%>
                                    <%--</div>--%>
                                <%--</li>--%>
                                <%--<li class="js_slide">--%>
                                    <%--<div class="li-content">--%>
                                        <%--<a href="/huangcaiwei" target="_blank">--%>
                                            <%--<img src="../../../images/hcw.jpg" width="220">--%>
                                        <%--</a>--%>
                                        <%--<b>Caiwei Huang</b>--%>
                                        <%--<span><img src="../../../images/EmoryUniversity.jpg" width="30"><i>Emory University</i></span>--%>
                                        <%--<p>My research interest is in China’s--%>
                                            <%--energy policy and I have represe--%>
                                            <%---nted Emory at United Nations--%>
                                            <%--Framework Convention.--%>
                                        <%--</p>--%>
                                    <%--</div>--%>

                                <%--</li>--%>
                                <%--<li class="js_slide">--%>
                                    <%--<div class="li-content">--%>
                                        <%--<a href="/lizongyi" target="_blank">--%>
                                            <%--<img src="../../../images/lzy.jpg" width="220">--%>
                                        <%--</a>--%>
                                        <%--<b>ZongYi Li</b>--%>
                                        <%--<span><img src="../../../images/WashingtonUniversityinST.Louis.png" width="30"><i>Washington University</i></span>--%>
                                        <%--<p>My name is Zongyi Li, Study at Washington University in St. Louis.--%>
                                        <%--</p>--%>
                                    <%--</div>--%>
                                <%--</li>--%>
                                <%--<li class="js_slide">--%>
                                    <%--<div class="li-content">--%>
                                        <%--<a href="/liuhaoyang" target="_blank">--%>
                                            <%--<img src="../../../images/CrystalLiu.jpg" width="220">--%>
                                        <%--</a>--%>
                                        <%--<b>Crystal Liu</b>--%>
                                        <%--<span><img src="../../../images/VanderbiltUniversity.png" width="30"><i>Vanderbilt University</i></span>--%>
                                        <%--<p>毕业于人大附中，现为Vanderbilt大三学生，主修政治经济双学位，专功中美比较政治，曾在北京泰达宏利基金公司和华盛顿智库Brookings Institution担任暑期研究员。</p>--%>
                                    <%--</div>--%>
                                <%--</li>--%>
                                <%--<li class="js_slide">--%>
                                    <%--<div class="li-content">--%>
                                        <%--<a href="/wanghaoyu" target="_blank">--%>
                                            <%--<img src="../../../images/why.png" width="220">--%>
                                        <%--</a>--%>
                                        <%--<b>HaoYu Wang</b>--%>
                                        <%--<span><img src="../../../images/SwarthmoreCollege.jpg" width="30"><i>Swarthmore College</i></span>--%>
                                        <%--<p>My name is Haoyu Wang, Study at Harvard Graduate School of Design.</p>--%>
                                    <%--</div>--%>
                                <%--</li>--%>
                                <%--<li class="js_slide">--%>
                                    <%--<div class="li-content">--%>
                                        <%--<a href="/yushangdi" target="_blank">--%>
                                            <%--<img src="../../../images/ysd.JPG" width="220">--%>
                                        <%--</a>--%>
                                        <%--<b>Maria Yu</b>--%>
                                        <%--<span><img src="../../../images/cornelluniversity.jpg" width="30"><i>Cornell University</i></span>--%>
                                        <%--<p>I'm Maria Yu from Cornell University. Before college, I went to a high school in Pennsylvania for four years.</p>--%>
                                    <%--</div>--%>
                                <%--</li>--%>
                                <%--<li class="js_slide">--%>
                                    <%--<div class="li-content">--%>
                                        <%--<a href="/zhanghaomiao" target="_blank">--%>
                                            <%--<img src="../../../images/zhh.png" width="220">--%>
                                        <%--</a>--%>
                                        <%--<b>HaoMiao Zhang</b>--%>
                                        <%--<span><img src="../../../images/carnegiemellonuniversity.jpg" width="30"><i>Carnegie Mellon University</i>  </span>--%>
                                        <%--<p>My name is Haomiao Zhang, Study at CARNEGIE MELLON UNIVERSITY .</p>--%>
                                    <%--</div>--%>
                                <%--</li>--%>
                                <%--<li class="js_slide">--%>
                                    <%--<div class="li-content">--%>
                                        <%--<a href="/zhangwenrui" target="_blank">--%>
                                            <%--<img src="../../../images/zwr.JPG" width="220">--%>
                                        <%--</a>--%>
                                        <%--<b>WenRui Zhang</b>--%>
                                        <%--<span><img src="../../../images/DartmouthCollege.jpg" width="30"><i>Dartmouth College</i></span>--%>
                                        <%--<p>My name is Wenrui Zhang, Study atThe Experimental High School Attached to Beijing Normal University.</p>--%>
                                    <%--</div>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                <%--<span class="js_prev prev">--%>
                <%--<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 501.5 501.5"><g><path fill="#2E435A" d="M302.67 90.877l55.77 55.508L254.575 250.75 358.44 355.116l-55.77 55.506L143.56 250.75z"/></g></svg>--%>
                <%--</span>--%>

                <%--<span class="js_next next">--%>
                <%--<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 501.5 501.5"><g><path fill="#2E435A" d="M199.33 410.622l-55.77-55.508L247.425 250.75 143.56 146.384l55.77-55.507L358.44 250.75z"/></g></svg>--%>
                <%--</span>--%>
                    <%--</div>--%>
                <%--</div>--%>
            </div>

            <div class="sm-forth">

                <h5>现在，找到你的目标院校，在列表中选择一位
                    校友导师，点击头像即可开始交流啦！</h5>
                <div class="university-mode">
                    <h2><em></em>本科<em></em></h2>
                    <ul class="school-list">
                        <li class="school" id="h-school1">
                            <a class="school-p" href="/carnegiemellonuniversity" target="_blank"><img class="school-pic" src="/images/carnegiemellonuniversity.jpg" width="140">
                            </a>
                            <ul class="alumnus-list-view">
                                <li class="c0" value="1" >
                                    <a class="al-p" href="/zixian" target="_blank">
                                        <img src="/images/azx.jpg" width="140">
                                    </a>
                                    <p>安子熙<span>综合评价：★★★★★ 10</span></p>
                                </li>
                                <li class="c1" value="2">
                                <a class="al-p" href="/zhanghaomiao" target="_blank">
                                    <img src="/images/zhh.png"  width="140">
                                </a>
                                <p>张浩淼<span>综合评价：★★★★★ 10</span></p>
                                </li>
                                <%--<li class="c2" value="3">--%>
                                <%--<a class="al-p" href="/zhangwenrui" target="_blank">--%>
                                <%--<img src="/images/zwr.JPG" width="140">--%>
                                <%--</a>--%>
                                <%--<p>张文睿<span>综合评价：★★★★★ 10</span></p>--%>
                                <%--</li>--%>-
                            </ul>
                            <ul class="alumnus-list">
                                <li class="alumnus" value="1">
                                    <a  target="_blank">
                                        <img class="alumnus-pic" src="/images/azx.jpg" width="40">
                                    </a>
                                </li>
                                <li class="alumnus" value="2">
                                <a  target="_blank">
                                    <img class="alumnus-pic" src="/images/zhh.png" width="40">
                                </a>
                                </li>
                                <%--<li class="alumnus" value="3">--%>
                                    <%--<a href="/zhangwenrui" target="_blank">--%>
                                    <%--<img class="alumnus-pic" src="/images/zwr.JPG" width="40">--%>
                                    <%--</a>--%>
                                <%--</li>--%>
                                <%--<li class="alumnus" value="4">--%>
                                    <%--<a>--%>
                                        <%--<img class="alumnus-pic" src="/images/neko.jpg" width="40">--%>
                                    <%--</a>--%>
                                <%--</li>--%>
                                <li class="plus">
                                    <i class='glyphicon glyphicon-plus'></i>
                                </li>
                            </ul>
                            <a class="point" ><i class="glyphicon glyphicon-option-horizontal" ></i></a>
                    </li>
                        <li class="school" id="h-school2">
                            <a class="school-p" href="/EmoryUniversity" target="_blank"><img class="school-pic" src="/images/EmoryUniversity.jpg" width="140">
                            </a>
                            <ul class="alumnus-list-view" >
                                <li class="c0" value="1"  >
                                    <a class="al-p" href="/huangcaiwei" target="_blank">
                                        <img src="/images/hcw.jpg" width="140">
                                    </a>
                                    <p>黄采薇<span>综合评价：★★★★★ 10</span></p>
                                </li>
                            </ul>
                            <ul class="alumnus-list">
                                <li class="alumnus" value="1">
                                    <a  target="_blank">
                                        <img class="alumnus-pic" src="/images/hcw.jpg" width="40">
                                    </a>
                                </li>
                                <li class="plus">
                                    <i class='glyphicon glyphicon-plus'></i>
                                </li>
                            </ul>
                            <a class="point" ><i class="glyphicon glyphicon-option-horizontal" ></i></a>
                        </li>
                        <li class="school" id="h-school3">
                            <a class="school-p" href="/washingtonuniversityinstlouis" target="_blank"><img class="school-pic" src="/images/WashingtonUniversityinST.Louis.png" width="140">
                            </a>
                            <ul class="alumnus-list-view" >
                                <li class="c0" value="1"  >
                                    <a class="al-p" href="/lizongyi" target="_blank">
                                        <img src="/images/lzy.jpg" width="140">
                                    </a>
                                    <p>李宗宜<span>综合评价：★★★★★ 10</span></p>
                                </li>
                            </ul>
                            <ul class="alumnus-list">
                                <li class="alumnus" value="1">
                                    <a  target="_blank">
                                        <img class="alumnus-pic" src="/images/lzy.jpg" width="40">
                                    </a>
                                </li>
                                <li class="plus">
                                    <i class='glyphicon glyphicon-plus'></i>
                                </li>
                            </ul>
                            <a class="point" ><i class="glyphicon glyphicon-option-horizontal" ></i></a>
                        </li>
                        <li class="school" id="h-school4">
                            <a class="school-p" href="/VanderbiltUniversity" target="_blank"><img class="school-pic" src="/images/VanderbiltUniversity.png" width="140">
                            </a>
                            <ul class="alumnus-list-view" >
                                <li class="c0" value="1" >
                                    <a class="al-p" href="/liuhaoyang" target="_blank">
                                        <img src="/images/CrystalLiu.jpg" width="140">
                                    </a>
                                    <p>刘浩阳<span>综合评价：★★★★★ 10</span></p>
                                </li>
                            </ul>
                            <ul class="alumnus-list">
                                <li class="alumnus" value="1">
                                    <a  target="_blank">
                                        <img class="alumnus-pic" src="/images/CrystalLiu.jpg" width="40">
                                    </a>
                                </li>
                                <li class="plus">
                                    <i class='glyphicon glyphicon-plus'></i>
                                </li>
                            </ul>
                            <a class="point" ><i class="glyphicon glyphicon-option-horizontal" ></i></a>
                        </li>
                        <li class="school" id="h-school5">
                            <a class="school-p" href="/SwarthmoreCollege" target="_blank"><img class="school-pic" src="/images/SwarthmoreCollege.jpg" width="140">
                            </a>
                            <ul class="alumnus-list-view">
                                <li class="c0" value="1" >
                                    <a class="al-p" href="/wanghaoyu" target="_blank">
                                        <img src="/images/why.png" width="140">
                                    </a>
                                    <p>王浩宇<span>综合评价：★★★★★ 10</span></p>
                                </li>
                            </ul>
                            <ul class="alumnus-list">
                                <li class="alumnus" value="1">
                                    <a  target="_blank">
                                        <img class="alumnus-pic" src="/images/why.png" width="40">
                                    </a>
                                </li>
                                <li class="plus">
                                    <i class='glyphicon glyphicon-plus'></i>
                                </li>
                            </ul>
                            <a class="point" ><i class="glyphicon glyphicon-option-horizontal" ></i></a>
                        </li>
                        <li class="school" id="h-school6">
                            <a class="school-p" href="/cornelluniversity" target="_blank"><img class="school-pic" src="/images/cornelluniversity.jpg" width="140">
                            </a>
                            <ul class="alumnus-list-view" >
                                <li class="c0" value="1" >
                                    <a class="al-p" href="/yushangdi" target="_blank">
                                        <img src="/images/ysd.JPG" width="140">
                                    </a>
                                    <p>余尚迪<span>综合评价：★★★★★ 10</span></p>
                                </li>
                            </ul>
                            <ul class="alumnus-list">
                                <li class="alumnus" value="1">
                                    <a  target="_blank">
                                        <img class="alumnus-pic" src="/images/ysd.JPG" width="40">
                                    </a>
                                </li>
                                <li class="plus">
                                    <i class='glyphicon glyphicon-plus'></i>
                                </li>
                            </ul>
                            <a class="point" ><i class="glyphicon glyphicon-option-horizontal" ></i></a>
                        </li>
                    </ul>

                    <a class="more">MORE></a>
                </div>
            </div>
        </div>
        <%@include file="/WEB-INF/views/common/bottom.jsp" %>
    </section>
    <script>
        $('document').ready(function () {
            //视频播放按钮
            $('.video-btn').click(function () {
                $('.video-v').trigger('play');
                $('.video-btn').fadeOut(300);
                $('.video-tip-1').fadeOut(300);
                $('.video-tip-2').fadeOut(300);
            })
            $('.video-v').click(function () {
                if($('.video-v').trigger('play')){
                    $('.video-v').trigger('pause');
                    $('.video-btn').fadeIn(300);
                    $('.video-tip-1').fadeIn(300);
                    $('.video-tip-2').fadeIn(300);
                }
//                $("video").trigger("play");//for auto play
//                $("video").addClass('pause');//for check pause or play add a class
//                $('video').click(function() {
//                    if ($(this).hasClass('pause')) {
//                        $("video").trigger("play");
//                        $(this).removeClass('pause');
//                        $(this).addClass('play');
//                    } else {
//                        $("video").trigger("pause");
//                        $(this).removeClass('play');
//                        $(this).addClass('pause');
//                    }
                })
            });
//
            //学校部分动态效果
            $('.alumnus').click(function(){
                var mode=$(this).parent().parent('.school').attr('id');
                console.log('#'+mode+' .school-p');
                var list=$('.alumnus-list-view li').get();
                for(var i=0;i<list.length;i++){
                    if($(this).val() == $(list).eq(i).val()){
                        $('#'+mode+' .school-p').hide(1000);
                        $('#'+mode+' .alumnus-list').hide(1000);
                        $('#'+mode+' .point').hide(1000);
                        $('#'+mode+' .c'+i).show(1000);
                    }
                }
            });
            $('.alumnus-list-view').mouseleave(function () {
                $('.school-p').show(1000);
                $('.alumnus-list').show(1000);
                $('.point').show(1000);
                $('.alumnus-list-view li').hide(1000);
            });

    </script>
<script src="../../../js/jquery.lory.min.js" ></script>
<script src="../../../js/lory.js"></script>
<script>
    'use strict';
    document.addEventListener('DOMContentLoaded', function () {
        var ease = document.querySelector('.js_ease');

        lory(ease, {
            infinite: 4,
            slidesToScroll: 4,
            slideSpeed: 300,
            ease: 'cubic-bezier(0.455, 0.03, 0.515, 0.955)',
            enableMouseEvents: true
        });

//        function handleEvent(e) {
//            var newSpan = document.createElement('span');
//            var time = new Date();
//            time = time.getHours() + ':' + time.getMinutes() + ':' + time.getSeconds() + ',' + time.getMilliseconds();
//            var newContent = document.createTextNode('[' + time + '] Event dispatched: "' + e.type + '"');
//            newSpan.appendChild(newContent);
//            e.target.nextElementSibling.appendChild(newSpan);
//        }
//
//        events.addEventListener('before.lory.init', handleEvent);
//        events.addEventListener('after.lory.init', handleEvent);
//        events.addEventListener('before.lory.slide', handleEvent);
//        events.addEventListener('after.lory.slide', handleEvent);
//
//        events.addEventListener('on.lory.resize', handleEvent);
//        events.addEventListener('on.lory.touchend', handleEvent);
//        events.addEventListener('on.lory.touchmove', handleEvent);
//        events.addEventListener('on.lory.touchstart', handleEvent);
//        events.addEventListener('on.lory.destroy', handleEvent);

//        lory(events, {
//            infinite: 1
//        });
    });
</script>
</body>
</html>