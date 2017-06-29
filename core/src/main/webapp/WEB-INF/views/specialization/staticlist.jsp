<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <title>看我看我 |活动提升|国际关系学院夏校，提前获取大学学分</title>
    <meta charset="UTF-8">
     <meta name="title" content="看我看我 | 留学 | 活动 | 国际关系学院夏校，提前获取大学学分">
    <meta name="keywords" content="看我看我 | 留学 | 活动 | 国际关系学院夏校，提前获取大学学分">
    <meta name="description" content="2017年国际关系学院暑期课程首次针对高中生开放。
该课程内容最大的特色是涉及国际政治、国际经济、国际文化以及中日关系，美国电子商务的最新发展与趋势！
该暑期课程灵活，每周课程不同，可以根据自己的时间上课。未完成的课程，可酌情减免学费。
参加完课程后通过考试可得到国际关系学院官方成绩单，表现优异者还有机会获得国外教授推荐信。">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=rZnlDS5W43SL10gjCAHuutp5kmv7wGOQ"></script>
    <link rel="stylesheet" type="text/css" href="/style/public.css"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css"/>
    <link rel="stylesheet" type="text/css" href="/style/guoguan.css"/>
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
    <%@include file="/WEB-INF/views/common/top.jsp"%>
    <input type="hidden" id="ItemId" value="${Item.itemId}">
    <div class="gis_banner">
        <img src="/images/BA-guoguan.jpg" class="ban-pic">
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
        <div class="advantage">
            <p class="titles">优势&特色</p>
            <ul>
                <li>
                    <h4>高端配置</h4>
                    <span>国内顶级大学针对在校学生的课程设置，首次对外招生，一样的课程，一样的老师，一样的成绩认可。</span>
                </li>
                <li>
                    <h4>国际化、师资强大</h4>
                    <span>暑期班邀请一流国际学者和一线外交官授课，百分百还原国际课堂，增进学生对外交和国际关系的了解。</span>
                </li>
                <li>
                    <h4>课程结合时事热点</h4>
                    <span>课表拒绝标化、拒绝用大幅基础课、大类课填补。取而代之的是取材于当今世界问题、国家热点的实用课程。</span>
                </li>
                <li>
                    <h4>课程可转化学分</h4>
                    <span>与国外教授沟通后，可将课程部分学分转化成大学学分，参加完课程后通过考试可以拿到国关官方成绩单。</span>
                </li>
                <li>
                    <h4>便捷实用</h4>
                    <span>不用出国，就能参加国际化格局的暑校拿学分，还能通过不同课程及国际化教授团队来充实自己的国际视角。</span>
                </li>
                <li>
                    <h4>纯英文授课</h4>
                    <span>外国知名教授亲自授课，全英文课堂使学员在学习课程的同时也能提高自己的英语理解与应用能力。</span>
                </li>
            </ul>
        </div>

        <div class="projectDetail">
            <p class="titles">活动信息</p>
            <div class="project_details">
                <h2>活动信息</h2>
                <div class="contens">
                    <p>
                        <b>活动地址： </b><span>北京市海淀区坡上村12号</span>
                    </p>
                    <p>
                        <b>活动时间： </b><span>2017-6-26——2017-7-16</span>
                    </p>
                    <p>
                        <b>主办单位：</b><span>国际关系学院</span>
                    </p>
                    <p>
                        <b>课程费用： </b><span>每门课程10000元</span>
                    </p>
                    <p>
                        <b>选课数量： </b><span> 建议学生灵活选择1-4门课程</span>
                    </p>
                    <p>
                        <b>适合人群：</b><span>高中或大学生、英文面试、学术要求（雅思6分、托福90分）</span>
                    </p>
                    <p>
                        <b>活动简介： </b>
                        <span class="metarial">
                            2017年国际关系学院暑期课程首次针对高中生开放。
该课程内容最大的特色是涉及国际政治、国际经济、国际文化以及中日关系，美国电子商务的最新发展与趋势！
该暑期课程灵活，每周课程不同，可以根据自己的时间上课。未完成的课程，可酌情减免学费。
参加完课程后通过考试可得到国际关系学院官方成绩单，表现优异者还有机会获得国外教授推荐信。
                        </span>
                    </p>
                </div>
            </div>
        </div>

        <%--师资阵容--%>
        <div class="teachers">
            <p class="titles">师资阵容</p>
            <div class="teachers-wrapper">
                <div class="teachers-loop">
                    <ul>
                        <li>
                            <p class="en-name">玛丽·派芬罗（美国）</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                1962年2月13日出生，毕业于哈佛大学，获英语文学专业硕士学位，现任哈佛大学招生委员会成员。在美国纽约州立大学任教超过10年，主要教授英文写作和文学类课程。在此之前，她曾在美国维拉诺瓦大学任教3年，教授写作课程。她在安纳波利斯MD圣约翰大学获得学士学位，她目前住在哈德逊河流域，在玛丽斯特学院任教。
夏季学期拟教授课程为“美国文学名著：短篇小说和诗歌”。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">伍德罗·克拉克二世（美国）</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                1945年7月13日出生，是环境和可再生能源的长期倡导者，是国际公认的作家，讲师，演说家和顾问。他是2007年获得诺贝尔和平奖联合获奖人。
夏季学期拟教授“美国与中国：全球化现状及展望”和“文化传播”。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">赫曼·库玛·阿迪拉卡（印度）</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                印度尼赫鲁大学中国与东南亚研究中心副教授、中文系主任。
夏季学期拟教授课程为“一带一路对印度的利弊”。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">罗伯特·夏皮罗（美国）</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                哈佛学院本科毕业，多伦多大学政治经济学硕士，芝加哥大学法学院博士，现任Barack Ferrazzano Kirschbaum & Nagelberg 律师事务所律师。
夏季学期拟教授课程为“美国民事诉讼”。
                            </span>
                        </li>
                        <li>
                            <p class="en-name">格雷戈里·德勒梅斯特（美国）</p>
                            <p class="ch-name"></p>
                            <span class="teacher-describe">
                                美国玛瑞埃塔大学教师，经济学教授，得克萨斯A&M大学经济学博士，密歇根州立大学学士。他是玛瑞埃塔大学经济学的第一把交椅。他曾在香港浸会大学和国际关系学院授课。曾出任俄亥俄河谷经济圆桌会议部长。
夏季学期拟教授课程为“环境经济学概论”。
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
            <img src="/images/keru-prev.png" width="20px" height="40px" id="prev">
            <img src="/images/keru-next.png" width="20px" height="40px" id="next">
        </div>

        <!--百度地图start-->
        <p class="titles">地址&路线</p>
        <div class="map">
            <div class="map_box">
                <div class="map_left" id="allmap"></div>
                <div class="map_right">
                    <p><i></i><span>地址：</span><br /><b>北京市海淀区坡上村12号<br /> 邮政编码 100091</b> </p>
                    <p><i></i><span>路线：</span><br /><b id="firstBr">1）地铁四号线西苑站，A口出，<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;然后坐634/特10/特5一站，<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在坡上村下车</b><b>2）地铁四号线北宫门站下车，<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A口出，向东走10分钟左右</b> </p>
                    <p><i></i><span>负责人：<small>徐老师</small></span><b> <br />15801052300 </b> </p>
                </div>
            </div>
        </div>
        <!--百度地图end-->

        <!--课程安排start-->
        <div class="course_box">
            <p class="titles">课程安排</p>
            <p class="course-describe">课程取材当今世界问题、国家热点，有可能会根据时事变化<br />做出细微调整，请随时关注网站动态~</p>
            <table id="tab" class="course_list" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                    <th id="ath">序号</th><th id="bth">姓名</th><th id="cth">国籍</th><th id="dth">所在大学</th><th id="eth">课程名称</th><th id="fth">课程名称</th><th id="gth">专业类别</th><th class="last" id="hth">课程安排</th>
                </tr>
                <tr>
                    <td>1</td><td>Timothy Shaw</td><td>加拿大</td><td>Umass Boston</td><td>全球发展和区域一体化</td><td>Global Development & Regional Integration</td><td>国际政治<br/>
                    经济</td><td><a target="_blank" href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/Global%20%26%20Regional--%20Development.pdf"></a></td>
                </tr>
                <tr>
                    <td>2</td><td>Hemant Adlakha</td><td>印度</td><td>Jawaharlal Nehru University</td><td>中国“一带一路”战略及其对印度的利弊</td><td> China's One Belt One Road Strategy and Its Pros and Cons for India</td><td>国际政治</td><td><a target="_blank" href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/%E4%B8%AD%E5%9B%BD%E2%80%9C%E4%B8%80%E5%B8%A6%E4%B8%80%E8%B7%AF%E2%80%9D%E7%AD%96%E7%95%A5%E5%8F%8A%E5%85%B6%E5%AF%B9%E5%8D%B0%E5%BA%A6%E7%9A%84%E5%88%A9%E5%BC%8A.pdf"></a></td>
                </tr>
                <tr>
                    <td>3</td><td>Tatsuya Nishida</td><td>日本</td><td>Hiroshima City University</td><td> 当代日本：日本的政治、经济和社会问题</td><td>Contemporary Japan: Political, Economic and Social Issues in Japan</td><td>国际政治</td><td><a target="_blank" href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/%E6%97%A5%E6%9C%AC%E6%94%BF%E7%BB%8F%E7%A4%BE%E4%BC%9A%E9%97%AE%E9%A2%98.pdf"></a></td>
                </tr>
                <tr>
                    <td>4</td><td>Woodrow W. Clark II</td><td>美国</td><td>Lawrence Livermore National Laboratory</td><td>美国与中国：全球化现状及展望</td><td> USA and PRC: Globalization now and into the near Future</td><td>跨文化研究
                    <br/>国际政治</td><td><a target="_blank" href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/USA%20and%20PRC%20Globalization%20now%20and--%20into%20the%20near%20Future.pdf"></a></td>
                </tr>
                <tr>
                    <td>5</td><td>Danielle CABANIS</td><td>法国</td><td>University of Toulouse</td><td>欧洲法院与公民权利</td><td> European courts and citizen rights</td><td>法律
                    <br/>国际政治</td><td><a target="_blank"  href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/%E6%AC%A7%E6%B4%B2%E6%B3%95%E5%BA%AD%E5%92%8C%E5%85%AC%E6%B0%91%E6%9D%83%E5%88%A9.pdf"></a></td>
                </tr>
                <tr>
                    <td>6</td><td>Aqab<br>M. Malik</td><td>巴基斯坦</td><td>National Defense University, Pakistan</td><td>恐怖主义研究</td><td>Terrism studies</td><td>国际政治</td><td><a target="_blank" href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/Terrorism%20Studies.pdf"></a></td>
                </tr>

                <tr>
                    <td>7</td><td> Henrik Plaschke</td><td>丹麦</td><td>Aalborg University</td><td> 国之富强：市场、机构、国家和全球化治理</td><td>The Wealth of Nations: markets,institutions,states and the governance of globalization</td><td>经济
                    <br/>国际政治</td><td><a target="_blank" href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/The%20Wealth%20of%20Nations%20markets%2C--%20institutions%2C%20states%20and%20the%20governance%20of%20globalizatio.pdf"></a></td>
                </tr>
                <tr>
                    <td>8</td><td>Gregory Delemeeste</td><td>美国</td><td>Marietta College</td><td> 环境经济学</td><td> Environmental Economics</td><td>经济</td><td><a target="_blank" href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/%E7%8E%AF%E5%A2%83%E7%BB%8F%E6%B5%8E%E5%AD%A6.pdf"></a></td>
                </tr>
                <tr>
                    <td>9</td><td>Jeremy <br>Fei Wang</td><td>美国</td><td>Flagler College</td><td>美国信息技术的最新商业应用与趋势</td><td>Current E-Commerce Developments and Trends in the United States</td><td>信息科技
                    <br>
                    商学</td><td><a target="_blank" href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/%E7%BE%8E%E5%9B%BD%E7%94%B5%E5%AD%90%E5%95%86%E5%8A%A1%E7%9A%84%E6%9C%80%E6%96%B0%E5%8F%91%E5%B1%95%E4%B8%8E%E8%B6%8B%E5%8A%BF.pdf"></a></td>
                </tr>
                <tr>
                    <td>10</td><td> Robert<br> E. Shapiro</td><td>美国</td><td>St. Xavier University</td><td>美国法律制度</td><td>American Legal System</td><td>法律</td><td><a href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/%E7%BE%8E%E5%9B%BD%E6%B3%95%E5%BE%8B%E5%88%B6%E5%BA%A6.pdf" target="_blank"></a></td>
                </tr>
                <tr>
                    <td>11</td><td> Marlis Paffenroth</td><td>美国</td><td>State University of New York</td><td>美国名著：短篇小说和诗歌</td><td> American Masterpieces: Short Fiction and Poetry</td><td>文学</td><td><a href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/%E7%BE%8E%E5%9B%BD%E6%96%87%E5%AD%A6%E7%BB%8F%E5%85%B8%EF%BC%9A%E7%9F%AD%E7%AF%87%E5%B0%8F%E8%AF%B4%E5%92%8C%E8%AF%97%E6%AD%8C.pdf" target="_blank"></a></td>
                </tr>
                <tr>
                    <td>12</td><td>Colin Osland</td><td>英国</td><td>北京联合大学</td><td>文化差异与人员管理</td><td>Cultural Differences and People Managemen</td><td>
                    商学<br/>跨文化研究</td><td><a href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/Cross_Cultural_People_Management.pdf" target="_blank" ></a></td>
                </tr>
                <tr>
                    <td>13</td><td>Ulrike Reisach</td><td>德国</td><td>Neu-Ulm University</td><td> 跨文化管理与沟通（从德、美与中国对比角度）</td><td>Intercultural Management and Communication(German and US-American Approaches compared to China)</td><td>
                    传媒<br/>
                    商学<br/>跨文化研究</td><td><a href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/files/guoguan/Interculturl%20Management%20and%20Communication.pdf" target="_blank"></a></td>
                </tr>

            </table>
        </div>
        <!--课程列表end-->

        <%--底部联系方式start--%>
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
        <%--底部联系方式end--%>
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
    $(function () {
        $(window).load(function () {
            $(".loaded").fadeOut();
            $(".preloader").delay(1000).fadeOut("slow");
        });
        //优势特色背景图添加
        var advList = $(".advantage ul li");
        var teachersList = $(".teachers ul li");

        //成功案例添加背景图片
        for (var i = 0; i < advList.length ; i++) {
            var advListUrl = '/images/adv'+parseInt(i+1)+'.png';
            advList.eq(i).css("background","url("+advListUrl+") no-repeat center 30px #f5f8fa");
        }
        //名师阵容背景图片添加
        for (var i = 0; i < teachersList.length; i++) {
            var listUrl = '/images/gg-tea' + parseInt(i + 1) + '.png';
            teachersList.eq(i).css({
                "background": "url(" + listUrl + ") no-repeat center 30px",
                "background-size": "55%"
            });
        }
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

    function loginAlert(){
        if (wid < 769){
            $("#signUp,.videoSignUp").on("click",function () {
                $(".mask").css("display","block").bind("touchmove",function(e){
                    e.preventDefault();
                    e.stopPropagation();
                },false);
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
    function toApply1(){
        location.href = "/userItem/applyinr";
    }
    function toApply() {
        //location.href = "/userItem/applymanteng";
        //location.href="/order/enroll/"+$("#ItemId").val();
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


    var point = new BMap.Point(116.292614,40.010121);
    // 百度地图API功能
    var map = new BMap.Map("allmap"); // 创建Map实例
    map.centerAndZoom(point,16); // 初始化地图,设置中心点坐标和地图级别
    map.addControl(new BMap.MapTypeControl()); //添加地图类型控件
    map.setCurrentCity("北京"); // 设置地图显示的城市 此项是必须设置的
    /* map.enableScrollWheelZoom(true);*/ //开启鼠标滚轮缩放
    /*map.disableDragging();*/
    var marker = new BMap.Marker(point);
    map.addOverlay(marker);               // 将标注添加到地图中
    marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
</script>
</html>