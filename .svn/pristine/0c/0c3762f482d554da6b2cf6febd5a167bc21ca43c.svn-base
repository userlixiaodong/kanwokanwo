<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
    <div class="main-wrapper clearfix">
        <!--=====================================left============================================-->
        <aside class="sidebar-container col-lg-3 col-md-3 col-xs-12">
            <div class="row biography">

            </div>
            <div class="row examRecord">

            </div>
                <div class="row">
                    <c:if test="${not empty referId}">
                        <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.role == 'AD_REP' && studentProfile.studentProfileId != sessionScope.loginUser.studentProfileId}">
                            <a class="add-impression" href="/msg/chat/${referId}/1">Get in touch</a>
                        </c:if>
                    </c:if>
                    <div class="col-xs-12">
                        <h3 class="lead-in">SHOUTOUTS</h3>
                    </div>
                    <ul class="friend-impression-list col-xs-12">
                    </ul>
                    <a class="add-impression md-trigger" data-modal="modal-addImpression" href="javascript:void(0);">Add Shoutouts</a>
                </div>
        </aside>
        <!--=====================================right============================================-->
        <div class="content-container col-lg-9 col-md-9 col-xs-12">
            <div class="my-story-container">
                <%--新增模块--%>
                <div class="row">
                    <div class="user-edit-interview-model hide bg-gray clearfix">
                        <div class="col-lg-7 col-xs-12">
                            <dl class="user-edit-interview-modelOne">
                                <dt>KANWOKANWO INTERVIEW</dt>
                                <%--<dd>Click the button, View the students interview video (need password).</dd>
                                <dd><a class="user-edit-interview-model-btn1" href="" target="_blank">Interview & Writing Sample</a></dd>--%>
                                <label>Please enter your password to unlock interview videos and writing samples.</label>
                                <input type="text" value="" name="">
                                <button>OK</button>
                            </dl>
                        </div>
                        <div class="col-lg-5 col-xs-12 text-center">
                            <dl class="user-edit-interview-modelTwo">
                                <dt> View Demo</dt>
                                <dd><a href="javascript:;" class="md-trigger text-center video-container" data-modal="cusGuide"><img width="285" height="163" src="//img-cdn.kanwokanwo.com/interview/zhaoningduo_interview_img2.png" materialsrc="//kw-cdn.kanwokanwo.com/interview/zhaoningduo_interview.mp4"></a></dd>
                                <dd class="w285 text-left">Learn more:</dd>
                                <dd class="w285 w285-1 text-left"><p>
                                    <a class="user-show-interview-model-btn" href="/statics/interview/applicant.jsp" target="_blank">For applicants</a>
                                    <a class="user-show-interview-model-btn user-show-interview-model-btn1" href="/statics/interview/officer.jsp" target="_blank">For schools</a>
                                </p></dd>
                            </dl>
                        </div>
                    </div>
                </div>
                    <%--获取密码之后可观看相关信息--%>
                    <div class="row interview-tab-big hide clearfix">
                        <div class="col-xs-12">
                            <h2>KANWOKANWO INTERVIEW</h2>
                            <div class="interview-tab">
                                <ul class="interview-tab-menu">
                                    <li class="selected">Interview</li>
                                    <li>Writing Sample</li>
                                </ul>
                                <div class="interview-tab-box materialList" >
                                    <div class="edit-hover">
                                    <div class="video-container">
                                        <img src="" materialsrc="" class="tab-box-img"/>
                                        <i class="glyphicon glyphicon-play-circle"></i>
                                        <div class="masking"></div>
                                    </div>
                                    </div>
                                    <div class="hide">
                                        <a class="zoom" href=""><img src="" class="tab-box-img"/></a></div>
                                </div>
                            </div>
                         </div>
                     </div>
                <%--end新增模块--%>
                <c:if test="${not empty videoJson}">
                <div class="row">
                    <div class="clearfix">
                        <section class="col-xs-12">
                            <h1>MY VIDEO</h1>
                            <div class="media-item flex-video myVideoMedia text-center">
                            </div>
                        </section>
                    </div>
                </div>
                </c:if>
                <div class="row">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h1>MY STORY</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <%--<div class="clearfix">
                            <div class="col-xs-12">
                                <h6><i class="glyphicon glyphicon-star"></i><em>This is where you give others a glimpse of
                                    your family, friends and community. Help them learn about your background.</em></h6>
                            </div>
                        </div>--%>
                        <div class="bg-gray">
                            <div class="clearfix myStoryMedia media-item">

                            </div>
                        </div>
                    </div>
                </div>
                <c:if test="${not empty honorJson.materials || not empty honorJson.description}">
                <div class="row">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h1>HONORS</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <%--<div class="clearfix">
                            <div class="col-xs-12">
                                <h6><i class="glyphicon glyphicon-star"></i><em>List your honors, show your specialties to
                                    the wanted.</em></h6>
                            </div>
                        </div>--%>
                        <div class="bg-gray">
                            <div class="clearfix honorMedia media-item">
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
                <div class="row">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h1>MY ACTIVITIES</h1>
                        </div>
                    </div>
                    <div id="actList">
                    </div>
                </div>
                <c:if test="${not empty portfolioJson.materials}">
                <div class="row">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h1>MY PORTFOLIO</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <%--<div class="clearfix">
                            <div class="col-xs-12">
                                <h6><i class="glyphicon glyphicon-star"></i><em>Remember to mention your talents, hobbies
                                    and works. Prove your self to others.</em></h6>
                            </div>
                        </div>--%>
                        <div class="bg-gray bg-no">
                            <div class="clearfix portfolioMedia media-item">
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
            </div>
        </div>
    </div>
    <div class="md-effect-1 reveal-modal add-friend-impression" id="modal-addImpression">
        <div class="md-content">
            <h4 class="lead-in">Please describe the impression of "${studentProfile.biography.name}" :</h4>
            <input type="text" value="" oninput="limitWordsCounts($(this))" id="impression" >
            <div class="add-friend-impression-tips clearfix">
                <em class="fl">Your name and description will be seen by everyone</em>
                <span class="fr">150</span>
            </div>
            <input type="submit" id="submitImpressionBtn" value="Submit" id="" class="reveal-button">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
<script src="/js/video-popup.js?20160512"></script>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>
<script src="/js/video.js?201603229"></script>
<script src="/js/modernizr.custom.js"></script>
<script src="/js/backbone-min.js"></script>
<script src="/js/backbone.marionette.min.js"></script>
<script src="/js/mn_test/viewProfile.js?20160516"></script>
<script src="/js/jquery-rebox.js?201603229"></script>

<%--描述、材料Layout模板--%>
<script type="text/template" id="description-material-layout-template">
    <div class="description"></div>
    <div class="materialList"></div>
    <div class='less-more-button col-lg-12 col-xs-12' style="display: none">more</div>
</script>

<%--描述模板--%>
<script type="text/template" id="description-template">
    <@if(typeof description == 'undefined'){}else if(description == ''){@><div class="col-lg-8 col-xs-12 disabled "><div class="r-line"><a class="add-description modalLink text-center"><i class="glyphicon glyphicon-align-left"></i><strong>Good guy</strong></a></div></div><@}else{@><div class="col-lg-8 col-xs-12 disabled"><div class="media-item-description"><p><@=description@></p></div></div><@}@>
</script>

<%--Material模板--%>
<script type="text/template" id="material-template">
    <@if(type == 'IMG'){@>
        <div class="edit-hover"> <a class="zoom" title="<@=title@>" href="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src"><img src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src"></a>
        </div>
    <@}else if(type == 'VIDEO'){@>
    <div class="edit-hover">
        <div class="video-img video-container">
            <@if(status == 'NORMAL'){@>
            <img materialSrc="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" src="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src">
            <@}else if(status == 'TRANSCODE'){@>
            <img src="/images/transcoding_324.324.jpg"/>
            <@}@>
            <i class="glyphicon glyphicon-play-circle"></i>
            <div class="masking"></div>
        </div>
    </div>
    <@}else if(type == 'DOC'){@>
        <div class="edit-hover"><a href="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" target="_blank" class="edit-document-item text-center"><i class="glyphicon glyphicon-list-alt"></i>
            <p class="edit-document-item-title"><@=title@></p>
            <small>Document</small>
        </a></div>
    <@}@>
</script>

<%--activityTag模板--%>
<script type="text/template" id="activityTagList_template">
    <ul class="activity-item">
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
    </ul>
</script>

<script type="text/template" id="activityLayout_template">
    <div class="activityDetail clearfix"></div>
    <div class="columns-info">
        <div class="bg-gray bg-no">
            <div class="activityDescriptionMaterial clearfix media-item"></div>
            </div>
        </div>
    </div>
</script>

<script type="text/template" id="activityDetail_template">
    <section>
        <div class="clearfix">
            <div class="col-xs-12">
                <header>
                    <div class="activity-title">
                        <h3><@=title@></h3>
                        <div class="activity-age">
                            <@if(startDate){@><@=startDate@> — <@}@><@if(!endDate){@>Now<@}else{@><@=endDate@><@}@>
                        </div>
                    </div>
                    <ul class="activity-item clearfix">
                        <@ for(var i = 0;i < activityTagList.length;i++){ @>
                        <li class="col-lg-2 col-xs-4"><p><@= App.activityTags[parseInt(activityTagList[i].title)]@></p></li>
                        <@ } @>
                    </ul>
                </header>
            </div>
        </div>
    </section>
</script>

<%--MyVideo 模板--%>
<script type="text/template" id="myVideo-template">
    <@if(status == 'NORMAL'){@>
    <video class="video-js vjs-default-skin" controls preload="none" poster="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>" data-setup="{}">
        <source src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" type='video/mp4'/>
    </video>
    <@}else if(status == 'TRANSCODE'){@>
    <img src="/images/transcoding.png"/>
    <@}@>
</script>

<%--biography 模板--%>
<script type="text/template" id="biography-template">
    <div class="clearfix">
        <div class="col-xs-12 text-center">
            <@if(avatar){@><img width="200" height="200" src="<@=avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src">
            <@}else{@><img width="200" height="200" src="/images/defaultavatar.jpg"><@}@>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <h2><@=name@></h2>
    </div>
    <ul class="col-xs-12 icon-list">
        <li>
            <i class="glyphicon glyphicon-map-marker"></i>
            <p><span>
                <@if(location){@><@=location@><@}else{@>N/A<@}@>
            </span></p>
        </li>
        <li>
            <i class="glyphicon glyphicon-bed"></i>
            <p>
                <@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@>
            </p>
        </li>
        <li>
            <i class="glyphicon glyphicon-education"></i>
            <p><span>
            <@if(graduation){@><@=graduation@><@}else{@>N/A<@}@>
            </span></p>
        </li>
        <li>
            <i class="glyphicon glyphicon-tower"></i>
            <p><span>
            <@if(hobby){@><@=hobby@><@}else{@>N/A<@}@>
            </span></p>
        </li>
        <li id="examRecord">
        </li>
    </ul>
</script>

<%--examRecord 模板--%>
<script type="text/template" id="examRecord-layout-template">
    <i class="glyphicon glyphicon-tags"></i>
    <a class="md-trigger" data-modal="modal-examRecord" href="javascript:void(0);">
        <p id="examRecordSummary">
        </p>
    </a>
    <div class="md-effect-1 reveal-modal add-score" id="modal-examRecord">
        <div class="md-content">
            <h4 class="lead-in">SCORE</h4>
            <!--<label>Your score is the most worthy of reference</label>-->
            <div id="examRecordDetail">
            </div>
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="examRecordSummarySimpleView-template">
    <@if(items.length>0){
    _.each(items, function(item){ @>
        <div><@=item.examType@>：<@=parseFloat(item.total).toFixed(0)@></div>
    <@ })
    }else{@>
    N/A
    <@}@>
</script>

<script type="text/template" id="examRecordDetailSimpleView-template">
    <@ _.each(items, function(item){ @>
    <div class="add-score-content">
        <p> <select disabled>
            <option value=""><@=item.examType@></option>
        </select></p>
        <div class="score-list">
            <dl><dt>total</dt><dd><input type="text" value="<@=item.total@>" disabled></dd></dl>
            <@ _.each(item.examItemList, function(row){ @>
            <dl><dt><@=row.title@></dt><dd><input type="text" value="<@=row.score@>" disabled></dd></dl>
            <@ })@>
        </div>
    </div>
    <@ })@>
</script>

<script type="text/template" id="remarkList_template">
    <@ _.each(remarkMap, function(remark,title,index){ @>
    <li><@=title@>（<@=remark.length@>）
        <div class="tips text-center">
            <div class="clearfix" style=" width: 282px;">
                <div class="randomColor" style="width: auto;float: left">
                <@ _.each(remark, function(item,index){ @>
                <dl>
                    <dt><a href="/<@=item.fromPublicUri@>" target="_blank"><img src="<@=item.fromAvatar == '' ?'/images/defaultavatar.jpg':item.fromAvatar@>"></a></dt>
                    <dd><a href="/<@=item.fromPublicUri@>" target="_blank"><@=item.fromPublicUri@></a></dd>
                </dl>
                <@ }) @>
            </div>
        </div>
    </li>
    <@ }) @>
</script>

<script type="text/javascript">
    $(function () {
        /*学生采访新增模块*/
        var $tab_li = $('.interview-tab ul li');
        $tab_li.hover(function(){
            $(this).addClass('selected').siblings().removeClass('selected');
            var index = $tab_li.index(this);
            $('div.interview-tab-box > div').eq(index).show().siblings().hide();
        });

//        var modules = [];//"myStory", "honor", "portfolio"
        var jsonResult = {"myStory":${storyJson}, "honor":${honorJson}, "portfolio":${portfolioJson}};
        var contentViews = [];
        //判断不显示为空的内容
        $.each(jsonResult, function(index, item){
            if(!item.description =="" || !item.materials.length == 0){
                contentViews[index] = new App.DescriptionMaterialSimpleView({model: new App.Content(item), el: "." + index + "Media"});
                contentViews[index].render();
            }
        });

        var interviewJson = ${interviewJson};
        if(interviewJson){
            $(".user-edit-interview-model").removeClass("hide");
            $(".user-edit-interview-modelOne button").on("click",function(){
                var url=window.location.pathname.split("/")[1];
                $.ajax({
                    url: "/interview/check",
                    data: {
                        publicUrl: url,
                        password: $(".user-edit-interview-modelOne input").val()
                    },
                    type: "get",
                    dataType: 'json',
                    success: function (data) {
                        if(data.status==1){
                            var result = JSON.parse(data.data);

                            if(result.video){
                                $(".interview-tab-box img")[0].src = result.video.videoPreviewImg.replace('http', 'https')
                                $($(".interview-tab-box img")[0]).attr("materialSrc", result.video.materialSrc.replace('http', 'https'))
                            }
                            if(result.image) {
                                $(".interview-tab-box img")[1].src = result.image.materialSrc.replace('http', 'https');
                                $(".interview-tab-box a").attr("href", result.image.materialSrc.replace('http', 'https'));
                            }

                            $(".interview-tab-big").removeClass("hide");
                            $(".user-edit-interview-model").addClass("hide");
                        }
                        else{
                            alert(data.message);
                        }
                    }
            });
            });
        }
        var myVideoJson =${videoJson};
        new App.MyVideoModuleSimpleView({model: new App.Material(myVideoJson), el: ".myVideoMedia"}).render();
        var biography = ${biographyJson};
        new App.BiographyModuleSimpleView({model: new App.Biography(biography), el: ".biography"}).render();
        var examJson =${recordsJson};
        var examList = new App.ExamRecordList(examJson);
        new App.ExamRecordModuleSimpleView({collection: examList}).render();
        var remarkJson = ${remarkJson};
        var remarkDict = new App.RemarkDict({remarkList: remarkJson});
        new App.RemarkListView({model: remarkDict, el: ".friend-impression-list"}).render();
        $("#submitImpressionBtn").on("click", function () {
            remarkDict.saveRmark();
        });
        var activitiesJsonResult = ${activityListJson};
        var activityList = new App.ActivityList(activitiesJsonResult);
        var activityModuleView = new App.ActivityModuleView({collection: activityList});
        activityModuleView.render();

        currentUserStudentProfileId = "${sessionScope.loginUser.studentProfileId}"
        targetStudentProfileId = "${studentProfile.studentProfileId}"

        $('.materialList').rebox({selector: '.zoom'});
//        $.get("/interview/lcq", function(result){
//            console.log(result);
//        });
    });
</script>
</html>


