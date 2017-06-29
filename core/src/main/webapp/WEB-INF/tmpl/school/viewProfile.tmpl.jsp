<%@ page contentType="text/html;charset=UTF-8" language="java" %>>
<script type="text/template" id="biography-template">
    <ul>
        <li><i class="glyphicon glyphicon-equalizer"></i><a href="javascript:;"><strong>Established：</strong><span><@if(createSchoolTime){@>${createSchoolTime}<@}else{@>建校时间<@}@></a></li>

        <li><i class="glyphicon glyphicon-map-marker"></i><a href="javascript:;"><strong>District :</strong><span> <@if(area){@>${districtArrCh[districtName]}<@}else{@>地区<@}@></a></li>

        <li><i class="glyphicon glyphicon-map-marker"></i><a href="javascript:;"><strong>Province :</strong><span><@if(province){@>${stateArrCh[stateName]}<@}else{@>州<@}@></a></li>
        <li><i class="glyphicon glyphicon-map-marker"></i><a href="javascript:;"><strong>City：</strong><span><@if(city){@><@=city@><@}else{@>城市<@}@></a></li>
        <li><i class="glyphicon glyphicon-map-marker"></i><a href="javascript:;"><strong>Address：</strong><span><@if(location){@><@=location@><@}else{@>地址<@}@></a></li>
        <li><i class="glyphicon glyphicon-education"></i><a href="javascript:;"><strong>School Level：</strong><span><@if(schoolLevel){@>${schoolLevelArrCh[schoolLevelName]}<@}else{@>学校级别<@}@></a></li>
        <li><i class="glyphicon glyphicon-education"></i><a href="javascript:;"><strong>School Type：</strong><span><@if(lodge != -1){@>${schoolTypeArrCh[schoolTypeName]}<@}else{@>学校类型<@}@></a></li>
        <li><i class="glyphicon glyphicon-equalizer"></i><a href="javascript:;"><strong>Setting ：</strong><span><@if(settings){@>${settingsArrCh[settingsName]}<@}else{@>环境<@}@></a></li>
<%--        <li><i class="glyphicon glyphicon-user"></i><a href="javascript:;"><strong>School Gender：</strong><span><@if(schoolSex){@>${schoolSexArrCh[schoolSexName]}<@}else{@>是否混校<@}@></a></li>--%>
        <li><i class="glyphicon glyphicon-home"></i><a href="javascript:;"><strong>School Acreage：</strong><span><@if(schoolAcreage){@><@=schoolAcreage@><@}else{@>面积<@}@></a></li>
        <li><i class="glyphicon glyphicon-education"></i><a href="javascript:;"><strong>Students：</strong><span><@if(newbornNum){@><@=newbornNum@><@}else{@>新生人数<@}@></a></li>
        <li><i class="glyphicon glyphicon-equalizer"></i><a href="javascript:;"><strong>Teacher-Student Ratio：</strong><span><@if(teacherStudentRatio){@>1：<@=teacherStudentRatio@><@}else{@>师生比<@}@></a></li>
        <li><i class="glyphicon glyphicon-link"></i><a href="javascript:;"><strong>WebSite：</strong><span><@if(webSite){@><@=webSite@><@}else{@><@}@></a></li>
        <li><i class="glyphicon glyphicon-earphone"></i><a href="javascript:;"><strong>Phone：</strong><span><@if(phone){@><@=phone@><@}else{@>电话:<@}@></a></li>
        <li><i class="glyphicon glyphicon-envelope"></i><a href="javascript:;"><strong>Email：</strong><span><@if(linkEmail){@><@=linkEmail@><@}else{@>邮箱<@}@></a></li>
        <li><i class="glyphicon glyphicon-equalizer"></i><a href="javascript:;"><strong>Others：</strong><span><@if(biographyOther){@><@=biographyOther@><@}else{@>其它介绍<@}@></a></li>
        <li class="md-trigger" data-modal="modal-connect">
            <i style="color: #888888;font-size: 16px; font-style:normal;font-weight: bold">@</i>
            <a href="javascript:;"><em class="usficonfont usf-icon-facebook"></em></a>
            <a href="javascript:;"><em class="usficonfont usf-icon-twitter"></em></a>
            <a href="javascript:;"><em class="usficonfont usf-icon-xiangji"></em></a>
        </li>
    </ul>
</script>
<script type="text/template" id="schoolNameRank-template">
    <div class="school-avatar" id="myAvatarParent">
        <@if(avatarUrl){@><img src="<@=avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src" id="avatarSrc">
        <@}else{@><img src="/images/defaultAdmissionAvatar.jpg" id="avatarSrc"><@}@>
    </div>
    <a href="javascript:;" class="school_name"><@=name@></a>
    <a href="javascript:;" class="rank"><@if(schoolRank){@><@=schoolRank@><@}else{@><@}@></a>
    <a href="//jinshuju.net/f/fZDcSo" target="_blank" class="reserve_iv"><i class="newSchool_icon newSchool_shipin"></i><spring:message code="screen.top.interview"></spring:message></a>
    <a href="javascript:;" class="follow">
        <span id="followImg" <@ if ((window.loginUserId && window.isFollow) || window.loginUserId == window.schoolId) {@>
            style="color:red;"
        <@ } @>
        <i class="newSchool_icon newSchool_xin"></i></span><spring:message code="screen.top.follow"></spring:message>（<span id="followCountSpan"><@=followCount@></span>）
    </a>
    <div class="language-change">
        <a href="javascript:;" class="viewI18n" data-locale="en">EN</a>
        |
        <a href="javascript:;" class="viewI18n" data-locale="zh_CN">CN</a>
    </div>
</script>

<script type="text/template" id="school-application-tmpl">
    <@
        var isPreview = true;
        var isChina = false;
    @>
    <ul>
        <li class="ranking">
            <strong>
                <spring:message code="screen.left.ranking"></spring:message>
            </strong>
            <p><@=createTextHtml(ranking, isPreview, isChina, '<spring:message code="screen.left.ranking"></spring:message>')@></p>
        </li>

        <li>
            <strong>
                <spring:message code="screen.left.deadlines"></spring:message>
            </strong>
            <p><@=createTextHtml(specialty, isPreview, isChina, '<spring:message code="screen.left.deadlines"></spring:message>')@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.ed"></spring:message>
            </strong>
            <p>
                <@if(ED == '0'){@>
                <@=createTextHtml('不需要', isPreview, isChina, '<spring:message code="screen.left.ed"></spring:message>')@>
                <@}else{@>
                <@=createTextHtml('需要', isPreview, isChina, '<spring:message code="screen.left.ed"></spring:message>')@>
                <@}@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.sat"></spring:message>
            </strong>
            <p>
                <@if(issat == '0'){@>
                <@=createTextHtml('不需要', isPreview, isChina, '<spring:message code="screen.left.sat"></spring:message>')@>
                <@}else{@>
                <@=createTextHtml('需要', isPreview, isChina, '<spring:message code="screen.left.sat"></spring:message>')@>
                <@}@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.minToeflScore"></spring:message>
            </strong>
            <p><@=createTextHtml(toeflscore, isPreview, isChina, '<spring:message code="screen.left.minToeflScore"></spring:message>')@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.middleToeflScore"></spring:message>
            </strong>
            <p><@=createTextHtml(middletoeflscore, isPreview, isChina, '<spring:message code="screen.left.middleToeflScore"></spring:message>')@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.ielts"></spring:message>
            </strong>
            <p><@=createTextHtml(ieltsScore, isPreview, isChina, '<spring:message code="screen.left.ielts"></spring:message>')@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.gpa"></spring:message>
            </strong>
            <p><@=createTextHtml(middlegpascore, isPreview, isChina, '<spring:message code="screen.left.gpa"></spring:message>')@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.visitcampus"></spring:message>
            </strong>
            <p><@=createTextHtml(visitUrl, isPreview, isChina, '<spring:message code="screen.left.visitcampus"></spring:message>')@></p>
        </li>
        <li class="sch-tuition">
            <strong>
                <spring:message code="screen.left.tuitions"></spring:message>
            </strong>
            <p><@=createTextHtml(tuitionUrl, isPreview, isChina, '<spring:message code="screen.left.tuitions"></spring:message>')@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.officeemail"></spring:message>
            </strong>
            <p><@=createTextHtml(admissionEmail, isPreview, isChina, '<spring:message code="screen.left.officeemail"></spring:message>')@></p>
        </li>
        <li class="adm-o-website">
            <strong>
                <spring:message code="screen.left.officewebsite"></spring:message>
            </strong>
            <p><@=createTextHtml(applicationUrl, isPreview, isChina, '<spring:message code="screen.left.officewebsite"></spring:message>')@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.applicationrequirements"></spring:message>
            </strong>
            <p><@=createTextHtml(requirement, isPreview, isChina, '<spring:message code="screen.left.applicationrequirements"></spring:message>')@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.topics"></spring:message>
            </strong>
            <p><@=createTextHtml(docTitle, isPreview, isChina, '<spring:message code="screen.left.topics"></spring:message>')@></p>
        </li>
        <li>
            <strong>
                <spring:message code="screen.left.development"></spring:message>
            </strong>
            <p><@=createTextHtml(ourStudentUrl, isPreview, isChina, '<spring:message code="screen.left.development"></spring:message>')@></p>
        </li>
    </ul>
</script>
<script type="text/template" id="informationItem-template">
    <@_.each(informationList, function(information){
    @>
        <li class="clearfix">
            <p><@=information.text@></p>
            <time><@=information.createTime@></time>
             <@ if (information.materials && information.materials.length > 0) {
                    var width = 0;
                    var isClear = false;
                    var imgSubStr = '1e_1c_0o_0l_296h_296w_90q.src';
                    var onlyOne = false;
                    var isOrig = false;
                if (information.materials.length == 4 || information.materials.length == 2) {
                    //width = 48;
                    width = 31.33333333333333;
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
                        width = 31.33333333333333;
                        onlyOne = false;
                    }
                    if (m.imgWidth <= 700 && m.imgHeight <= 400) {
                        isOrig = true;
                    }
                    if (m.imgWidth <= 200 && m.imgHeight <= 200) {
                        isZoom = true;
                    }
                } else {
                    width = 31.33333333333333;
                }@>
                <div class="informationReboxImg clearfix">
                <@_.each(information.materials, function(material, index) {
                @>
                <@ if (index == 2 && isClear) {@><div class="clearfix"></div><@}@>
                <@ if (material.type == 'IMG') {@>
                <a class="<@if(onlyOne){@>imgOne<@}@>" style="width: <@=width@>%;padding-bottom:<@=width@>%;" href="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src">
                    <@ if (isOrig) { @>
                        <img src="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>" />
                    <@ } else { @>
                        <img src="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@<@=imgSubStr@>" />
                    <@ } @>
                </a>
                <@ } else if(material.type == 'VIDEO') {@>
                <a style="width: <@=width@>%;padding-bottom:<@=width@>%;" class="video-container" href="<@=material.videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src" materialSrc="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>">
                    <strong>
                        <i class="glyphicon glyphicon-play-circle"></i>
                    </strong>
                        <img src="<@=material.videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@<@=imgSubStr@>" materialSrc="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>">
                    <span></span>
                </a>
                <@ } @>
                <@  });@> </div><@} @>
            <hr>
            <a class="feel-good" href="javascript:;" <@if(information.isFavor=='true'){@> style='color:#1BB38C;' <@}@> data-favor="<@=information.isFavor@>" data-id="<@=information.informationId@>"><i class="newSchool_icon newSchool_zan"></i><span><@=information.favorCount@></span></a>
        </li>
    <@});@>
</script>
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
    <ul class="activity-item clearfix">
        <li class="on ">
            <p><em><@=activityTags[activityTags.length-1]@></em> <span>（<@=count[activityTags.length-1]@>）</span></p>
        </li>
        <@ for(var i = 0;i < activityTags.length-1;i++){ @>
        <li class="" <@if(count[i] == 0){@> style="display:none" <@ } @> >
            <p><em><@=activityTags[i]@></em><span>（<@=count[i]@>）</span></p>
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
                        <div class="activity-age hide">
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
<div class="md-effect-1 reveal-modal" id="modal-ourStudent">
    <div class="md-content">
        <h4 class="lead-in">Our Students</h4>
        <div class="ourStudents">
                <ul class="studentList">
                    <li class="modalOurStudentMore"><a href="javascript:;" class="more">+<spring:message code="screen.left.ourstudentsmore"></spring:message></a></li>
                </ul>
            </div>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
