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
<script type="text/javascript" src="http://test.static.kanwokanwo.com/stuViewProfile-bundle.js"></script>
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
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<%@include file="/webpack/entry/templates/stuViewProfile_template.jsp" %>
</body>

<script type="text/javascript">
    $(function () {
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
    });
</script>
</html>


