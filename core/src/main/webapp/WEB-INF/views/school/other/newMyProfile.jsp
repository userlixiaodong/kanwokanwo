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
    <link rel="stylesheet" type="text/css" href="/style/school.css"/>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>

<section class="container-fluid main clearfix">
    <div class="bg_pic">
        <!--<div class="top_black">
            <p><a href="/">Home</a> >  <a href="/partners">School</a>  >  ${requestScope.admissionProfile.biography.name}</p>
        </div>-->
        <div class="black_box"></div>
        <div id="schoolBgImgParent" style="cursor: pointer;">
            <c:if test="${empty admissionProfile.biography.schoolBgImg}">
                <img src="/images/bg_1.jpg" class="md-trigger" data-modal="modal-schoolbgimg">
            </c:if>
            <c:if test="${not empty admissionProfile.biography.schoolBgImg}">
                <img src="${admissionProfile.biography.schoolBgImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_678h_1920w_100q.src" class="md-trigger" data-modal="modal-schoolbgimg">
            </c:if>
        </div>
        <div id="schoolNameAndRank">
        </div>
    </div>
    <div class="row content">
        <div class="col-lg-3 sidebar">
            <div id="biography" class="introduce md-trigger modifyBiography" data-modal="school-biography">

            </div>
            <div class="application">
                <h3><span></span>Application</h3>
                <div id="application" class="md-trigger cu-pointer" data-modal="school-application">

                </div>
            </div>
            <div class="ourStudents">
                <h3>Our Students</h3>

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
                    <c:if test="${requestScope.schoolOurStudentsCount > 7}"><li class="ourStudentMore md-trigger" data-modal="modal-ourStudent"><a href="javascript:;" class="more">+MORE</a></li></c:if>
                </ul>
            </div>
            <%--<div class="mentor">--%>
                <%--<h3>Mentor</h3>--%>
                <%--<ul class="mentor-list">--%>
                    <%--<li>--%>
                        <%--<a>--%>
                            <%--<span><img src="/images/hcw.jpg"></span>--%>
                            <%--<p><b>CaiWei Huang</b><br>专业：教育学</br>擅长方向：申请攻略</p>--%>
                        <%--</a>--%>
                    <%--</li>--%>
                    <%--<li class="down-btn"><i class="glyphicon glyphicon-chevron-down"></i></li>--%>
                <%--</ul>--%>
            <%--</div>--%>
        </div>
        <div class="col-lg-9  main_content">
            <ul class="navbar_is">
                <li class="information_btn tab-show" id="information_btn">
                    <a href="javascript:;" id="information_word">Timeline</a>
                </li>
                <li class="school_btn tab-hide" id="school_btn">
                    <a href="javascript:;" id="school_word">About</a>
                </li>
            </ul>
            <div id="informationPage" class="information_page">
                <div class="information_top clearfix">


                <div class="col-lg-11 col-md-11 add-all">
                    <textarea maxlength="200" id="informationContent"></textarea>
                    <div class="add-p-v">
                        <a class="add-photo text-center" data-modal="information-img" href="javascript:;" target="_blank"><em><img src="/images/picture.png"> </em>PICTURE</a>
                        <a class="add-video text-center" data-modal="information-video" href="javascript:;" target="_blank"><em><img src="/images/information_video.png"> </em>VIDEO</a>
                    </div>
                </div>
                    <a class="post-btn col-lg-1 col-md-1 text-center" href="javascript:;" id="addInformation" target="_blank">POST</a>
                </div>
                <ul class="information_record" id="informationList">

                </ul>
                <div class="pages" id="divPage"></div>
            </div>
            <!-- myschool -->
            <div id="infomationSchoolPage" class="school_page hide">
                <div class="content-container col-lg-9 col-md-9 col-xs-12">
                    <div class="my-story-container">
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
                    <div class="col-lg-12 col-xs-12">
                        <h1>Our School</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Not every student can make it to campus. This is the perfect place to showcase your community. Give the students a brief description of your school and use photos and videos to bring it to life.</em>
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
                    <div class="col-lg-12 col-xs-12">
                        <h1>ACADEMICS</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Give a brief description about the academic programs.</em>
                            </h6>
                        </div>
                    </div>
                    <div class="bg-gray">
                        <div class="clearfix myacademicsMedia media-item relative-position" data-module="MYACADEMICS">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>Residential Life</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Let the students know the opportunities to enhance the college experience while living on campus.</em>
                            </h6>
                        </div>
                    </div>
                    <div class="bg-gray">
                        <div class="clearfix myassociationMedia media-item relative-position" data-module="MYASSOCIATION">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>Extracurricular Life</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Information about student life and extracurricular activities.</em>
                            </h6>
                        </div>
                    </div>
                    <div class="bg-gray">
                        <div class="clearfix mycurriculumMedia media-item relative-position" data-module="MYCURRICULUM">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="clearfix">
                    <div class="col-lg-12 col-xs-12">
                        <h1>Deadline Information</h1>
                    </div>
                </div>
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6>
                                <i class="glyphicon glyphicon-star"></i>
                                <em>Admissions deadline information</em>
                            </h6>
                        </div>
                    </div>
                    <div class="bg-gray">
                        <div class="clearfix myfacultyMedia media-item relative-position" data-module="MYFACULTY">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
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
            <div class="row">
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
                <div class="columns-info">
                    <div class="clearfix">
                        <div class="col-lg-12 col-xs-12">
                            <h6><i class="glyphicon glyphicon-star"></i><em>Please specify and upload any additional information or details of your prestige institution at the space below. Via these information, students can receive a better image of you. </em></h6>
                        </div>
                    </div>
                </div>
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
<div id="previewPicture" class="preview-picture clearfix" style="display: none;">
   <div class="preview-picture-arrow-left"></div>
   <div class="preview-picture-arrow-right"></div>
   <h5>Upload local file</h5>
   <p><span id="previewCurNum">0</span> file uploading, a total of <span id="previewCanUploadNum">9</span> files can be uploaded</p>
   <ul id="previewImgList">
      <li id="appendImgBtn"><a href="javascript:;" class="md-trigger" data-modal="select-information-materialType"><em></em></a></li>
   </ul>
</div>
<div class="md-effect-1 reveal-modal modalLink" id="select-information-materialType">
    <div class="md-content">
        <h4 class="lead-in">ADD MEDIA</h4>
        <ul class="subview clearfix text-center">
            <li><a class="modalLink" id="selectImageBtn" href="javascript:void(0);" data-modal="information-img"><i class="glyphicon glyphicon-camera"></i><label>Photo</label></a></li>
            <li style="border-right: 0;"><a class="modalLink" id="selectVideoBtn" href="javascript:void(0);" data-modal="information-video"><i class="glyphicon glyphicon-facetime-video"></i><label>Video</label></a></li>
        </ul>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal" id="modal-ourStudent">
    <div class="md-content">
        <h4 class="lead-in">Our Students</h4>
        <div class="ourStudents">
                <ul class="studentList">
                    <li class="modalOurStudentMore"><a href="javascript:;" class="more">+MORE</a></li>
                </ul>
            </div>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<script type="text/template" id="editActivity_template">
    <div class="md-effect-1 reveal-modal md-show" id="">
        <div class="md-content">
            <h4 class="lead-in">Edit ADDITIONAL INFORMATION</h4>

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

            <p class="clearfix activity-add-time"><input type="text" value="<@=startDate@>" class="startDate date fl"><input type="text" value="<@=endDate@>" class="endDate date fr"></p>
            <input type="button" value="Save" class="reveal-button modifyActivity">
            <button id="close-modal-4" class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

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
<script src="/js/splitpageNew.js"></script>
<script src="/js/jquery.dragsort-0.5.2.min.js"></script>

<%@ include file="/WEB-INF/tmpl/admission/edit.tmplNew.jsp" %>
<script>
</script>
<script type="text/javascript">
    $(function () {
        window.profileData = ${requestScope.profileJson};
        window.schoolId = ${requestScope.admissionProfile.userId};
        window.loginUserId = ${requestScope.admissionProfile.userId};
        window.schoolName = profileData.biography.name;
        var informationPage = ${requestScope.informationPage};

        var jsonResult = {'myschool': profileData.mySchool, 'myacademics': profileData.myAcademic,'myassociation': profileData.myAssociation,'mycurriculum': profileData.myCurriculum,'myfaculty': profileData.myFaculty,'myhonor': profileData.myHonor, 'myourstudent': profileData.myOurStudent};
        var contentViews = [];
        $.each(jsonResult, function(index, item){
                contentViews[index] = new App.DescriptionMaterialEditView({model: new App.AdmissionEdit(item), el: "." + index + "Media", module: index.toUpperCase()});
                contentViews[index].render();
        });

        var biography = profileData.biography;
        biography.followCount = profileData.followCount;
        biography.linkEmail = profileData.myLinks.linkEmail;
        biography.linkTwitter = profileData.myLinks.linkTwitter;
        biography.linkFacebook = profileData.myLinks.linkFacebook;
        biography.linkInstagram = profileData.myLinks.linkInstagram;
        new App.AdmissionSchoolNameRankModuleEditView({model: new App.Biography(biography), el: "#schoolNameAndRank"}).render();
        new App.AdmissionBiographyModuleEditView({model: new App.Biography(biography), el: "#biography"}).render();
        new App.AdmissionApplicationModuleEditView({model: new App.Application(profileData.application), el: "#application"}).render();

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

        videoJson = profileData.introductionVideo;

        var activitiesJsonResult = ${requestScope.activityListJson};
        var activityList = new App.AdmissionActivityEditList(activitiesJsonResult);
        var activityModuleView = new App.AdmissionActivityModuleEditView({collection: activityList}).render();

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

        // information
        //window.informationMaterials = [];
        $('#informationUploadImgBtn').click(function(){
            uploadInformationMaterial('informationImgFile', 'IMG');
        });
        $('#informationUploadVideoBtn').click(function(){
            uploadInformationMaterial('informationVideoFile', 'VIDEO');
        });
        $('#addInformation').click(function(){
            var content = $('#informationContent').val();
            if ($.trim(content).length <= 0) {
                alert("content can't be blank.");
                return;
            }
            if (informationIsUpload) {
                if (!window.confirm("You're uploading files, without having to wait to determine the file uploaded?")) {
                    return;
                }
            }
            var materialList = $('#previewImgList img');
            var informationMaterials = [];
            for (var i = 0; i < materialList.length; i++) {
                informationMaterials.push($(materialList[i]).attr('materialId'));
            }
            $.ajax({
                url: '/user/information/add',
                type: 'POST',
                data: {'text': content, 'materialIds': informationMaterials.join(',')},
                dataType: 'json',
                success: function (data) {
                    if (data.status == 1) {
                        //location.href = location.href;
                        informationListView.toPage(1);
                        //isFirstPreview = true;
                        previewCurNum = 0;
                        $('#previewCurNum').html(previewCurNum);
                        $('#previewCanUploadNum').html(previewTotalNum - previewCurNum);
                        $('#previewImgList').html('<li id="appendImgBtn"><a href="javascript:;" class="md-trigger" data-modal="select-information-materialType"><em></em></a></li>');
                        $('#previewPicture').hide();
                    } else {
                        alert(data.message);
                    }
                }
            });
        });

        //isFirstPreview = true;
        var previewTotalNum = 9;
        var previewCurNum = 0;
        var informationIsUpload = false;
        function renderPreviewImg(material) {
            var materialId = material.materialId;
            var materialSrc = material.materialSrc;
            var videoPreviewImg = material.videoPreviewImg;
            var html = '<li><a href="javascript:;"><img materialId="{materialId}" src="{previewImgUrl}"></a></li>';
            if (videoPreviewImg != null) {
                html = html.replace('{previewImgUrl}', videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com') + "@1e_1c_0o_0l_80h_80w_90q.src");
            } else {
                html = html.replace('{previewImgUrl}', materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com') + "@1e_1c_0o_0l_80h_80w_90q.src");
            }
            html = html.replace('{materialId}', material.materialId);

            $('#appendImgBtn').before(html);
            /*if (isFirstPreview) {
                var top = $('.add-p-v').offset().top;
                var left = $('.add-p-v').offset().left;
                $('#previewPicture').css({'top': top + $('.add-p-v').height(), 'left': left});
                $('#previewPicture').show();
            }
            isFirstPreview = false;*/
        }
        $('#informationList').delegate('.informationItem', 'click', function(){
            if (window.confirm('Sure you want to delete?')) {
                var item = $(this);
                var informationId = item.attr('data-id');
                $.ajax({
                    url: '/user/information/delete',
                    type: 'POST',
                    data: {'informationId': informationId},
                    dataType: 'json',
                    success: function (data) {
                        if (data.status == 1) {
                            informationListView.toPage(pg.page)
                        } else {
                            alert(data.message);
                        }
                    }
                });
            }
        });
        function uploadInformationMaterial(fileId, materialType) {
            /*if (isFirstPreview) {
                var top = $('.add-p-v').offset().top;
                var left = $('.add-p-v').offset().left;
                $('#previewPicture').css({'top': top + $('.add-p-v').height(), 'left': left});
                $('#previewPicture').show();
            }*/
            var module = 'INFORMATION';
            var types = null;
            var maxSize = null;
            var file = $('#' + fileId);
            var uploadFileList = file[0].files;
            var types = null;
            var maxSize = 0;
            if (uploadFileList.length <= 0) {
                alert('please choose file!');
                return;
            }
            if (previewCurNum + uploadFileList.length > previewTotalNum) {
                alert('Upload pictures plus number of videos can not exceed ' + previewTotalNum);
                return;
            }
            if (materialType == 'VIDEO') {
                types = videoTypes;
                maxSize = 524288000;
            } else {
                types = imgTypes;
                maxSize = 10485760;
            }
            for (var i = 0; i < uploadFileList.length; i++) {
                var uploadFile = uploadFileList[i];
                // check type
                var ext = uploadFile.name.substr(uploadFile.name.lastIndexOf(".")).toLowerCase();
                if ($.inArray(ext, types) < 0) {
                    alert('file type error!');
                    return;
                }
                // check size
                var fileSize = uploadFile.size;
                if (fileSize > maxSize) {
                    alert('file too large!');
                    return;
                }
            }

            uploadingCover(module, null);
            informationIsUpload = true;
            $.ajaxFileUpload({
                url: '/material/uploadMultiple',
                secureuri: false,
                fileElementId: file.attr('id'),//file标签的id
                dataType: 'json',//返回数据的类型
                data: function () {
                    return {'module': 'INFORMATION', 'materialType': materialType, 'title': ''};
                }(),
                async: true,
                success: function (data) {
                    if (data.status == 1) {
                        // 预览图片
                        var materials = data.data;
                        for (var i = 0; i < materials.length; i++) {
                            var material = materials[i];
                            renderPreviewImg(material);
                        }
                        $('#informationImgFile').html('Choose File');
                        $(".md-close").trigger("click");
                        previewCurNum += materials.length;
                        if (previewCurNum >= previewTotalNum) {
                            $('#previewImgList li').last().hide();
                        }
                        $('#previewCurNum').html(previewCurNum);
                        $('#previewCanUploadNum').html(previewTotalNum - previewCurNum);
                    } else {
                        alert(data.message);
                    }
                },
                complete: function () {
                    //currentView = that.view;
                    $("body").find(".coverDiv").remove();
                    informationIsUpload = false;
                    //$.scrollTo(that.$('.sortable div:last'), 500);
                }
            });
        }
        $("#previewPicture ul").dragsort({
            dragSelector: "li",
            dragBetween: false,
            placeHolderTemplate: "<li></li>"
        });
        $('#school-application').delegate('#schoolType', 'change', function(){
            var item = $(this);
            var value = item.val();
            if (value == 'other') {
                $('#schoolTypeOther').show();
            } else {
                $('#schoolTypeOther').hide();
            }
        });

    });
</script>
<script type="text/javascript" src="/js/mn/school-viewprofile-other.js"></script>
<script type="text/javascript" src="/js/mn_test/myProfile.js?20160516"></script>
<script type="text/javascript" src="/js/mn_test/schoolMyProfile.js?20160516"></script>
<script type="text/javascript" src="/js/admission_exclude_activityNew.js"></script>
<script src="/js/introductionVideoProc.js?version=2016050511"></script>
<script src="/js/school.js"></script>
<script src="/js/i18n/en_US.js"></script>
<%--<script src="/js/school.edit.js"></script>--%>
</body>
</html>
