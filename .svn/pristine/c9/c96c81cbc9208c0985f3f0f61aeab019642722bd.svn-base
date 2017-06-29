<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>${sessionScope.loginUser.userName} | kanwokanwo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <link rel="stylesheet" type="text/css" href="/style/public.css?version=201603224"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?version=20160422"/>
    <link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?version=20160322"/>
    <link rel="stylesheet" type="text/css" href="/style/jquery.ui.datepicker.css"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?version=20160322"/>
</head>
<body>
<!--=====================================top============================================-->
<%@include file="/WEB-INF/views/common/top.jsp" %>
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
                            <li><a module="introductionVideo"><img src="/images/video.png" title="MEET ME VIDEO" alt="MEET ME VIDEO"></a></li>
                            <li><a module="myschool"><img src="/images/mystory.png" title="BUILD YOUR STORY" alt="BUILD YOUR STORY"></a></li>
                            <li><a module="activity"><img src="/images/activity.png" title="ADD AN ACTIVITY" alt="ADD AN ACTIVITY"></a></li>
                        </ul>
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
                    </div>
                    <div class="add-my-video bg-gray" data-module="myVideo2">
                    </div>
                </section>

            </div>
            <div class="row">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>MY SCHOOL</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Not every student can make it to campus. This is the perfect place to showcase your community and student-life. Give the students a brief description of your school and use photos and videos to bring it to life.</em>
                            </h6>
                        </div>
                    </div>
                    <div class="bg-gray">
                        <div class="clearfix myschoolMedia media-item relative-position" data-module="MYSCHOOL">

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
        </div>
    </div>
</div>
<!--弹出层-->
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
<div class="md-effect-1 reveal-modal edit-user-info" id="modal-6">
    <div class="md-content">
        <h4 class="lead-in">EDIT BIO</h4>
        <form onsubmit="return checkBiography();" action="/updateBiography">
            <label>Name</label>
            <input type="text" value="${admissionProfile.biography.name}" id="admissionName">
            <div class="clearfix">
                <dl class="fl"><dt><i class="glyphicon glyphicon-education"></i>College</dt>
                    <dd><input type="text" id="college" value="${admissionProfile.biography.currentSchool}"></dd></dl>
                <dl class="fr"><dt><i class="glyphicon glyphicon-map-marker"></i>Location</dt>
                    <dd><input type="text" id="location" value="${admissionProfile.biography.location}"></dd></dl>
            </div>
            <div class="clearfix">
                <dl class="fl"><dt><i class="glyphicon glyphicon-user"></i>Job Title/Role</dt>
                    <dd><input type="text" id="position" value="${admissionProfile.biography.position}"></dd></dl>
                <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Website</dt>
                    <dd><input type="text" id="webSite" value="${admissionProfile.biography.webSite}"></dd></dl>
            </div>
            <input type="button" id="updateBioBtn" value="Save" class="reveal-button2">
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal" id="modal-addMyLinks">
    <div class="md-content">
        <h4 class="lead-in">EDIT CONTACT METHODS</h4>
        <p>Paste your handle for Twitter, FB, and Instagram, not the full url.</p>
        <form>
            <label>Contact Email (can be different from KANWOKANWO login)</label>
            <input type="text" value='<c:out value="${admissionProfile.myLinks.linkEmail}" default=""></c:out>' id="linkEmail">
            <label>Twitter</label>
            <input type="text" value='<c:out value="${admissionProfile.myLinks.linkTwitter}" default=""></c:out>' id="linkTwitter">
            <label>Facebook</label>
            <input type="text" value='<c:out value="${admissionProfile.myLinks.linkFacebook}" default=""></c:out>' id="linkFacebook">
            <label>Instagram</label>
            <input type="text" value='<c:out value="${admissionProfile.myLinks.linkInstagram}" default=""></c:out>' id="linkInstagram">
        </form><br/>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        <input type="button" id="updateBioBtn" value="Save" class="reveal-button2">
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
<!--=====================================bottom============================================-->
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script src="/js/video.js"></script>
<script src="/js/jquery.scrollTo.js"></script>
<script src="/js/modernizr.custom.js"></script>
<script src="/js/jquery.ajaxfileupload.js"></script>
<script src="/js/xss.js"></script>
<script src="/js/jquery-rebox.js?version=20160322"></script>
<script src="/js/backbone-min.js"></script>
<script src="/js/backbone.marionette.min.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<script src="/js/jquery.sortable.js"></script>
<script src="/js/video-popup.js?version=20160512"></script>

<%@ include file="/WEB-INF/tmpl/admission/edit.tmplNew.jsp" %>
<script>
</script>
<script type="text/javascript">
    $(function () {
        //勋章
        var badges = '${jsonBadges}';
        badgesJson = JSON.parse(badges);
        badgeView = new App.BadgeView({model: badgesJson});
        badgeView.render();

        App.vent.on("badge:add", function (args) {
            badgeView.addBadge(args);
        });
        App.vent.on("badge:remove", function (args) {
            badgeView.removeBadge(args);
        });

        var profileData = ${requestScope.profileJson};

        new App.DescriptionMaterialEditView({model: new App.AdmissionEdit(profileData.mySchool), el: ".myschoolMedia", module: "myschool"}).render();

        videoJson = profileData.introductionVideo;
        var biography = profileData.biography;
        new App.AdmissionBiographyModuleEditView({model: new App.Biography(biography), el: ".biography"}).render();

        var activitiesJsonResult = ${requestScope.activityListJson};
        var activityList = new App.AdmissionActivityEditList(activitiesJsonResult);
        var activityModuleView = new App.AdmissionActivityModuleEditView({collection: activityList});
        activityModuleView.render();

        $('.media-item').rebox({selector: '.zoom'});
        //页面拖动效果，description和upload设置class disable/*[draggable=true]*/
        $('.sortable').sortable({handle: '.controls-move'}).bind('sortupdate', function (e, data) {
            var module = $(this).closest('.media-item').attr("data-module");
            if (!module) {
                module = "ACTIVITY"
            }
            var activityId = $(this).closest('div[activityId]').attr("activityId");
            $.ajax({
                type: "POST",
                url: '/material/location',
                data: {module: module, beg: data.beg, end: data.end, activityId: activityId},
                dataType: 'json',
                success: function (data) {
                }
            });

        });
        //文件选择显示文件名
        $("body").on("change", ":file", function () {
            var filename = $(this).val();
            if ($.trim(filename) == "") {
                filename = "Choose File";
            }
            $(this).closest(".file-upload-btn").find(".file-select").last().html(filename);
        });
    });
</script>
<script type="text/javascript" src="/js/mn_test/viewProfile.js"></script>
<script type="text/javascript" src="/js/mn_test/myProfile.js?version=201605121633"></script>
<script type="text/javascript" src="/js/mn_test/schoolMyProfile.js"></script>
<script type="text/javascript" src="/js/admission_exclude_activityNew.js?version=201605051540"></script>

</body>
</html>