<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>About</title>
<link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
<link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
<link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>
<link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>
<link rel="stylesheet" type="text/css" href="/style/school.css"/>
<%@ include file="/WEB-INF/views/mobile/common/common_head.jsp"%>
<link rel="stylesheet" type="text/css" href="/style/mobile/mySchool.css"/>
</head>
<body>
<%@ include file="/WEB-INF/views/mobile/common/top_mobile.jsp" %>
<section class="school_main clearfix">
  <h3 class="item_tit tac pos_r"><a class="return pos_a" href="" target="_blank"><i class="icon_jiantouzuo iconfont"></i></a>my school</h3>
   <div class="my_school">
    <c:if test="${not empty requestScope.admissionProfile.introductionVideo}">
                <div class="row">
                    <div class="clearfix">
                        <section class="col-xs-12">
                            <h1>Meet me video</h1>
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
                        <h1>Our School</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Not every student can make it to campus. This is the perfect place to showcase your community. Give the students a brief description of your school and use photos and videos to bring it to life.</em>
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
                        <h1>ACADEMICS</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Give a brief description about the academic programs.</em>
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
                        <h1>Residential Life</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Let the students know the opportunities to enhance the college experience while living on campus.</em>
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
                        <h1>Extracurricular Life</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Information about student life and extracurricular activities.</em>
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
                        <h1>Deadline Information</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="bg-gray">
                        <div class="clearfix myfacultyMedia media-item relative-position" data-module="MYFACULTY">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row
            <c:if test="${empty requestScope.admissionProfile.myHonor.description && fn:length(requestScope.admissionProfile.myHonor.materials) <= 0}">
                hide
            </c:if>">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>Required Application Materials</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Not every student can make it to campus. This is the perfect place to showcase your community and student-life. Give the students a brief description of your school and use photos and videos to bring it to life.</em>
                            </h6>
                        </div>
                    </div>--%>
                    <div class="bg-gray">
                        <div class="clearfix myhonorMedia media-item relative-position" data-module="MYHONOR">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row
            <c:if test="${empty requestScope.admissionProfile.myOurStudent.description && fn:length(requestScope.admissionProfile.myOurStudent.materials) <= 0}">
                hide
            </c:if>">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>Financial Aid</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <%--<div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Not every student can make it to campus. This is the perfect place to showcase your community and student-life. Give the students a brief description of your school and use photos and videos to bring it to life.</em>
                            </h6>
                        </div>
                    </div>--%>
                    <div class="bg-gray">
                        <div class="clearfix myourstudentMedia media-item relative-position" data-module="MYOURSTUDENT">

                        </div>
                    </div>
                </div>
            </div>
    <div class="row">
                <div class="clearfix">
                    <div class="col-xs-12">
                        <h1>Additional Information</h1>
                    </div>
                </div>
                <%--<div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6><i class="glyphicon glyphicon-star"></i><em>Please specify and upload any additional information or details of your prestige institution at the space below. Via these information, students can receive a better image of you. </em></h6>
                        </div>
                    </div>-
                </div>--%>
                <div id="actList" class="columns-info">

                </div>
            </div>
</section>
</div>
<%@ include file="/WEB-INF/views/mobile/common/bottom_mobile.jsp"%>
<%@ include file="/WEB-INF/tmpl/school/viewProfile.tmpl.jsp" %>
<script>
  $(function(){
      var profileData = ${requestScope.profileJson};
      var jsonResult = {'myschool': profileData.mySchool, 'myacademics': profileData.myAcademic, 'myassociation': profileData.myAssociation,'mycurriculum': profileData.myCurriculum,'myfaculty': profileData.myFaculty,'myhonor': profileData.myHonor, 'myourstudent': profileData.myOurStudent};
      var contentViews = [];
      $.each(jsonResult, function(index, item){
          contentViews[index] = new App.DescriptionMaterialSimpleView({model: new App.Content(item), el: "." + index + "Media", module: index.toUpperCase()});
          contentViews[index].render();
      });

      var myVideoJson = profileData.introductionVideo;
      new App.MyVideoModuleSimpleView({model: new App.Material(myVideoJson), el: ".myVideoMedia"}).render();

      var activitiesJsonResult = ${activityListJson};
      var activityList = new App.ActivityList(activitiesJsonResult);
      var activityModuleView = new App.ActivityModuleView({collection: activityList}).render();
      $('.materialList').rebox({selector: '.zoom'});
  });
</script>
<script src="/js/jquery-1.9.1.min.js"></script>
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
<script type="text/javascript" src="/js/mn/school-viewprofile-other.js"></script>
<script src="/js/school.js"></script>
<script src="/js/school.view.js"></script>
</body>
</html>