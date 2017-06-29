<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>WHAT STUDENTS ARE SAYING | Kanwokanwo</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="email=no">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
<link rel="stylesheet" type="text/css" href="/style/student-say.css?20160317"/>
<link rel="stylesheet" type="text/css" href="/style/video-js.css?20160317"/>
<script src="/js/video.js"></script>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="testimonials">
  <div class="testimonials-header clearfix">
    <div class="row">
      <div class="col-md-12 text-center">
        <h2 class="no-leading">What students are saying</h2>
      </div>
    </div>
  </div>
  <div class="testimonials-video clearfix">
    <div class="row">
      <div class="col-md-12 text-center">
        <a href="javascript:void(0);" class="md-trigger" data-modal="testimonials">
          <div class="stu-say-video-img text-center">
            <img src="/images/t-v.jpg">
            <em><i class="glyphicon glyphicon-play-circle"></i></em>
            <span class="tit">See why Jingjing loves Kanwokanwo</span>
          </div>
        </a>
      </div>
    </div>
    <!-- 弹窗 -->

      <div class="md-effect-1 reveal-modal video-show-md"  id="testimonials">
          <div class="md-content video-container">
              <div class="flex-video-popup">
                  <video class="video-js vjs-default-skin" id="video-obj" controls preload="none"  poster="/images/t-v.jpg" data-setup="{}">
                      <source src="//kw-cdn.kanwokanwo.com/videos/testimonials.mp4" type='video/mp4'/>
                  </video>
                  <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
              </div>
          </div>
      </div>
  </div>
  <div class="testimonials-student-list clearfix">
    <div class="row">
      <div class="col-md-4 col-lg-4 text-center">
        <div class="testimony"> <img alt="" class="portfolio" src="/images/t1.jpg"> <img alt="" class="avatar" src="/images/ts1.jpg">
          <p>"Kanwokanwo is perfect for my major and for showing off to potential employers! It definitely shows off my craft in a very dynamic and simple way that everyone can enjoy.          "</p>
          <div class="meta"><strong>Wenlu  |</strong> <em>Harbin</em></div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 text-center">
        <div class="testimony"> <img alt="" class="portfolio" src="/images/t2.jpg"> <img alt="" class="avatar" src="/images/ts2.jpg">
          <p>&quot;Last night I got accepted into NYU stern. I felt that it was necessary to notify you because Kanwokanwo was such a huge, and well needed, boost for my application!&quot;</p>
          <div class="meta"><strong>Jiayi  |</strong> <em>Beijing</em></div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 text-center">
        <div class="testimony"> <img alt="" class="portfolio" src="/images/t3.jpg"> <img alt="" class="avatar" src="/images/ts3.jpg">
          <p>&quot;I like the concept of integrating social media with the college application process. Kanwokanwo reminds me of a Facebook page that you would want a college admissions counselor to see.&quot;</p>
          <div class="meta"><strong>Liyuan |</strong> Nanchang<em></em></div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 text-center">
        <div class="testimony"> <img alt="" class="portfolio" src="/images/t4.jpg"> <img alt="" class="avatar" src="/images/ts4.jpg">
          <p>&quot;I like that it encourages you to be casual and open with the world; it doesn't feel like I have to try to be anything. Instead, I get to just show who I am.&quot;</p>
          <div class="meta"><strong>Dane  |</strong> <em></em>CO</div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 text-center">
        <div class="testimony"> <img alt="" class="portfolio" src="/images/t5.jpg"> <img alt="" class="avatar" src="/images/ts5.jpg">
          <p>&quot;I love Kanwokanwo. I think this is a brilliant way to show the applicants' abilities, characteristics and many other aspects they cannot see just from the application forms.&quot;</p>
          <div class="meta"><strong>Lara  |</strong> <em>Shanghai</em></div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 text-center">
        <div class="testimony"> <img alt="" class="portfolio" src="/images/t6.jpg"> <img alt="" class="avatar" src="/images/ts6.jpg">
          <p>&quot;What I like about Kanwokanwo is that you get to give information about your interests and activities. You also get to upload photos!&quot;</p>
          <div class="meta"><strong>David  |</strong> <em>WA</em></div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 text-center">
        <div class="testimony"> <img alt="" class="portfolio" src="/images/t7.jpg"> <img alt="" class="avatar" src="/images/ts7.jpg">
          <p>&quot;Excellent way of sharing who I am with the world! I am super excited and more than ready to enter into the universe of college. Thank you!&quot; </p>
          <div class="meta"><strong>Kara |</strong> <em>NJ</em></div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 text-center">
        <div class="testimony"> <img alt="" class="portfolio" src="/images/t8.jpg"> <img alt="" class="avatar" src="/images/ts8.jpg">
          <p>&quot;Everything is explained very well, so I am having no trouble at all getting started!&quot;</p>
          <div class="meta"><strong>Kun |</strong> <em>Chongqing</em></div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 text-center">
        <div class="testimony"> <img alt="" class="portfolio" src="/images/t9.jpg"> <img alt="" class="avatar" src="/images/ts9.jpg">
          <p>&quot;So far the website has been easy to use and even easier to show who I am.&quot;</p>
          <div class="meta"><strong>Wei  | </strong>IL<em></em></div>
        </div>
      </div>
    </div>
  </div>
</div>
<%@include file="/WEB-INF/views/common/bottom.jsp"%>
<script type="text/javascript">
    $("body").delegate(".flex-video-popup .md-close","click",function(e){
        var video = videojs("video-obj");
        video.pause();
        $(".popup_video_div").hide();
////          $("#video-obj").removeClass("vjs-has-started");
    });
</script>
</body>
</html>
