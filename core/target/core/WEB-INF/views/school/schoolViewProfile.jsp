<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
</head>
<body>
<%@include file="/WEB-INF/views/common/topNew.jsp" %>
<script type="text/javascript" src="http://test.static.kanwokanwo.com/schoolViewProfile-bundle.js"></script>
<div class="main-wrapper clearfix">
    <!--=====================================left============================================-->
    <aside class="sidebar-container col-lg-3 col-md-3 col-xs-12">
        <div class="row biography">

        </div>
        <div class="row examRecord">

        </div>
        <div class="row">
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
        <input type="text" value="" oninput="limitWordsCounts($(this))" id="impression">

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
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<%@include file="/webpack/entry/templates/schoolViewProfile_template.jsp" %>
</body>
<script type="text/javascript">
    $(function () {
        var profileData = ${requestScope.profileJson};
        if (!profileData.mySchool.materials) {
            profileData.mySchool.materials = [];
        }
        var jsonResult = {'myStory': profileData.mySchool};
        //var jsonResult = {};
        var contentViews = [];
        //判断不显示为空的内容
        $.each(jsonResult, function (index, item) {
            if (!item.description == "" || (item.materials && item.materials.length != 0)) {
                contentViews[index] = new App.DescriptionMaterialSimpleView({model: new App.Content(item), el: "." + index + "Media"});
                contentViews[index].render();
            }
        });

        var myVideoJson = profileData.introductionVideo;
        new App.MyVideoModuleSimpleView({model: new App.Material(myVideoJson), el: ".myVideoMedia"}).render();
        var biography = profileData.biography;
        $.extend(biography, {isShowConnect: ${requestScope.isShowConnect}});
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
        targetStudentProfileId = "${admissionProfile.admissionProfileId}";

        $('.materialList').rebox({selector: '.zoom'});
    });
</script>
</html>
