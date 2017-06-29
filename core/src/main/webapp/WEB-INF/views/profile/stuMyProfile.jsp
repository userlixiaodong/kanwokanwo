<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kanwokanwo: Helping students get seen by schools. </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
</head>
<body>

<%@include file="/WEB-INF/views/common/topNew.jsp" %>
<script type="text/javascript" src="http://test.static.kanwokanwo.com/stuMyProfile-bundle.js"></script>

<div class="main-wrapper clearfix">
    <!--=====================================left============================================-->
    <aside class="sidebar-container col-lg-3 col-md-3 col-xs-12">
        <div class="row biography">

        </div>
        <div class="row">
            <div class="col-xs-12 text-center">
                <!--<a class="add-impression" href="">Resume/CV</a>-->

                <p class="inspiration-line">Need Inspiration?</p>
                <a href="/tanghaidan" target="_blank"> <img alt="Vidya golla desktop" class="inspiration-image" src="images/inspiration-image.png"> </a></div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <h3 class="lead-in">SHOUTOUTS</h3>
                <ul class="friend-impression-list clearfix">
                </ul>

            </div>
        </div>
    </aside>
    <!--=====================================right============================================-->
    <div class="content-container col-lg-9 col-md-9 col-xs-12">
        <div class="my-story-container">
            <div class="row">
                <div class="progress-section clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h3>YOUR PAGE</h3>

                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="${degree}" aria-valuemin="0" aria-valuemax="100" style="width: ${degree}%;"><span class="sr-only">${degree}% Complete</span></div>
                        </div>
                        <p class="progress-description">${degree}% complete</p>

                        <h3>BADGES</h3>
                        <ul class="add-badges">
                            <li><a module="avatar"><img src="/images/avatar.png" title="Add Profile Photo" alt="ADD PROFILE PHOTO"></a></li>
                            <li><a module="biography"><img src="/images/info.png" title="TELL US ABOUT YOU" alt="TELL US ABOUT YOU"></a></li>
                            <li><a module="score"><img src="/images/66.png" title="ADD YOUR SCORES" alt="ADD YOUR SCORES"></a></li>
                            <li><a module="introductionVideo"><img src="/images/video.png" title="MEET ME VIDEO" alt="MEET ME VIDEO"></a></li>
                            <li><a module="mystory"><img src="/images/mystory.png" title="BUILD YOUR STORY" alt="BUILD YOUR STORY"></a></li>
                            <li><a module="honor"><img src="/images/33.png" title="BUILD YOUR HONOR" alt="BUILD YOUR HONOR"></a></li>
                            <li><a module="activity"><img src="/images/activity.png" title="ADD AN ACTIVITY" alt="ADD AN ACTIVITY"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="user-edit-interview-model bg-gray clearfix">
                    <div class="col-lg-7 col-xs-12">
                        <dl class="user-edit-interview-modelOne">
                            <dt>KANWOKANWO INTERVIEW</dt>
                            <dd>A fast, comprehensive, and intuitive way for them to show admissions officers who you truly are.</dd>
                            <dd><a class="user-edit-interview-model-btn1" href="/statics/interview/applicant.jsp" target="_blank">Learn more</a><a class="user-edit-interview-model-btn2" href="https://jinshuju.net/f/fZDcSo" target="_blank">Reserve interview</a></dd>
                        </dl>
                    </div>
                    <div class="col-lg-5 col-xs-12 text-center">
                        <dl class="user-edit-interview-modelTwo">
                            <dt>View Demo</dt>
                            <dd><a href="javascript:;" class="md-trigger text-center video-container" data-modal="cusGuide"><img width="285" height="163" src="//img-cdn.kanwokanwo.com/interview/zhaoningduo_interview_img2.png" materialsrc="//kw-cdn.kanwokanwo.com/interview/zhaoningduo_interview.mp4" ></a></dd>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>MEET ME VIDEO
                            <div class="edit-my-video-info fr">
                                <a class="edit-my-video-info-btn"><i class="glyphicon glyphicon-option-vertical my-video-tips"></i></a>

                                <div class="edit-my-video-info-content">
                                    <button class="md-trigger" data-modal="modal-myVideo">Replace</button>
                                    <button class="md-trigger" id="delMyVideoBtn">Delete</button>
                                    <button class="md-trigger" data-modal="modal-suggestions">Suggestions</button>
                                </div>
                            </div>
                        </h1>
                    </div>
                </div>

                <section class="col-lg-12 col-xs-12 my-video-section relative-position">
                    <div class="media-item flex-video width100" data-module="myVideo">
                        <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" poster="" data-setup="{}">
                            <source src="" type="video/mp4"/>
                        </video>
                    </div>
                    <div class="add-my-video bg-gray" data-module="myVideo2">
                    </div>
                </section>

            </div>

            <div class="row">
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>MY STORY</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h6><i class="glyphicon glyphicon-star"></i><em>This is where you give others a glimpse of
                                your family, friends and community. Help them learn about your background.</em></h6>
                        </div>
                    </div>
                    <div class="bg-gray">
                        <div class="clearfix mystoryMedia media-item relative-position" data-module="MYSTORY">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>HONORS</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h6><i class="glyphicon glyphicon-star"></i><em>List your honors, show your specialties to
                                the wanted.</em></h6>
                        </div>
                    </div>
                    <div class="bg-gray">
                        <div class="clearfix honorMedia media-item relative-position" data-module="HONOR">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>MY ACTIVITIES</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6><i class="glyphicon glyphicon-star"></i><em>Showcase your activities, passions and
                                accomplishments here. Search for others with the same interests.</em></h6>
                        </div>
                    </div>
                </div>
                <div id="actList" class="columns-info">

                </div>
            </div>
            <div class="row">
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>MY PORTFOLIO</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h6><i class="glyphicon glyphicon-star"></i><em>Remember to mention your talents, hobbies
                                and works. Prove your self to others.</em></h6>
                        </div>
                    </div>
                    <div class="bg-gray bg-no">
                        <div class="clearfix portfolioMedia media-item relative-position" data-module="PORTFOLIO">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="md-effect-1 reveal-modal add-score" id="modal-score">
    <div class="md-content">
        <h4 class="lead-in">YOUR SCORE</h4>
        <label>Your score is the most worthy of reference</label>

        <div class="scrollbar">

        </div>
        <div class="text-center mt20">
            <a href="javascript:addScore();"><i class="glyphicon glyphicon-plus-sign"></i></a>
        </div>
        <div class="text-center add-score-save"><input type="submit" value="Save" class="reveal-button2"></div>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal file-upload" id="modal-myVideo">
    <div class="md-content">
        <h4 class="lead-in">NEW VIDEO</h4>

        <div class="text-center">
            <div class="file-upload-btn">
                <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
                <input type="file" value="" id="myVideo" name="file" accept=".mp4,.mov,.mkv,.flv,.3gp,.wmv,.asf,.webm,.mpg,.avi">
            </div>
        </div>
        <br/>
        <input type="submit" value="Save" id="myVideoSave" class="reveal-button">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal suggestions-my-video" id="modal-suggestions">
    <div class="md-content">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal file-upload" id="modal-avatar">
    <div class="md-content">
        <h4 class="lead-in">YOUR PROFILE PHOTO</h4>

        <div class="text-center">
            <div class="file-upload-btn">
                <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
                <input type="file" id="avatarId" name="file" accept=".jpg,.jpeg,.png,.gif">
            </div>
        </div>
        <input type="submit" value="Save" class="reveal-button">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>

<div class="md-effect-1 reveal-modal" id="badge-alert-msg">
    <div class="md-content">
        <h4 class="lead-in">PHENOMENAL</h4>
        <label class="text-center" id="badge-msg"></label>
        <div class="user-img text-center"> <img src="" id="badge-alert-img"/></div>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<%@include file="/webpack/entry/templates/stuMyProfile_template.jsp" %>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>

<script type="text/javascript">
    $(function () {
        //勋章
        var badges = '${jsonBadges}';
        badgesJson = JSON.parse(badges);
        badgeView = new App.BadgeView({model:badgesJson});
        badgeView.render();

        App.vent.on("badge:add",function(args){
            badgeView.addBadge(args);
        });
        App.vent.on("badge:remove",function(args){
            badgeView.removeBadge(args);
        });

        var jsonResult = {"mystory":${storyJson}, "honor":${honorJson}, "portfolio":${portfolioJson}};
        var contentViews = [];
        //判断不显示为空的内容
        $.each(jsonResult, function(index, item){
            contentViews[index] = new App.DescriptionMaterialEditView({model: new App.Content(item), el: "." + index + "Media", module: index});
            contentViews[index].render();
        });

        videoJsonStr = '${videoJson}';
        videoJson = JSON.parse(videoJsonStr);
        recordsJson = '${recordsJson}';
        var biography = ${biographyJson};
        new App.BiographyModuleEditView({model: new App.Biography(biography), el: ".biography"}).render();

        var activitiesJsonResult = ${activityListJson};
        var activityList = new App.ActivityEditList(activitiesJsonResult);
        var activityModuleView = new App.ActivityModuleEditView({collection: activityList});
        activityModuleView.render();
    });
</script>
<script src="/js/introductionVideoProc.js?version=201605051540"></script>
<script src="/js/myVideo.js"></script>
<script src="/js/score.js"></script>

</html>


