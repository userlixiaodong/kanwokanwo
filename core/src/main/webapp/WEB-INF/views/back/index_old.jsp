<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" type="text/css" href="style/video-js.css?20160322"/>
    <link rel="stylesheet" type="text/css" href="style/index.css?20160427222422"/>
    <%--<link href="/style/student.css" rel="stylesheet" type="text/css">--%>
    <style>
        .special{
            display: none;
            width: 1200px;
            /*height: 554px;*/
            position: fixed;
            z-index:9999;
            left: 50%;
            top: 50%;
            transform: translate(-50%,-50%);
            -webkit-transform: translate(-50%,-50%);

        }
        .special .close{ display:block;position:absolute;right:0;top:0;width:54px;height:54px;background:url(images/closebutton.jpg) no-repeat;overflow:hidden;cursor:pointer; z-index:99999;}
        .login-before{
            width: 700px;
            height: 340px;
            position: fixed;
            left: 50%;
            top: 50%;
            z-index:1000;
            text-align: center;
            transform: translate(-50%,-50%);
            -webkit-transform: translate(-50%,-50%);
            background: #e1e4e8;
            display: none;
        }

        .login-before .login-before-close-btn,.pay-close-btn,.consult-fail .consult-fail-close-btn{
            color: #aaaaaa;
            position: absolute;
            right: 10px;
            top: 10px;
        }
        .login-before p,.consult-fail p{
            font-family: "Microsoft Yahei";
            font-size: 18px;
            margin-top: 90px;
            width:100%;
            text-align: center;
        }
        .login-before .login-btn{
            display: block;
            width: 140px;
            height: 55px;
            font-size: 24px;
            line-height: 55px;
            color: #fff;
            text-align: center;
            margin: 70px auto;
            background-color: #28b38d;
        }

        @media (max-width:768px){
            .indexBanner img{
                width: 100%;
            }

        }
    </style>
</head>

<body class="index">
<!--未登录-->
<!--=====================================top============================================-->
<%@include file="/WEB-INF/views/common/topEN.jsp" %>
<div class="index-main">
   <%-- 首页视屏隐藏2017-5-9--%>
    <div class="index-header">
        <div class="index-header-wrapper">
            <h2>BRING YOUR SCHOOL<br>
                APPLICATION TO LIFE</h2>
            <p>Show your story. Don't tell it.</p>
            <a class="join-kanwo " href="javascript:trackOutboundLink('', 'index_leftSignUp');">Sign up. It's free.</a>
            <div class="watch-video text-center">
                <a href="javascript:;" class="md-trigger video-container" data-modal="cusGuide">
                    <img style="visibility: hidden;" src="/images/studentVideo.jpg" materialsrc="//kw-cdn.kanwokanwo.com/videos/index_student_video.mp4">
                    <i class="glyphicon glyphicon-play-circle"></i><br>Watch the Video</a> </div>
        </div>
        <!--视频-->
        <div class="video-header-box">
            <div class="video-bg"></div>
            <video id="video-student" class="video-student video-js vjs-default-skin" preload="auto" muted="true" autoplay="true" loop="loop" volume="0" poster="images/studentVideo.jpg">
                <source src="//kw-cdn.kanwokanwo.com/videos/index_student_video.mp4" type="video/mp4">
                <source src="movie.webm" type="video/webm">
                Sorry, your browser does not support HTML5 video.
            </video>
        </div>
        <%--<a class="v-btn" href="javascript:void(0);"><i class='glyphicon glyphicon-volume-off'></i></a>--%>
        <!--end视频-->
    </div>
    <%--视屏更换为图片--%>   
     <div class="indexBanner" style="margin-top: 6rem;display: none">
         <img src="/images/indexBanner01.jpg" style="width: 100%" alt="">
     </div>  
    
    
    <div class="further-info text-center">
        <div class="row">
            <div class="clearfix">
                <div class="col-md-12">
                    <h2>Bring Your Story to Life</h2>

                    <p>Everyone has a story. Every story matters.<br>
                        Now every school can see your story.</p>
                    <a href="javascript:;" class="md-trigger video-container" data-modal="cusGuide">
                        <strong>
                            <i class="glyphicon glyphicon-play-circle"></i>
                        </strong>
                        <img src="//kw-cdn.kanwokanwo.com/images/cus_guide_pre.png" materialSrc="//kw-cdn.kanwokanwo.com/videos/cus_guide.mp4">
                        <span></span>
                    </a>
                    <p class="no-leading">Watch how easy it is to build a page.</p>
                </div>
            </div>
        </div>
    </div>

    <section class="info-1 clearfix">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <h4>Now use images, videos, and documents on ANY school application</h4>
                <p class="large-leading subheader">
                    As early as 7th grade, begin capturing your passions and achievements to showcase to high schools and colleges.
                </p>
                <div class="testimonial clearfloat">
                    <div class="photo fl">
                        <img alt="" src="/images/info-1-student.jpg">
                    </div>
                    <div class="quote">
                        <blockquote>KanwoKanwo profile is a great tool for students to personalize their college applications and for us to see the real person behind each application. I'd like to see more applicants use KanwoKanwo to showcase their unique identity and extracurricular accomplishments.</blockquote>
                        <div class="quote-metadata">
                            <span class="name">Stanley D. Nel |  </span><span class="employer">University of San Francisco</span>
                            <span class="title">Vice President for International Relations</span>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-6 col-md-6"><div class="text-center"><img src="/images/info-1-pic.jpg"></div></div>
        </div>
    </section>
    <section class="info-1 info-2 clearfix">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <h4>Add your Kanwokanwo link to any school application</h4>
                <p class="large-leading subheader">
                    It doesn't matter where you are applying, every high school and college can now see your whole story.
                </p>
                <div class="testimonial clearfloat">
                    <div class="photo fl">
                        <img alt="" src="/images/info-2-student.jpg">
                    </div>
                    <div class="quote">
                        <blockquote>Sometimes it's hard to choose the words that accurately express your passions; however, Kanwokanwo allowed me to show, rather than just talk.</blockquote>
                        <div class="quote-metadata">
                            <span class="name">Cindy Chow  | </span><span class="employer">High School Student </span>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-6 col-md-6"><div class="text-center"><img src="/images/info-2-pic.png"></div></div>
        </div>
    </section>
    <section class="index-sign-up clearfix">
        <div class="row">
            <div class="col-lg-8">
                <dl>
                    <dt><h4>Sign Up</h4></dt>
                    <dd><h5>It's free and always will be.</h5></dd>
                </dl>
                <ul>
                    <li><i class="glyphicon glyphicon-camera"></i>Make your application come to life</li>
                    <li><i class="glyphicon glyphicon-thumbs-up"></i>Help admission officers to make a personal connection with you</li>
                    <li><i class="glyphicon glyphicon-eye-open"></i>Give admission officers a much more authentic view of who you are</li>
                </ul>
            </div>
            <div class="col-lg-4">
                <div class="sign-up-form">
                    <input type="text" value="" name="email">
                    <input type="password" value="" name="password" />
                    <input type="text" value="" name="name" />
                    <button value="">Sign up</button>
                </div>
            </div>
        </div>
    </section>
    <div class="student-list text-center">
        <h2>FEATURED STUDENTS</h2>
        <div class="row">
            <div class="clearfix">

                <div class="col-md-2">
                    <dl>
                        <dt><a href="http://www.kanwokanwo.com/shiningzhao" target="_blank"><img src="/images/SHINING.png"></a></dt>
                        <dd style="text-align: left">In the qualification competition, I led the Operation Department.</dd>
                    </dl>
                </div>
                <div class="col-md-2">
                    <dl>
                        <dt><a href="http://www.kanwokanwo.com/xinyuyao" target="_blank"><img src="/images/XINYU.png"></a></dt>
                        <dd style="text-align: left">I hope to grow to be a balanced individual. </dd>
                    </dl>
                </div>
                <div class="col-md-2">
                    <dl class="border-no">
                        <dt><a href="http://www.kanwokanwo.com/xiesixiong" target="_blank"><img src="/images/SIXIONG.png"></a></dt>
                        <dd style="text-align: left">Life is like poker magic. Different cards compose magic tricks.</dd>
                    </dl>
                </div>

                <div class="col-md-2">
                    <dl class="border-no">
                        <dt><a href="/jiayisong" target="_blank"><img src="/images/JIAYI.png"></a></dt>
                        <dd style="text-align: left">I love running, because it keeps me energized.</dd>
                    </dl>
                </div>
                <div class="col-md-2">
                    <dl>
                        <dt><a href="/chengchi" target="_blank"><img src="/images/chengchi.png"></a></dt>
                        <dd style="text-align: left">I love to explore physics using the techniques.</dd>
                    </dl>
                </div>

            </div>
        </div>
        <%--<a class="student-list-btn" href="/testimonials" target="_blank">Read the buzz </a>--%>
    </div>
    <div class="colleges text-center clearfix">
        <%--<h2 class="lead-in">Colleges Committed to Your Story</h2>
        <p class="col-xs-12 col-lg-8 col-md-10 clear-float colleges-tit-top">Any college can view your KANWO page. Here are some leaders that are deeply committed to reviewing each student's unique story.</p>
        <img src="images/usf.jpg"> <img src="images/usf-logo.jpg">
        <p class="col-xs-12 col-lg-6 col-md-10 clear-float colleges-tit-middle">I strongly support KanwoKanwo. The great insights colleges can gain from KanwoKanwo profiles allow us to get a better understanding of each applicant and make better admission decisions.</p>
        <p class="col-xs-12 col-lg-8 col-md-10 clear-float colleges-tit-bottom">Stanley D. Nel | <strong>Vice President for International Relations</strong></p>--%>
        <div class="colleges-column text-center col-lg-12 col-xs-12 relative-position">
            <img src="images/colleges-big-pic.jpg" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/universityofsanfrancisco.mp4">
            <div class="colleges-content col-lg-12 col-xs-12">
                <h3>SCHOOLS COMMITTED TO YOUR STORY</h3>
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
        <img src="images/usf-logo.jpg">
        <div class="shool-list clearfix text-center">
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list1.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list2.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list3.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list4.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list5.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list6.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list7.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list8.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list9.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list10.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list11.png"></div>
            <div class="col-lg-2 col-xs-6"><img src="images/shool-list12.png"></div>
        </div>
        <a class="colleges-btns" href="/admission/profile/schoolList?country=OTHER" target="_blank">See all schools</a></div>
    <%--<section class="interview clearfix">--%>
    <%--<div class="row">--%>
    <%--<h2 class="text-center">OUR INTERVIEWS HELP YOU STAND OUT</h2>--%>
    <%--<ul class="col-lg-6 col-xs-12">--%>
    <%--<li><em></em><strong>Be ready to have a face to face interview with our real counselors!</strong></li>--%>
    <%--<li><em></em><strong>Questions are chosen randomly from our test banks! So please prepare yourselves to the fullest!</strong> </li>--%>
    <%--<li><em></em><strong>Our interviews are recorded and sent to admission offices directly in a finest format via the quickest channel!</strong></li>--%>
    <%--<li><em></em> <strong>All your dream schools and desired institutions will receive your interview video!</strong> </li>--%>
    <%--<li><em></em><strong>We are flexible with on and offline interviews!</strong></li>--%>
    <%--</ul>--%>
    <%--<div class="col-lg-6 col-xs-12">--%>
    <%--<div class="text-center"> <a href="javascript:;" class="md-trigger text-center video-container" data-modal="cusGuide"> <strong> <i class="glyphicon glyphicon-play-circle"></i> </strong> <img width="383" height="210" src="//img-cdn.kanwokanwo.com/interview/zhaoningduo_interview_img.png" materialsrc="//kw-cdn.kanwokanwo.com/interview/zhaoningduo_interview.mp4"> <span></span> </a></div>--%>
    <%--</div>--%>
    <%--<div class="col-lg-12 col-xs-12">--%>
    <%--<p class="text-center interview-p-title">How It Works</p>--%>
    <%--</div>--%>
    <%--<div class="col-lg-4 col-xs-12">--%>
    <%--<dl class="text-center">--%>
    <%--<dt>We Interview You</dt>--%>
    <%--<dd class="interview-text">We connect you with a highly qualified interviewer wherever you are.</dd>--%>
    <%--<dd class="interview-text-icon"><em></em></dd>--%>
    <%--</dl>--%>
    <%--</div>--%>
    <%--<div class="col-lg-4 col-xs-12">--%>
    <%--<dl class="text-center">--%>
    <%--<dt>We Videotape Your Interview</dt>--%>
    <%--<dd class="interview-text">Your video is uploaded to our proprietary and secure platform.</dd>--%>
    <%--<dd class="interview-text-icon"><em class="em2"></em></dd>--%>
    <%--</dl>--%>
    <%--</div>--%>
    <%--<div class="col-lg-4 col-xs-12">--%>
    <%--<dl class="text-center">--%>
    <%--<dt>You Get Noticed</dt>--%>
    <%--<dd class="interview-text">Your online interview helps you get noticed as a top candidate.</dd>--%>
    <%--<dd class="interview-text-icon"><em class="em3"></em></dd>--%>
    <%--</dl>--%>
    <%--</div>--%>
    <%--<!--第三方面试按钮-->--%>
    <%--<div class="col-lg-12 col-xs-12">--%>
    <%--<p class="text-center interview-p-title">More Information</p>--%>
    <%--</div>--%>
    <%--<div class="index-interview-btn text-center clearfix">--%>
    <%--<div class="col-lg-6 col-xs-12"><a href="/statics/interview/applicant.jsp" target="_blank">For applicants</a></div>--%>
    <%--<div class="col-lg-6 col-xs-12"><a class="index-interview-btnB" href="/statics/interview/officer.jsp" target="_blank">For admission officers</a></div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</section>--%>
    <%--<div style="width: 30px;height: 30px;background-color:yellow;position: fixed;bottom: 100px;right: 100px">固定按钮</div>--%>


    <%--<div id="bg" style="background-color:#000;position:absolute;z-index:9999;left:0;top:0;display:none;width:100%;height:100%;opacity:0.5;filter: alpha(opacity=50);-moz-opacity: 0.5;"></div>--%>
    <%--<div class="big" style="position:fixed;top:0;display: none; z-index:10000">--%>
        <%--<i class="closeBtn" style="font-style: normal;display: block;width: 25px;height: 25px;cursor: pointer;background:url(images/icon_close.png) no-repeat center; position: absolute;right: 5px;top: 5px; z-index: 1000;font-size: 18px;"></i>--%>
        <%--<img class="bigImg" src="images/kwBigIcon.jpg" style="margin-top: 10px" />--%>
    <%--</div>--%>
    <%--<img class="small showbtn" src="images/kwIcon.jpg" style="position: fixed;right: 10px;cursor: pointer;" />--%>

</div>
<%--专题弹窗--%>
<div class="special">
    <c:choose>
        <c:when test="${sessionScope.loginUser == null}">
            <a href="#" onclick="javascript: loginAlert();" ><img src="images/duanqin.jpg" width="1200"></a>
            <i class="close"></i>
        </c:when>
        <c:otherwise>
            <a href="/specialization/baolei" target="_blank"><img src="images/duanqin.jpg" width="1200" ></a>
            <i class="close"></i>
        </c:otherwise>
    </c:choose>

</div>
<div class="login-before">
    <a class="login-before-close-btn" href="javascript:closeAlert();"><i class="glyphicon glyphicon-remove"></i></a>
    <p>您还未登录，请在登录之后再预约导师服务哦！~</p>
    <a class="login-btn md-trigger" data-modal="modal-12" href="javascript:trackOutboundLink('', 'index_login');">登录</a>
</div>
<input type="hidden" value="${sessionScope.loginUser.email}" id="loginEmail">
<%@include file="/WEB-INF/views/common/bottom.jsp"%>
<script src="js/video.js"></script>
<script type="text/javascript" src="/js/index.js?version=20160428"></script>
<script type="text/javascript" src="/js/video-popup.js?201605121953"></script>
<script>
    //specialOpen();
    //window.onload = function page_cg() { setTimeout("specialOpen()", 100); }
    $(function(){
        //关闭
        $('.close').click(function() {
            $('.special').hide();
        });
    });

    function specialOpen(){
        $(".special").css('display','block');

    }
    function loginAlert(){
        $(".special").css('display','none');
        $(".login-before").css('display','block');
    }
    function closeAlert(){
        $(".login-before").css('display','none');
        location.reload();
    }

   /* 2017-5-9变为手机端时将视屏改为图片*/
        var windowW=$(window).width();
        if (windowW<=768){
            $(".index-header").css('display','none');
            $(".indexBanner").css('display','block');
        }


    //宣传栏弹窗效果
//    $(function() {
//        $(window).load(function() {
//            var iconH=$('.showbtn').height();
//            $('.showbtn').css({
//                top: '50%',
//                marginTop:-iconH/2+'px'
//            });
//            var clintH = $(window).height();
//            var clintW = $(window).width();
//            var bigImgH=$('.bigImg').css('height',clintH-20);
//            var bigImgW=parseInt($('.big').css('width'))/2;
//            $('.big').css({
//                left: '50%',
//                marginLeft:-bigImgW+'px'
//            });
//            $('.small').on('click', function() {
//                $('.big').toggle();
//            })
//        });
//
//        $(".showbtn").click(function() {
//            $("#bg").css({
//                display: "block",
//                height: $(document).height()
//            });
//        });
        //点击关闭按钮的时候，遮罩层关闭
//        $(".closeBtn").click(function() {
//            $("#bg,.big").css("display", "none");
//        });
//        $('#bg').click(function() {
//            $("#bg,.big").css("display", "none");
//        })
//    })
</script>
</body>
</html>
