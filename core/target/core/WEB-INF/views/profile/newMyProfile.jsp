<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <link href="/style/public.css" rel="stylesheet" type="text/css">
    <link href="/style/frame.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>
    <link href="/style/student.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/style/jquery.ui.datepicker.css"/>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>

<section class="container-fluid">
    <div class="row">
        <div class="col-lg-9 main-content"  >
            <ul class="col-lg-12 col-xs-12 col-md-12 col-sm-12 navbar_is">
                <li class="col-lg-6 col-xs-6 col-md-6 col-sm-6 information_btn tab-show cursor-pointer" id="student_btn">
                    <a href="javascript:;" id="information_word">MY PAGE</a>
                </li>
                <li class="col-lg-6 col-xs-6 col-md-6 col-sm-6 student_btn tab-hide cursor-pointer" id="information_btn">
                    <a href="javascript:;" id="student_word">SCHOOL NEWS</a>
                </li>
            </ul>
            <div class="col-lg-4 student-photo md-trigger cursor-pointer" id="myAvatarParent" data-modal="modal-avatar">
                <c:if test="${not empty studentProfile.biography.avatar}">
                    <img class="photo-before" id="avatarSrc" src="${studentProfile.biography.avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_480h_460w_100q.src"/>
                    <img class="photo-after" id="avatarSrc" src="${studentProfile.biography.avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_480h_460w_100q.src"/>
                </c:if>
                <c:if test="${empty studentProfile.biography.avatar}">
                    <img class="photo-before" id="avatarSrc" src="/images/defaultavatar.jpg"/>
                    <img class="photo-after" id="avatarSrc" src="/images/defaultavatar.jpg"/>
                </c:if>
            </div>
            <div class="col-lg-8  information biography">

            </div>
            <ul class="button-tag">
                <li class="who-ami tab-hide cursor-pointer" data-id="myEditVideo">
                    <a>
                        <i class="glyphicon glyphicon-facetime-video"></i>
                        WHO AM I
                    </a>
                </li>
                <li class="my-story tab-hide cursor-pointer" data-id="myStory">
                    <a>
                        <i class="glyphicon glyphicon-book"></i>
                        MY STORY
                    </a>
                </li>
                <li class="honor-s tab-hide cursor-pointer" data-id="honors">
                    <a>
                        <i class="glyphicon glyphicon-bookmark"></i>
                        HONORS
                    </a>
                </li>
                <li class="my-activities tab-hide cursor-pointer" data-id="activities">
                    <a>
                        <i class="glyphicon glyphicon-tint"></i>
                        MY ACTIVITIES
                    </a>
                </li>
                <li class="my-portfolio tab-hide cursor-pointer" data-id="myPortfolio">
                    <a>
                        <i class="glyphicon glyphicon-star"></i>
                        MY PORTFOLIO
                    </a>
                </li>
            </ul>
            <ul class="button-tag2">
                <li>
                    <a href="/partners" target="_blank"><i class="glyphicon glyphicon-plus"></i>Follow More Schools</a>
                </li>
                <li>
                    <a href="javascript:;" data-modal="modal-wechat" class="md-trigger"><i class="glyphicon glyphicon-share"></i>Get WeChat Notification</a>
                </li>
            </ul>
            <div class="student-page col-lg-12" id="studentPage">
                <div class="content-container">
        <div class="my-story-container">
            <div class="row clearfix" id="myEditVideo">
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

            <div class="row clearfix" id='myStory'>
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>MY STORY</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h6 title="This is where you give others a glimpse of your family, friends and community. Help them learn about your background.">
                                <i class="glyphicon glyphicon-star"></i><em>This is where you give others a glimpse of
                                your family, friends and community. Help them learn about your background.</em></h6>
                        </div>
                    </div>
                    <div class="bg-gray">
                        <div class="clearfix mystoryMedia media-item relative-position" data-module="MYSTORY">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row" id="honors">
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>HONORS</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h6 title="List your honors, show your specialties to the wanted.">
                                <i class="glyphicon glyphicon-star"></i><em>List your honors, show your specialties to
                                the wanted.</em></h6>
                        </div>
                    </div>
                    <div class="bg-gray">
                        <div class="clearfix honorMedia media-item relative-position" data-module="HONOR">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" id="activities">
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>MY ACTIVITIES</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6 title="Showcase your activities, passions and accomplishments here. Search for others with the same interests.">
                                <i class="glyphicon glyphicon-star"></i><em>Showcase your activities, passions and
                                accomplishments here. Search for others with the same interests.</em></h6>
                        </div>
                    </div>
                </div>
                <div id="actList" class="columns-info">

                </div>
            </div>
            <div class="row" id="myPortfolio">
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>MY PORTFOLIO</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h6 title="Remember to mention your talents, hobbies and works. Prove yourself to others."><i class="glyphicon glyphicon-star"></i><em>Remember to mention your talents, hobbies
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
            <div class="information-page col-lg-12" id="informationPage">
                <ul class="information_record" id="informationList">

                </ul>
                <div class="pages" id="divPage"></div>
            </div>
        </div>
        <div class="col-lg-3 right-sidebar">
            <div class="mylink" >
                <h3>MY LINK</h3>
                <p>Share your link with students.</p>
                <input type="text" id="newMyLink" name="link" readonly="readonly" Value="http://www.kanwokanwo.com/${sessionScope.loginUser.publicUri}">
                <a href="/${requestScope.studentProfile.publicUri}?flag=preview" target="_blank">Preview</a>
            </div>
            <div class="badges">
                <h3>BADGES</h3>
                <ul class="badges-list add-badges">
                    <li><a module="avatar"><img src="/images/avatar.png" title="Add Profile Photo" alt="ADD PROFILE PHOTO"></a></li>
                    <li><a module="biography"><img src="/images/info.png" title="TELL US ABOUT YOU" alt="TELL US ABOUT YOU"></a></li>
                    <li><a module="score"><img src="/images/66.png" title="ADD YOUR SCORES" alt="ADD YOUR SCORES"></a></li>
                    <li><a module="introductionVideo"><img src="/images/video.png" title="MEET ME VIDEO" alt="MEET ME VIDEO"></a></li>
                    <li><a module="mystory"><img src="/images/mystory.png" title="BUILD YOUR STORY" alt="BUILD YOUR STORY"></a></li>
                    <li><a module="honor"><img src="/images/33.png" title="BUILD YOUR HONOR" alt="BUILD YOUR HONOR"></a></li>
                    <li><a module="activity"><img src="/images/activity.png" title="ADD AN ACTIVITY" alt="ADD AN ACTIVITY"></a></li>
                </ul>
            </div>
            <div class="kanwo-interview">
                <h3>KANWOKANWO INTERVIEW</h3>
                <p>A fast, comprehensive, and intuitive way for them to show admissions officers who you truly are.</p>
                <div class="my-video video-container"><img materialsrc="//kw-cdn.kanwokanwo.com/interview/zhaoningduo_interview.mp4" src="//img-cdn.kanwokanwo.com/interview/zhaoningduo_interview_img2.png"></div>
                <a class="learn-more" target="_blank" href="/statics/interview/applicant.jsp">Learn more</a>
                <a class="reserve-interview" target="_blank" href="https://jinshuju.net/f/fZDcSo">Reserve interview</a>
            </div>
            <div class="inspiration">
                <h3>NEED INSPIRATION?</h3>
                <a href="/tanghaidan" target="_blank"><img src="/images/inspiration-image.png"></a>
            </div>
        </div>
    </div>
    <%--<div class="container-fluid container-fluid-2" >--%>
        <%--<div class="row">--%>
            <%--<div class="col-lg-9 content-2">--%>
                <%--<div class="mentor  col-lg-12">--%>
                    <%--<h2 class="mentor-t">MENTOR</h2>--%>
                    <%--<h4>导师介绍</h4>--%>
                    <%--<textarea></textarea>--%>
                    <%--<h4 class="guidance-title">指导历史</h4>--%>
                    <%--<ul class="guidance">--%>
                        <%--<li class="guidance-tip">--%>
                            <%--<p class="guidance-content">指导内容</p>--%>
                            <%--<time class="guidance-time">时间</time>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a>--%>
                                <%--<p>学校新闻系中，最好的...</p>--%>
                                <%--<time>2016/09/22</time>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a>--%>
                                <%--<p>学校新闻系中学校新闻系中学校新闻系中学校新闻系中，最好的...</p>--%>
                                <%--<time>2016/09/22</time>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a>--%>
                                <%--<p>学校新闻系中，最好的...</p>--%>
                                <%--<time>2016/09/22</time>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a>--%>
                                <%--<p>学校新闻系中，最好的...</p>--%>
                                <%--<time>2016/09/22</time>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                    <%--<nav>--%>
                        <%--<ul class="pagination">--%>
                            <%--<li><a href="#">&laquo;</a></li>--%>
                            <%--<li><a href="#">1</a></li>--%>
                            <%--<li><a href="#">2</a></li>--%>
                            <%--<li><a href="#">3</a></li>--%>
                            <%--<li><a href="#">4</a></li>--%>
                            <%--<li><a href="#">5</a></li>--%>
                            <%--<li><a href="#">&raquo;</a></li>--%>
                        <%--</ul>--%>
                    <%--</nav>--%>
                <%--</div>--%>
                <%--<div class="comment">--%>
                    <%--<h2 class="comment-t">COMMENT</h2>--%>
                    <%--<ul class="comment-list">--%>
                        <%--<li>--%>
                            <%--<a>--%>
                                <%--<span><img src="/images/neko.jpg" width="100"></span>--%>
                                <%--<b>木子子</b>--%>
                            <%--</a>--%>
                            <%--<div class="comment-content">--%>
                            <%--<p class="comment-student">聊的非常愉快，受益匪浅。导师学识渊博，经历丰富，人也很nice。非常感谢！</p>--%>
                            <%--<p class="reply-teacher">导师回复：非常感谢你的评价，和你的谈话也是我非常开心，期待下次有机会再聊</p>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                    <%--<nav>--%>
                        <%--<ul class="pagination">--%>
                            <%--<li><a href="#">&laquo;</a></li>--%>
                            <%--<li><a href="#">1</a></li>--%>
                            <%--<li><a href="#">2</a></li>--%>
                            <%--<li><a href="#">3</a></li>--%>
                            <%--<li><a href="#">4</a></li>--%>
                            <%--<li><a href="#">5</a></li>--%>
                            <%--<li><a href="#">&raquo;</a></li>--%>
                        <%--</ul>--%>
                    <%--</nav>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
</section>
<div class="clearfix"></div>
<%-- 弹出框 begin--%>
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
<div id="proSchool" class="provinceSchool">
    <div class="title">
        <span>已选择:</span>
    </div>
    <div class="proSelect">
        <select></select>
        <span>如没找到选择项，请选择其他手动填写</span>
        <input type="text">
    </div>
    <div class="school-search"><span><i class="glyphicon glyphicon-search"></i>&nbsp;&nbsp;搜索</span><input id="schoolSearch" type="text" ></div>
    <div class="schoolList">
        <ul>
        </ul>
    </div>
    <div class="button">
        <button flag='0'>取消</button>
        <button flag='1'>确定</button>
    </div>
</div>
<div class="md-effect-1 reveal-modal add-score" id="modal-wechat" style="text-align: center;">
    <div class="md-content">
        <div class="md-typeface">
            <p>①扫描下方二维码关注公众号</p>
            <p>②点击微信菜单栏“学校通知”->”绑定账号”，按步骤完成账号绑定</p>
            <p>③绑定成功后可第一时间获得已关注院校的信息更新提醒</p>
        </div>
        <div>
            <img src="/images/kanwoxaoyuanwx.jpg" width="300" height="300">
        </div>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<%-- 弹出框 end --%>

<%-- new template begin --%>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script type="text/template" id="biographyEdit-template">
    <h2 class="student-name modifyBiography cursor-pointer"><@=name@></h2>
    <ul class="information-list cursor-pointer">
        <li class="location modifyBiography md-trigger">
            <i class="glyphicon glyphicon-map-marker"></i>
            <a>HOMETOWN:　<strong><@if(location){@><@=location@><@}else{@>N/A<@}@></strong></a>
        </li>
        <li class="school-name modifyBiography md-trigger">
            <i class="glyphicon glyphicon-bed"></i>
            <a>SCHOOL:　<strong><@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@></strong></a>
        </li>
        <li class="year modifyBiography md-trigger">
            <i class="glyphicon glyphicon-education"></i>
            <a>GRADUATION YEAR:　<strong><@if(graduation){@><@=graduation@><@}else{@>N/A<@}@></strong></a>
        </li>
        <li class="hobby modifyBiography md-trigger">
            <i class="glyphicon glyphicon-tower"></i>
            <a>INTENDED MAJOR :　<strong><@if(hobby){@><@=hobby@><@}else{@>N/A<@}@></strong></a>
        </li>
        <li class="score md-trigger" data-modal="modal-score">
            <i class="glyphicon glyphicon-tags"></i>
            <a id="scores">

            </a>
        </li>
    </ul>
    <div></div>
</script>

<%--MeetMe视频部分模板--%>
<script type="text/template" id="video_template">
    <%--<@if(status == 'NORMAL'){ @>--%>
    <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" poster="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>" data-setup="{}">
        <source src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" type='video/mp4'/>
    </video>
    <%--<@}@>--%>
    <%--<@if(status == 'TRANSCODE'){ @>--%>
    <%--<img class="trans" src="/images/transcoding.jpg"/>--%>
    <%--<@}@>--%>
</script>
<script type="text/template" id="add_video_template">
    <div class="clearfix">
        <div class="col-xs-7">
            <div class="add-video-description">
                <h5>Tips for your video:</h5>
                <p>Videos help you stand out from the crowd.</p>
                <p>Use your phone to record it. Be yourself.</p>
                <p>Share what you are passionate about.</p>
                <p class="p-b-blue"><a href="https://kanwo.daikeapp.com/kb/articles/1475" target="_blank">Still stumped? Check this out.</a></p>
                <div class="text-center"> <a class="md-trigger add-video-btn" data-modal="modal-myVideo" href="javascript:void(0);">Add
                    a video</a></div></div>
        </div>
        <div class="col-xs-5 text-center">
            <div class="video-inspiration">
                <h5>Need some inspiration?</h5>
                <a class="inspireVideo video-container">
                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/introVideoExample.jpg@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/videos/introVideoExample.mp4"></a>
                <a class="inspireVideo video-container">
                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/MeetMeDefaultImg.jpg@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/videos/MeetMe.mp4"></a>
            </div>
        </div>
    </div>
</script>

<%--描述、材料Layout模板--%>
<script type="text/template" id="description-material-edit-layout-template">
    <div class="modal-dialog"></div>
    <div class="description"></div>
    <div class="materialList"></div>
    <div class="upload">
        <div class="col-lg-4 col-xs-6 disabled">
            <div class="r-upload md-trigger">
                <a class="<%--md-trigger--%> add-upload modalLink text-center">
                    <i class="glyphicon glyphicon-cloud-upload"></i><strong>Upload</strong></a>
            </div>
        </div>
    </div>
    <%--<div class='less-more-button col-lg-12 col-xs-12' style="display: none">more</div>--%>
</script>

<%--描述模板--%>
<script type="text/template" id="description-edit-template">
    <@if(typeof description == 'undefined'){}else if(description == ''){@>
    <div class="col-lg-8 col-xs-12 disabled ">
        <div class="r-line">
            <a class="md-trigger add-description modalLink text-center" <%--href="javascript:void(0);" data-module="<@=module@>"--%>>
                <i class="glyphicon glyphicon-align-left"></i><strong>Add Description</strong>
            </a>
        </div>
    </div>
    <@}else{@>
    <div class="col-lg-8 col-xs-12 disabled">
        <div class="media-item-description">
            <div class="md-trigger modalLink" data-modal="modal-1" <%--data-module="<@=module@>" data-type="description"--%>>
                <p><@=description@></p>
            </div>
        </div>
    </div>
    <@}@>
</script>

<%--Material模板--%>
<script type="text/template" id="material-edit-template">
    <@if(type == 'IMG'){@>
    <div class="edit-hover"> <a class="zoom" title="<@=title@>" href="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src"><img src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src"></a>
        <div class="controls clearfix" style="opacity: 0;">
            <div class="fl">
                <a class="controls-move"><i class="glyphicon glyphicon-move"></i></a>
            </div>
            <div class="fr">
                <a class="add-upload controls-deletes" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i></a>
                <a class="md-trigger add-upload controls-edit  openModifyTitle" data-modal="modal-22" href="javascript:void(0);"><i class="glyphicon glyphicon-edit"></i></a>
            </div>
        </div>
    </div>
    <@}else if(type == 'VIDEO'){@>
    <div class="edit-hover">
        <div class="video-img video-container">
            <%--<@if(status == 'NORMAL'){@>--%>
            <img materialSrc="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" src="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src">
            <%--<@}else if(status == 'TRANSCODE'){@>--%>
            <%--<img src="/images/transcoding_324.324.jpg"/>--%>
            <%--<@}@>--%>
            <i class="glyphicon glyphicon-play-circle"></i>
            <div class="masking"></div>
        </div>
        <div class="controls clearfix" style="opacity: 0;">
            <div class="fl">
                <a class="controls-move"><i class="glyphicon glyphicon-move"></i></a>
            </div>
            <div class="fr">
                <a class=" add-upload controls-deletes" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i></a>
                <a class="md-trigger add-upload controls-edit openModifyTitle" data-modal="modal-22" href="javascript:void(0);"><i class="glyphicon glyphicon-edit"></i></a>
            </div>
        </div>
    </div>
    <@}else if(type == 'DOC'){@>
    <div class="edit-hover">
        <a href="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" target="_blank" class="edit-document-item text-center"><i class="glyphicon glyphicon-list-alt"></i>

            <p class="edit-document-item-title"><@=title@></p>
            <small>Document</small>
        </a>

        <div class="controls clearfix" style="opacity: 0;">
            <div class="fl">
                <a class="controls-move"><i class="glyphicon glyphicon-move"></i></a>
            </div>
            <div class="fr">
                <a class=" add-upload controls-deletes" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i></a>
                <a class="md-trigger add-upload controls-edit openModifyTitle" data-modal="modal-22" href="javascript:void(0);"><i class="glyphicon glyphicon-edit"></i></a>
            </div>
        </div>

    </div>
    <@}@>
</script>


<%--activityTag模板--%>
<script type="text/template" id="activityTagList_template">
    <div class="activity-container"></div>
    <div class="clearfix add-activity-mb">
        <div class="col-xs-12 text-center"><a class="md-trigger add-activity" data-modal="modal-21"
                                              href="javascript:void(0);"><i
                class="glyphicon glyphicon-plus-sign"></i><strong>Add Activity</strong></a></div>
    </div>
    <%-- <ul class="activity-item">
         <li class="col-lg-2 col-xs-4 on ">
             <p><@=activityTags[activityTags.length-1]@></p>
             <span>（<@=count[activityTags.length-1]@>）</span>
         </li>
         <@ for(var i = 0;i < activityTags.length-1;i++){ @>
         <li class="col-lg-2 col-xs-4 " <@if(count[i] == 0){@> style="display:none" <@ } @> >
             <p><@=activityTags[i]@></p>
             <span>（<@=count[i]@>）</span>
         </li>
         <@ } @>
     </ul>--%>

</script>

<script type="text/template" id="activityLayout_template">
    <div class="activityDetail clearfix"></div>
    <div class="columns-info relative-position">
        <div class="bg-gray bg-no">
            <div class="activityDescriptionMaterial clearfix media-item" data-module="ACTIVITY"></div>
        </div>
    </div>
    </div>
</script>

<script type="text/template" id="activityDetail_template">
    <section>
        <div class=" clearfix add-activity-tit">
            <div title="<@=title@>" class="col-lg-6 col-xs-12 text-left"><@=title@></div>
            <div class="col-lg-6 col-xs-12 text-right">
                <@if(startDate){@>
                <@=startDate@> —
                <@}@>
                <@if(!endDate){@>
                Now
                <@}else{@>
                <@=endDate@>
                <@}@>
            </div>
        </div>
        <div class="clearfix add-activity-tit-edit">
            <div class="col-xs-1 text-center">
                <a class="up" href="javascript:void(0);"><i class="glyphicon glyphicon-triangle-top"></i></a>
                <a class="down" href="javascript:void(0);"><i class="glyphicon glyphicon-triangle-bottom"></i></a>
            </div>
            <div class="col-xs-10"><a class="md-trigger" data-modal="modal-4" href="javascript:void(0);"><i class="glyphicon glyphicon-edit"></i></a>
                <@ for(var i = 0;i < activityTagList.length;i++){ @>
                <span><@= App.activityTags[parseInt(activityTagList[i].title)]@></span>
                <@ } @>
            </div>
            <div class="col-xs-1"><a href="javascript:void(0);" class="deleteActivity"><i class="glyphicon glyphicon-trash"></i></a></div>

        </div>
    </section>
</script>

<%--各类弹框模板--%>
<script type="text/template" id="editDescription-template">
    <div class="md-effect-1 reveal-modal md-show" id="modal-description">
        <div class="md-content">
            <h4 class="lead-in">DESCRIBE</h4>
            <textarea rows="4" id="descriptionContent" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span></span>
            </div>
            <input type="submit" value="Update" class="reveal-button" id="descriptionSubmit">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="updateFileTitle-template">
    <div class="md-effect-1 reveal-modal md-show" id="modal-update-title">
        <div class="md-content">
            <h4 class="lead-in">DESCRIBE</h4>
            <input type="hidden" id="materialIndex">
            <textarea rows="4" id="materialTitle" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>300</span>
            </div>
            <input type="submit" value="Update" class="reveal-button" id="materialDescriptionSubmit">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="chooseFileType-template">
    <div class="md-effect-1 reveal-modal modalLink md-show" id="modal-img">
        <div class="md-content">
            <h4 class="lead-in">ADD MEDIA</h4>
            <ul class="subview clearfix text-center">
                <li><a class="modalLink" data-modal="IMG" href="javascript:void(0);" data-module=""><i
                        class="glyphicon glyphicon-camera"></i><label>Photo</label></a></li>
                <li><a class="modalLink" data-modal="VIDEO" href="javascript:void(0);" data-module=""><i
                        class="glyphicon glyphicon-facetime-video"></i><label>Video</label></a></li>
                <li class="border-no"><a class="modalLink" data-modal="DOC" href="javascript:void(0);" data-module=""><i
                        class="glyphicon glyphicon-list-alt"></i><label>Document</label></a></li>
            </ul>
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="IMG-template">
    <div class="md-effect-1 reveal-modal file-upload md-show" id="modal-img">
        <div class="md-content">
            <h4 class="lead-in">NEW IMAGE<i class="popupTips">Each image size must not exceed 10MB</i></h4>
            <div id="uploadImgsContainer">
                <div class="file-upload-btn">
                <span>
                    <i class="glyphicon glyphicon-folder-open"></i>
                    <span class="file-select">Choose File</span>
                </span>
                    <input type="file" value="" id="imgFile" name="file" accept=".jpg,.jpeg,.png,.gif" multiple="multiple">
                </div>
            </div>
            <label for="title">IMAGE Title</label>
        <textarea rows="3" id="imgTitle" oninput="limitWordsCounts($(this))"
                  onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>150</span>
            </div>
            <input type="submit" value="Save" class="reveal-button" id="uploadImgSave">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="VIDEO-template">
    <div class="md-effect-1 reveal-modal file-upload md-show" id="modal-video">
        <div class="md-content">
            <h4 class="lead-in">NEW VIDEO<i class="popupTips">Each video size must not exceed 500MB</i></h4>
            <div class="file-upload-btn">
                <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
                <input type="file" value="" name="file" id="videoFile" accept=".mp4,.mov,.mkv,.flv,.3gp,.wmv,.asf,.webm,.mpg,.avi">
            </div>
            <label for="title">VIDEO Title</label>
            <textarea rows="3" id="videoTitle" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>150</span>
            </div>
            <input type="submit" value="Save" class="reveal-button" id="uploadVideoSave">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="DOC-template">
    <div class="md-effect-1 reveal-modal file-upload md-show" id="modal-doc">
        <div class="md-content">
            <h4 class="lead-in">NEW DOCUMENT<i class="popupTips">Each document size must not exceed 20MB</i></h4>
            <div id="uploadDocContainer">
                <div class="file-upload-btn">
                    <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
                    <input type="file" value="" id="docFile" name="file" accept=".docx,.doc.exl,.pdf" multiple="multiple">
                </div>
            </div>
            <label for="title">Document Title</label>
            <textarea rows="3" id="docTitle" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>150</span>
            </div>
            <input type="submit" value="Save" class="reveal-button" id="uploadDocSave">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="editActivity_template">
    <div class="md-effect-1 reveal-modal md-show activity-item-sort" id="">
        <div class="md-content">
            <h4 class="lead-in">Edit Activity</h4>

            <p>Activities are the things that you love doing. Think sports, clubs, hobbies, etc. Bring them to life with images.<strong class="dis-bolck">Tagged to your activities</strong></p>
            <ul class="activity-item-tips clearfix">
                <@ for(var i = 0;i < App.activityTags.length-1;i++){ @>
                <li value="<@=i@>" class="<@ for(var j = 0;j < activityTagList.length;j++){ if(i == parseInt(activityTagList[j].title)){ @> on <@ break;}}@>">
                    <p><@=App.activityTags[i]@></p>
                </li>
                <@ } @>
            </ul>
            <label>Title</label>
            <input type="text" class="title" value="<@=title@>">
            <label>How long have you been doing this?</label>

            <p class="clearfix"><input type="text" value="<@=startDate@>" class="startDate date fl"><input type="text" value="<@=endDate@>" class="endDate date fr"></p>
            <input type="button" value="Save" class="reveal-button modifyActivity">
            <button id="close-modal-4" class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="newActivity_template">
    <div class="md-effect-1 reveal-modal md-show" >
        <div class="md-content">
            <h4 class="lead-in">New Activity</h4>

            <p>Activities are the things that you love doing. Think sports, clubs, hobbies, etc. Bring them to life with images.<strong class="dis-bolck">Tagged to your activities</strong></p>
            <ul class="activity-item-tips clearfix">
                <@ for(var i = 0;i < App.activityTags.length-1;i++){ @>
                <li value="<@=i@>">
                    <p><@=App.activityTags[i]@></p>
                </li>
                <@ } @>
            </ul>
            <label>Title</label>
            <input type="text" class="title">
            <label>How long have you been doing this?</label>

            <p class="clearfix activity-add-time">
                <input type="text" class="startDate date fl">
                <input type="text" class="endDate date fr"></p>
            <input type="button" value="Save" class="reveal-button addActivity">
            <button id="close-modal-4" class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="biographyEditModal_template">
    <div class="md-effect-1 reveal-modal md-show edit-user-info">
        <div class="md-content">
            <h4 class="lead-in">EDIT BIO</h4>
            <label>Name</label>
            <input type="text" value="<@=name@>" id="studentName">

            <div class="clearfix">
                <dl class="fl">
                    <dt><i class="glyphicon glyphicon-map-marker"></i>Location</dt>
                    <dd><input type="text" id="location" value="<@=location@>"></dd>
                </dl>
                <dl class="fr">
                    <dt><i class="glyphicon glyphicon-tower"></i>Major of Interest</dt>
                    <dd><input type="text" id="hobby" value="<@=hobby@>"></dd>
                </dl>
            </div>
            <div class="clearfix">
                <dl class="fl">
                    <dt><i class="glyphicon glyphicon-bed"></i>Current School</dt>
                    <dd><input type="text" id="currentSchool" value="<@=currentSchool@>" autocomplete="off"></dd>
                </dl>
                <dl class="fr">
                    <dt><i class="glyphicon glyphicon-education"></i>Graduation Year</dt>
                    <dd><input type="text" id="graduationYear" value="<@=graduation@>"></dd>
                </dl>
            </div>
            <div id="graduationSchool" class="clearfix">
                <@ for(var i = 0;i < graduationSchoolList.length;i++){ @>
                <div class="clearfix addGraSchool">
                    <div class="education-level">
                        <p>Education level</p>
                        <select name="schoolType" class="schoolType">
                            <option value="High" <@if(graduationSchoolList[i].type=="High"){@>selected="selected"<@}@>>High School</option>
                            <option value="Secondary" <@if(graduationSchoolList[i].type=="Secondary"){@>selected="selected"<@}@>>Secondary School</option>
                            <option value="Middle" <@if(graduationSchoolList[i].type=="Middle"){@>selected="selected"<@}@>>Middle School</option>
                        </select>
                    </div>
                    <dl class="college-category fl">
                        <dt><i class="glyphicon glyphicon-bed"></i></dt>
                        <dd><input type="text" class="graSchool" value="<@=graduationSchoolList[i].name@>" autocomplete="off"></dd>
                    </dl>
                    <dl class="college-category fr">
                        <dt><i class="glyphicon glyphicon-education"></i>Graduation Year</dt>
                        <dd><input type="text" class="graYear date" value="<@=graduationSchoolList[i].graduationYear@>"></dd>
                    </dl>
                    <a class="deleteSchool fr" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i><%--delete School--%></a>
                </div>
                <@ } @>
                <%--<label>Add School</label>--%>
                <a id="addSchool" class="add-school" href="javascript:void(0);">Add School&nbsp;&nbsp;<i class="glyphicon glyphicon-plus"></i></a>
            </div>
            <input type="submit" value="Save" class="reveal-button">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="addSchool_template">
    <div class="clearfix addGraSchool">
        <div class="education-level">
        <p><i class="glyphicon glyphicon-tower"></i>&nbsp;&nbsp;Education level</p>
        <select name="schoolType" class="schoolType">
            <option value="High">High School</option>
            <option value="Secondary">Secondary School</option>
                <option value="Middle">Middle School</option>
            </select>
            </div>
            <dl class="college-category fl">
                <dt><i class="glyphicon glyphicon-bed"></i></dt>
                <dd><input type="text" class="graSchool" value="" autocomplete="off"></dd>
            </dl>
            <dl class="college-category fr">
                <dt><i class="glyphicon glyphicon-education"></i>Graduation Year</dt>
                <dd><input type="text" class="graYear date" value=""></dd>
            </dl>
        <a class="deleteSchool fr" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i><%--delete School--%></a>
    </div>
</script>
<script type="text/template" id="score_template">
    <div class="add-score-content">
        <p>
            <select>
                <option value="">Choose your test:</option>
            </select>
            <a href="javascript:void(0);" class="add-score-sort-delete"><i class="glyphicon glyphicon-trash"></i></a>
        </p>
        <div class="score-list">
        </div>
    </div>
</script>
<!-- TOEFL , IELTS 考试-->
<script type="text/template" id="score_item_template1">
    <dl>
        <dt>total</dt>
        <dd><input type="text" value="" name="total"></dd>
    </dl>
    <dl>
        <dt>Reading</dt>
        <dd><input type="text" value="" name="Reading"></dd>
    </dl>
    <dl>
        <dt>Listening</dt>
        <dd><input type="text" value="" name="Listening"></dd>
    </dl>
    <dl>
        <dt>Speaking</dt>
        <dd><input type="text" value="" name="Speaking"></dd>
    </dl>
    <dl>
        <dt>Writing</dt>
        <dd><input type="text" value="" name="Writing"></dd>
    </dl>
</script>
<!-- GRE , GMAT 考试-->
<script type="text/template" id="score_item_template2">
    <dl>
        <dt>total</dt>
        <dd><input type="text" value="" name="total"></dd>
    </dl>
    <dl>
        <dt>Verbal</dt>
        <dd><input type="text" value="" name="Verbal"></dd>
    </dl>
    <dl>
        <dt>Quantitative</dt>
        <dd><input type="text" value="" name="Quantitative"></dd>
    </dl>
    <dl>
        <dt>Writing</dt>
        <dd><input type="text" value="" name="Writing"></dd>
    </dl>
</script>
<!-- SAT 考试-->
<script type="text/template" id="score_item_template3">
    <dl>
        <dt>total</dt>
        <dd><input type="text" value="" name="total"></dd>
    </dl>
    <dl>
        <dt>Reading</dt>
        <dd><input type="text" value="" name="Reading"></dd>
    </dl>
    <dl>
        <dt>Mathematics</dt>
        <dd><input type="text" value="" name="Mathematics"></dd>
    </dl>
    <dl>
        <dt>Writing</dt>
        <dd><input type="text" value="" name="Writing"></dd>
    </dl>
</script>
<script type="text/template" id="popup-video">
    <div class="md-effect-1 reveal-modal md-show video-show-md" id="modal-popup-video">
        <div class="md-content video-container">
            <div class="flex-video-popup">
                <video class="video-js vjs-default-skin" autoplay="autoplay" id="video-obj" controls preload="none" poster="<@=posterImgSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>" data-setup="{}">
                    <source src="<@=videoSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" type='video/mp4'/>
                </video>
                <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
            </div>
        </div>
    </div>
</script>
<script type="text/template" id="informationItem-template">
    <@ if (informationList.length <= 0) {@>
        <p>You have no news. Please follow more school to receive more news.</p>
    <@ } @>
    <@_.each(informationList, function(information){
    @>
        <li class="clearfix">
            <div class="col-lg-10 col-md-10 col-xs-10 record-con">

                <p>
                    <img src="<@=information.avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_100h_100w_90q.src"/>
                    <a href="<@=information.publicUri@>" class="school-name" target="_blank">
                        <@=information.userName@>
                    </a>
                    </br>
                    <a class="schoolnews-list"><@=information.text@></a>
                </p>
                <time><@=information.createTime@>
                </time>
                 <@ if (information.materials && information.materials.length > 0) {
                    var width = 0;
                    var isClear = false;
                    var imgSubStr = '1e_1c_0o_0l_296h_296w_90q.src';
                    var onlyOne = false;
                    var isOrig = false;
                if (information.materials.length == 4 || information.materials.length == 2) {
                    //width = 48;
                    width = 30;
                    isClear = true;
                } else if (information.materials.length == 1) {
                    var m = information.materials[0]
                    if (m.imgWidth && m.imgHeight && m.imgWidth != m.imgHeight) {
                        if (m.imgWidth > m.imgHeight) {
                            imgSubStr = '1e_0o_0l_500h_500w_100q.src';
                        } else if (m.imgWidth < m.imgHeight) {
                            imgSubStr = '0e_0o_0l_400h_500w_90q.src';
                        }
                    } else {
                        imgSubStr = '1e_0o_0l_500h_500w_100q.src';
                    }
                    width = 100;
                    onlyOne = true;
                    if (m.imgWidth <= 200 && m.imgHeight <= 200) {
                        imgSubStr = '1e_1c_0o_0l_296h_296w_90q.src';
                        width = 30;
                        onlyOne = false;
                    }
                    if (m.imgWidth <= 700 && m.imgHeight <= 400) {
                        isOrig = true;
                    }
                } else {
                    width = 30;
                }@>
                <div class="informationReboxImg clearfix">
                <@_.each(information.materials, function(material, index) {
                @>
                <@ if (index == 2 && isClear) {@><div class="clearfix"></div><@}@>
                <@ if (material.type == 'IMG') {@>
                <a style="width: <@=width@>%;padding-bottom:<@=width@>%; " href="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src">
                    <@ if (isOrig) { @>
                        <img <@if (!onlyOne) {@>style="width:30%;"<@}@> src="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>" />
                    <@ } else { @>
                        <img <@if (!onlyOne) {@>style="width:30%;"<@}@> src="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@<@=imgSubStr@>" />
                    <@ } @>
                </a>
                <@ } else if(material.type == 'VIDEO') {@>
                <a style="width: <@=width@>%;padding-bottom:<@=width@>%;" class="video-container" href="<@=material.videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src" materialSrc="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>">
                    <strong style="top: 7%;">
                        <i class="glyphicon glyphicon-play-circle"></i>
                    </strong>
                        <img <@if (!onlyOne) {@>style="width:30%;"<@}@>  src="<@=material.videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@<@=imgSubStr@>" materialSrc="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>">
                    <span></span>
                </a>
                <@ } @>
                <@  });@> </div><@} @>

            </div>
            <div class="col-lg-2 col-md-2 col-xs-2 msg-delete">
                <a class="message-btn-down" ><i class="glyphicon glyphicon-menu-down"></i></a>
                <div class="message-btn-down-content">
                    <button class="informationItem informationUnfollow" data-userid="<@=information.userId@>">Unfollow</button>
                </div>
            </div>
            <hr>
            <a class="feel-good" href="javascript:;" <@if(information.isFavor=='true'){@> style='color:#1BB38C;' <@}@> data-favor="<@=information.isFavor@>" data-id="<@=information.informationId@>"><em class="glyphicon glyphicon-thumbs-up"></em><span><@=information.favorCount@></span></a>
        </li>
    <@});@>
</script>
<%-- new template end --%>
<script src="/js/video-popup.js?20160512"></script>
<script>

    $(function(){
        App.Information = Backbone.Model.extend();
App.InformationList = Backbone.Collection.extend({Model: App.Information});
App.SchoolInformationListModuleView = Backbone.View.extend({
    dataList: new App.InformationList(),
    informationUrl: '/user/information/school/news/{page}.json',
    el: '#informationList',
    template: _.template($('#informationItem-template').html()),
    toPage: function(pageIndex) {
        var url = this.informationUrl.replace('{page}', pageIndex);
        var that = this;
        $.ajax({
            url: url,
            data: null,
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    that.setListData(data.data.data);
                    that.render();
                    window.pg.page = pageIndex;
                    window.pg.pageCount = data.data.totalPage;
                    window.pg.printHtml('divPage');
                    bindRebox();
                    bindSlideToggle();
                } else {
                    alert(data.message);
                }
            }
        });
    },
    setListData: function(data) {
        this.dataList = new App.InformationList();
        if (data && data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                this.dataList.add(new App.Information(data[i]));
            }
        }
    },
    render: function(){
        var html = this.template({'informationList': this.dataList.toJSON()});
        this.$el.html(html);
    }
});

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

        var informationPage = ${requestScope.informationPage};
        var informationListView = new App.SchoolInformationListModuleView({collection: informationList, el: "#informationList"});
        informationListView.setListData(informationPage.data);
        informationListView.render();

        window.pg = new showPages('pg', 1, '/user/information/school/news/{page}.json');
        pg.pageCount = informationPage.totalPage;
        pg.printHtml("divPage");
        // overrite
        showPages.prototype.toPage = function(pageIndex){
            informationListView.toPage(pageIndex);
        }
        bindRebox();
        bindSlideToggle();

        $('body').delegate('.informationUnfollow', 'click', function(){
            var item = $(this);
            var userId = item.attr('data-userid');
            $.ajax({
                url: '/user/unfollow',
                type: 'POST',
                data: {'ownerId': userId},
                dataType: 'json',
                success: function(data) {
                    if (data.status == 1) {
                        informationListView.toPage(1);
                    } else {
                        alert(data.message);
                    }
                }
            })
        });

        $('.media-item').rebox({selector: '.zoom'});
        //页面拖动效果，description和upload设置class disable/*[draggable=true]*/
        $('.sortable').sortable({handle:'.controls-move'}).bind('sortupdate', function(e,data) {
            var module = $(this).closest('.media-item').attr("data-module");
            if(!module){
                module="ACTIVITY"
            }
            var activityId = $(this).closest('div[activityId]').attr("activityId");
            $.ajax({
                type: "POST",
                url: '/material/location',
                data: {module:module,beg:data.beg,end:data.end,activityId:activityId},
                dataType: 'json',
                success: function(data) {
                }
            });

        });
        //文件选择显示文件名
        $("body").on("change",":file",function(){
            var filename = $(this).val();
            if($.trim(filename) == ""){
                filename = "Choose File";
            }
            $(this).closest(".file-upload-btn").find(".file-select").last().html(filename);
        });
        $('#information_btn').click(function(){

            $('.button-tag2').show();
            $('.button-tag').hide();
            $('#information_btn').addClass('tab-show');
            $('#information_btn').removeClass('tab-hide');

            $('#student_btn').removeClass('tab-show');
            $('#student_btn').addClass('tab-hide');

            $('#informationPage').show();
            $('#studentPage').hide();
        });
        $('#student_btn').click(function(){
            $('.button-tag2').hide();
            $('.button-tag').show();

            $('#information_btn').removeClass('tab-show');
            $('#information_btn').addClass('tab-hide');

            $('#student_btn').addClass('tab-show');
            $('#student_btn').removeClass('tab-hide');

            $('#informationPage').hide();
            $('#studentPage').show();
        });

        $('#informationPage').delegate('.feel-good', 'click', function() {
            var item = $(this);
            var isFavor = item.attr('data-favor');
            var favorCount = parseInt(item.find('span').html());
            var informationId = item.attr('data-id');
            var url = '';
            if (isFavor == 'true') {
                url = '/user/information/unfavor';
            } else {
                url = '/user/information/favor';
            }
            $.ajax({
                type: 'POST',
                url: url,
                data: {'informationId': informationId},
                dataType: 'json',
                success: function (data) {
                    if (data.status == 1) {
                        if (isFavor == 'true') {
                            item.removeAttr('style');
                            item.attr('data-favor', 'false');
                            --favorCount;
                        } else {
                            item.css('color', '#1BB38C');
                            item.attr('data-favor', 'true');
                            ++favorCount;
                        }
                        item.find('span').html(favorCount);
                    } else {
                        alert(data.message);
                    }
                }
            });
        });
        $('#newMyLink').click(function(){
            $('#newMyLink').select();
        });
    });
</script>
<script src="/js/video.js"></script>
<script src="/js/jquery.scrollTo.js"></script>
<script src="/js/modernizr.custom.js"></script>
<script src="/js/jquery.ajaxfileupload.js"></script>
<script src="/js/xss.js"></script>
<script src="/js/backbone-min.js"></script>
<script src="/js/backbone.marionette.min.js"></script>
<script src="/js/mn_test/viewProfile.js?20160516"></script>
<script src="/js/jquery-ui.min.js"></script>
<script src="/js/jquery.sortable.js"></script>
<script src="/js/mn_test/myProfile.js?20160527"></script>
<script src="/js/jquery-rebox.js"></script>
<script src="/js/introductionVideoProc.js?version=2016050511"></script>
<script src="/js/myVideo.js"></script>
<script src="/js/score.js"></script>
<%--<script src="/js/select_school.js"></script>--%>
<script src="/js/splitpageNew.js"></script>
<script src="/js/newStudent.js"></script>
</body>
</html>