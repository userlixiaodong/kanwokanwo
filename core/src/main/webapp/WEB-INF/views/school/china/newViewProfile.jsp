<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>${admissionProfile.biography.name} | Kanwokanwo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>
    <link rel="stylesheet" type="text/css" href="/style/school.css"/>
</head>
<body class="china">
<%@include file="/WEB-INF/views/common/top.jsp" %>

<section class="container-fluid main clearfix">
    <div class="bg_pic">
        <div class="top_black">
            <p><a href="/">主页</a> >  <a href="/partners_CN">学校</a>  >  ${requestScope.admissionProfile.biography.name}</p>
        </div>
        <div class="black_box"></div>
            <c:if test="${empty admissionProfile.biography.schoolBgImg}">
                <img src="/images/bg_1.jpg" data-modal="modal-schoolbgimg">
            </c:if>
            <c:if test="${not empty admissionProfile.biography.schoolBgImg}">
                <img src="${admissionProfile.biography.schoolBgImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_678h_1920w_100q.src" data-modal="modal-schoolbgimg">
            </c:if>
        <div id="schoolNameAndRank">
        </div>
    </div>
    <div class="row content">
        <div class="col-lg-3 sidebar">
            <c:if test="${sessionScope.loginUser != null && sessionScope.loginUser.role == 'STUDENT' && admissionProfile.admissionProfileId != sessionScope.loginUser.admissionProfileId}">
                <div class="getintouchdiv">
                    <a class="getintouch" href="/msg/chat/${admissionProfile.userId}/1" target="_blank">联系我们</a>
                </div>
            </c:if>
            <div id="biography" class="introduce cu-no" >

            </div>
            <div class="application">
                <h3>课程和招生信息</h3>
                <div id="application" class="cu-no">
                </div>
            </div>
            <div class="ourStudents">
                <h3>我们的学生</h3>
                <ul class="studentList">
                    <c:forEach items="${requestScope.schoolOurStudents}" var="ourStudent">
                        <li hreff="/${ourStudent.publicUri}">
                            <c:if test="${empty ourStudent.biography.avatar}">
                                <img src="//img-cdn.kanwokanwo.com/images/defaultavatar.jpg@1e_1c_0o_0l_96h_96w_90q.src"/>
                            </c:if>
                            <c:if test="${not empty ourStudent.biography.avatar}">
                                <img src="${ourStudent.biography.avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_96h_96w_90q.src"/>
                            </c:if>
                            ${ourStudent.biography.name}</li>
                    </c:forEach>
                    <c:if test="${requestScope.schoolOurStudentsCount > 7}"><li class="md-trigger ourStudentMore" data-modal="modal-ourStudent"><a href="javascript:;" class="more">+更多</a></li></c:if>
                </ul>
            </div>
        </div>
        <div class="col-lg-9  main_content">
            <ul class="navbar_is">
                <li class="information_btn tab-show" id="information_btn">
                    <a href="javascript:;" id="information_word">新闻公告</a>
                </li>
                <li class="school_btn tab-hide" id="school_btn">
                    <a href="javascript:;" id="school_word">我的学校</a>
                </li>
            </ul>
            <div id="informationPage" class="information_page">
                <div class="view-information-page-form clearfix" style="width: 100%;margin-left: 10%;margin-top: 10%;"></div>
                <ul class="information_record" id="informationList">
                </ul>
                <div class="pages" id="divPage"></div>
            </div>
            <!-- myschool -->
            <div id="infomationSchoolPage" class="school_page hide">
                <div class="content-container col-lg-9 col-md-9 col-xs-12">
                    <div class="my-story-container">
            <c:if test="${not empty requestScope.admissionProfile.introductionVideo}">
                <div class="row">
                    <div class="clearfix">
                        <section class="col-xs-12">
                            <h1>介绍视频</h1>
                            <div class="media-item flex-video myVideoMedia text-center">
                            </div>
                        </section>
                    </div>
                </div>
            </c:if>
            <div class="row
            <c:if test="${empty requestScope.admissionProfile.mySchool.description && fn:length(requestScope.admissionProfile.mySchool.materials) <= 0}">
                hide
            </c:if>">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>我们的学校</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>不是所有学生在入学前都能亲自到学校来看一看，介绍一下学校的学生生活和校园风光，别忘了多上传几张照片哦</em>
                            </h6>
                        </div>
                    </div>--%>
                    <div class="bg-gray">
                        <div class="clearfix myschoolMedia media-item relative-position" data-module="MYSCHOOL">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row
            <c:if test="${empty requestScope.admissionProfile.myAcademic.description && fn:length(requestScope.admissionProfile.myAcademic.materials) <= 0}">
                hide
            </c:if>">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>课程体系</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>每个学校都有引以为豪的课程体系，告诉大家吧</em>
                            </h6>
                        </div>
                    </div>--%>
                    <div class="bg-gray">
                        <div class="clearfix myacademicsMedia media-item relative-position" data-module="MYACADEMICS">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row
            <c:if test="${empty requestScope.admissionProfile.myAssociation.description && fn:length(requestScope.admissionProfile.myAssociation.materials) <= 0}">
                hide
            </c:if>">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>学生生活</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>让大家知道学生在学校丰富多彩的校园生活和课外活动</em>
                            </h6>
                        </div>
                    </div>--%>
                    <div class="bg-gray">
                        <div class="clearfix myassociationMedia media-item relative-position" data-module="MYASSOCIATION">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row
            <c:if test="${empty requestScope.admissionProfile.myCurriculum.description && fn:length(requestScope.admissionProfile.myCurriculum.materials) <= 0}">
                hide
            </c:if>">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>社团活动</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>介绍一下学校里的各种令人惊叹的学生社团吧</em>
                            </h6>
                        </div>
                    </div>--%>
                    <div class="bg-gray">
                        <div class="clearfix mycurriculumMedia media-item relative-position" data-module="MYCURRICULUM">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row
            <c:if test="${empty requestScope.admissionProfile.myFaculty.description && fn:length(requestScope.admissionProfile.myFaculty.materials) <= 0}">
                hide
            </c:if>">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>招生信息</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>这是很多尚未加入您的学校的家长和学生最关心的信息之一，为他们提供尽可能清晰的材料清单和申请流程吧</em>
                            </h6>
                        </div>
                    </div>--%>
                    <div class="bg-gray">
                        <div class="clearfix myfacultyMedia media-item relative-position" data-module="MYFACULTY">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>其它信息</h1>
                    </div>
                </div>
                <%--<div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6><i class="glyphicon glyphicon-star"></i><em>如果你还有什么要补充的，请在这儿尽情发挥吧，如果您有点卡壳，可以看看为您建议的标签内容</em></h6>
                        </div>
                    </div>
                </div>--%>
                <div id="actList" class="columns-info">

                </div>
            </div>
        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</section>
<%-- 弹出层 --%>
<%--<c:if test="${requestScope.isShowConnect}">--%>
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
<%--</c:if>--%>
<div class="md-effect-1 reveal-modal file-upload" id="information-img">
   <div class="md-content">
       <h4 class="lead-in">NEW IMAGE<em>Each image size must not exceed 10MB</em></h4>
       <div id="uploadImgsContainer">
           <div class="file-upload-btn">
           <span>
               <i class="glyphicon glyphicon-folder-open"></i>
               <span class="file-select">Choose File</span>
           </span>
               <input type="file" value="" id="informationImgFile" name="file" accept=".jpg,.jpeg,.png,.gif" multiple="multiple">
           </div>
       </div>
       <input type="submit" value="Save" class="reveal-button" id="informationUploadImgBtn">
       <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
   </div>
</div>
<div class="md-effect-1 reveal-modal file-upload" id="information-video">
    <div class="md-content">
        <h4 class="lead-in">NEW VIDEO<em>Each video size must not exceed 500MB</em></h4>
        <div class="file-upload-btn">
            <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
            <input type="file" value="" name="file" id="informationVideoFile" accept=".mp4,.mov,.mkv,.flv,.3gp,.wmv,.asf,.webm,.mpg,.avi">
        </div><br/>
        <input type="submit" value="Save" class="reveal-button" id="informationUploadVideoBtn">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>

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
<script src="/js/video-popup.js?20160512"></script>
<script src="/js/splitpageNew2.js"></script>

<%@ include file="/WEB-INF/tmpl/school/viewProfile.china.tmpl.jsp" %>
<script>
</script>
<script type="text/javascript">
    $(function () {
        window.profileData = ${requestScope.profileJson};
        window.loginUserId = '${sessionScope.loginUser.userId}';
        window.schoolId = '${requestScope.admissionProfile.userId}';
        window.isFollow = ${requestScope.isFollow};
        window.schoolName = profileData.biography.name;
        var informationPage = ${requestScope.informationPage};

        var jsonResult = {'myschool': profileData.mySchool, 'myacademics': profileData.myAcademic, 'myassociation': profileData.myAssociation,'mycurriculum': profileData.myCurriculum,'myfaculty': profileData.myFaculty};
        var contentViews = [];
        $.each(jsonResult, function(index, item){
                contentViews[index] = new App.DescriptionMaterialSimpleView({model: new App.Content(item), el: "." + index + "Media", module: index.toUpperCase()});
                contentViews[index].render();
        });

        var myVideoJson = profileData.introductionVideo;
        new App.MyVideoModuleSimpleView({model: new App.Material(myVideoJson), el: ".myVideoMedia"}).render();
        var biography = profileData.biography;
        biography.followCount = profileData.followCount;
        biography.linkEmail = profileData.myLinks.linkEmail;
        biography.linkTwitter = profileData.myLinks.linkTwitter;
        biography.linkFacebook = profileData.myLinks.linkFacebook;
        biography.linkInstagram = profileData.myLinks.linkInstagram;
        new App.AdmissionSchoolNameRankModuleView({model: new App.Biography(biography), el: "#schoolNameAndRank"}).render();
        new App.AdmissionBiographyModuleView({model: new App.Biography(biography), el: "#biography"}).render();
        new App.AdmissionApplicationModuleView({model: new App.SchoolApplication(profileData.application), el: "#application"}).render();

        var informationListView = new App.SchoolInformationListModuleView({collection: informationList, el: "#informationList"});
        informationListView.setListData(informationPage.data);
        informationListView.render();

        window.pg = new showPages('pg', 1, '/user/information/list/${admissionProfile.userId}/{page}.json');
        pg.pageCount = informationPage.totalPage;
        pg.printHtml("divPage");
        // overrite
        showPages.prototype.toPage = function(pageIndex){
            informationListView.toPage(pageIndex);
        }

        var activitiesJsonResult = ${activityListJson};
        var activityList = new App.ActivityList(activitiesJsonResult);
        var activityModuleView = new App.ActivityModuleView({collection: activityList}).render();
        $('.materialList').rebox({selector: '.zoom'});
        <c:if test="${!requestScope.timeline}">
            setTimeout(function(){
                $('#school_btn').click();
            }, 0);
        </c:if>
    });
</script>
<script type="text/javascript" src="/js/mn/school-viewprofile.js"></script>
<script src="/js/school.js"></script>
<script src="/js/school.view.js"></script>
</body>
</html>
