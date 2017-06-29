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
    <style type="text/css">

.new-items{background:#1bb38c;margin-top:30px;}
.new-items h4{font-family:Microsoft YaHei;font-size:28px;color:#FFF;line-height:1.4;letter-spacing:2px;width:62px;margin:48px auto 0;text-align:center;}
@media (max-width: 768px){.new-items{margin-top:0px;}.new-items h4{margin:14px auto;font-size:18px;width:auto;}}
.new-items h4 em{color:#000;}
.new-items dl{width:100%;background:#31353e;height:260px;margin:0;}
.new-items dt{color:#1bb38c;font-size:18px;padding:10px 0;}
.new-items dd p{width:80%;margin:0 auto;color:#fff;text-indent:2em;height:152px;}
.new-items dd a{display:inline-block;padding:8px 20px;background:#1bb38c;color:#fff;margin:10px auto 0;}
@media (max-width: 768px){.new-items dl{height:auto;padding-bottom:20px;}
.new-items dd p{height:auto;}}
.activity-item li span{color:#fff;}
</style>

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
            <%--div class="row">
                <div class="col-xs-12">
                    <h3 class="lead-in">SHOUTOUTS</h3>
                </div>
                <ul class="friend-impression-list col-xs-12">
                </ul>
                <a class="add-impression md-trigger" data-modal="modal-addImpression" href="javascript:void(0);">Add Shoutouts</a>
            </div>--%>
        </aside>
        <!--=====================================right============================================-->
        <div class="content-container col-lg-9 col-md-9 col-xs-12">
            <div class="my-story-container">
                <c:if test="${requestScope.admissionProfile.publicUri == 'universityofsanfrancisco'}">
                    <div class="new-items clearfix">
  <div class="col-lg-2 col-xs-12">
    <h4>最新招生<em>特色项目</em></h4>
  </div>
  <div class="col-lg-5 col-xs-12">
    <dl class="text-center">
      <dt>高考项目</dt>
      <dd class="text-left">
        <p>凡在即将来临的6月份高考中成绩优秀的中国学生，即可凭高考成绩申请2016年秋季入读旧金山大学。通过该项目申请旧金山大学的学生仅需提供高考成绩并参加与旧金山大学工作人员的一对一面试，除此之外无需任何其他申请材料和考试成绩。</p>
      </dd>
      <dd><a href="//www.kanwokanwo.com/usf-gaokao" target="_blank">查看详情</a></dd>
    </dl>
  </div>
  <div class="col-lg-5 col-xs-12">
    <dl class="text-center">
      <dt>金融硕士研究生预科班</dt>
      <dd class="text-left">
        <p>很多年来，大批工程，物理，数学以及类似专业的优秀理科生，因为没有经济专业，财会专业，金融专业的基础而被拒之门外。 因此，我们专门为这些优秀的学生在中国安排了一项硕士研究生基础课程，使他们可以顺利地进入旧金山大学金融研究生院，参加金融分析硕士研究生课程的学习。</p>
      </dd>
      <dd><a href="//www.kanwokanwo.com/usf-cufe" target="_blank">查看详情</a></dd>
    </dl>
  </div>
</div>

                </c:if>

                <c:if test="${not empty requestScope.admissionProfile.introductionVideo}">
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
                            <h1>MY SCHOOL</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <div class="bg-gray">
                            <div class="clearfix myschoolMedia media-item">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row hide">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h1>MY ASSOCIATION</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <div class="bg-gray">
                            <div class="clearfix myassociationMedia media-item">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row hide">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h1>MY CURRICULUM</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <div class="bg-gray">
                            <div class="clearfix mycurriculumMedia media-item">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row hide">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h1>MY FACULTY</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <div class="bg-gray">
                            <div class="clearfix myfacultyMedia media-item">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row hide">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h1>MY HONOR</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <div class="bg-gray">
                            <div class="clearfix myhonorMedia media-item">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row hide">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h1>OURSTUDENT</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <div class="bg-gray">
                            <div class="clearfix myourstudentMedia media-item">

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
                    <div id="actList">
                    </div>
                </div>
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
    <c:if test="${requestScope.isShowConnect}">
        <div class="md-effect-1 reveal-modal add-friend-impression" id="modal-connect">
            <div class="md-content">
                <h4 class="lead-in">CONNECT</h4>
                <c:if test="${not empty requestScope.admissionProfile.myLinks.linkEmail}">
                    <label>Email me: <a href="mailto:${requestScope.admissionProfile.myLinks.linkEmail}">${requestScope.admissionProfile.myLinks.linkEmail}</a></label>
                </c:if>
                <label>Connect with me on social:</label>
                <div class="icon_lists">
                    <c:if test="${not empty requestScope.admissionProfile.myLinks.linkTwitter}">
                        <a href="https://twitter.com/${requestScope.admissionProfile.myLinks.linkTwitter}">
                            <i class="icon iconfont icon-twitter"></i>
                            @${requestScope.admissionProfile.myLinks.linkTwitter}
                        </a><br/>
                    </c:if>
                    <c:if test="${not empty requestScope.admissionProfile.myLinks.linkFacebook}">
                        <a href="https://www.facebook.com/${requestScope.admissionProfile.myLinks.linkFacebook}">
                            <i class="icon iconfont icon-facebook"></i>
                            @${requestScope.admissionProfile.myLinks.linkFacebook}
                        </a><br/>
                    </c:if>
                    <c:if test="${not empty requestScope.admissionProfile.myLinks.linkInstagram}">
                        <a href="https://www.instagram.com/${requestScope.admissionProfile.myLinks.linkInstagram}">
                            <i class="icon iconfont icon-gerenzhuyexiangji"></i>
                            @${requestScope.admissionProfile.myLinks.linkInstagram}
                        </a><br/>
                    </c:if>
                </div>
                <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
            </div>
        </div>
    </c:if>
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
    <@if(typeof description == 'undefined'){}else if(description == ''){@><div class="col-lg-8 col-xs-12 disabled "><div class="r-line"><a class="add-description modalLink text-center"><i class="glyphicon glyphicon-align-left"></i><strong>Great school!</strong></a></div></div><@}else{@><div class="col-lg-8 col-xs-12 disabled"><div class="media-item-description"><p><@=description@></p></div></div><@}@>
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
            <p><@=activityTags[activityTags.length-1]@><span>（<@=count[activityTags.length-1]@>）</span></p>
        </li>

        <@ for(var i = 0;i < activityTags.length-1;i++){ @>
        <li class="col-lg-2 col-xs-4 " <@if(count[i] == 0){@> style="display:none" <@ } @> >
            <p><@=activityTags[i]@><span>（<@=count[i]@>）</span></p>
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
    <video class="video-js vjs-default-skin" controls preload="none" poster="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>" data-setup="{}">
        <source src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','kw-cdn.kanwokanwo.com')@>" type='video/mp4'/>
    </video>
    <@}else if(status == 'TRANSCODE'){@>
    <img src="/images/transcoding.png"/>
    <@}@>
</script>

<%--biography 模板--%>
<script type="text/template" id="biography-template">
    <div class="clearfix">
        <div class="col-xs-12 text-center">
            <@if(avatarUrl){@><img width="200" height="200" src="<@=avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src">
            <@}else{@><img width="200" height="200" src="/images/defaultAdmissionAvatar.jpg"><@}@>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <h2><@=name@></h2>
    </div>
    <ul class="col-xs-12 icon-list">
        <li>
            <i class="glyphicon glyphicon-education"></i>
            <p>
                <@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@>
            </p>
        </li>
        <li>
            <i class="glyphicon glyphicon-map-marker"></i>
            <p><span>
                <@if(location){@><@=location@><@}else{@>N/A<@}@>
            </span></p>
        <li>
            <i class="glyphicon glyphicon-user"></i>
            <p><span>
            <@if(position){@><@=position@><@}else{@>N/A<@}@>
            </span></p>
        </li>
        </li>
        <li>
            <i class="glyphicon glyphicon-link"></i>
            <p><span>
            <@if(webSite){@>
                <a href="<@=webSite@>">Our Website</a>
            <@}else{@>
                N/A
            <@}@>
            </span></p>
        </li>
        <li id="examRecord">
        </li>
    </ul>
    <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.role == 'STUDENT' && admissionProfile.admissionProfileId != sessionScope.loginUser.admissionProfileId}">
        <a href="/msg/chat/${admissionProfile.userId}/1" class="my-connect" data-modal="modal-connect">Get in touch</a>
    </c:if>
    <c:if test="${requestScope.isShowConnect}">
        <br/><br/><a href="javascript:;" class="my-connect md-trigger" data-modal="modal-connect">联系方式</a>
    </c:if>
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
        var profileData = ${requestScope.profileJson};
        if (!profileData.mySchool.materials) {
            profileData.mySchool.materials = [];
        }
        var jsonResult = {'myschool': profileData.mySchool,'myassociation': profileData.myAssociation,'mycurriculum': profileData.myCurriculum,'myfaculty': profileData.myFaculty,'myhonor': profileData.myHonor,'myourstudent': profileData.myOurStudent};
        //var jsonResult = {};
        var contentViews = [];
        //判断不显示为空的内容
        $.each(jsonResult, function(index, item){
            if(!item.description || (item.materials && item.materials.length != 0)){
                contentViews[index] = new App.DescriptionMaterialSimpleView({model: new App.Content(item), el: "." + index + "Media"});
                contentViews[index].render();
            }
        });

        var myVideoJson = profileData.introductionVideo;
        new App.MyVideoModuleSimpleView({model: new App.Material(myVideoJson), el: ".myVideoMedia"}).render();
        var biography = profileData.biography;
        new App.BiographyModuleSimpleView({model: new App.Biography(biography), el: ".biography"}).render();
        App.RemarkDict
        var remarkJson = ${remarkJson};
        var remarkDict = new App.RemarkDict({remarkList: remarkJson});
        new App.RemarkListView({model: remarkDict, el: ".friend-impression-list"}).render();
        $("#submitImpressionBtn").on("click", function () {
            var that = remarkDict;
            var impressionContent = $("#impression").val();
            if (currentUserStudentProfileId == "") {
                alert("please login");
                return;
            }
            if ($.trim(impressionContent) != "") {
                if ($.trim(currentUserStudentProfileId) == $.trim(targetStudentProfileId)) {
                    alert("you can not fill impression for yourself");
                    return;
                }
                $.ajax({
                    type: "POST",
                    url: '/admission/profile/addRemark',
                    data: {"fromUser": currentUserStudentProfileId, "toUser": targetStudentProfileId, "impression": impressionContent},
                    dataType: 'json',
                    success: function (data) {
                        if (data.status == 1) {
                            that.addRemark(data.data);
                        }
                    }
                });

            } else {
                alert("please fill impression");
            }
            //remarkDict.saveRmark();
        });
        var activitiesJsonResult = ${activityListJson};
        var activityList = new App.ActivityList(activitiesJsonResult);
        var activityModuleView = new App.ActivityModuleView({collection: activityList});
        activityModuleView.render();

        currentUserStudentProfileId = "${sessionScope.loginUser.admissionProfileId}";
        if (!currentUserStudentProfileId) {
            currentUserStudentProfileId = "${sessionScope.loginUser.studentProfileId}";
        }
        targetStudentProfileId = "${admissionProfile.admissionProfileId}";

        $('.materialList').rebox({selector: '.zoom'});
    });
</script>
</html>
