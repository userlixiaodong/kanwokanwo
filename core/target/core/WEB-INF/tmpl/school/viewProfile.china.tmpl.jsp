<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/template" id="biography-template">
    <ul>
        <li><strong>学校地址</strong><span><@if(location){@><@=location@><@}else{@>N/A<@}@></span></li>
        <li><strong>学校网址</strong><span><@if(webSite){@>
            <a class="biography-a" target="_blank" href="<@=webSite@>"><em><@=webSite@></em></a>
            <@}else{@>N/A<@}@></span></li>
        <li><strong>联系电话</strong><span><@if(phone){@><@=phone@><@}else{@>N/A<@}@></span></li>
        <li><strong>电子邮箱</strong><span><@if(linkEmail){@>
            <a class="biography-a" href="mailto:<@=linkEmail@>"><em><@=linkEmail@></em></a>
            <@}else{@>N/A<@}@></span></li>
        <li><strong>学校简介</strong><span><@if(biographyOther){@><@=biographyOther@><@}else{@>N/A<@}@></span></li>
        <li class="share-icon md-trigger" data-modal="modal-connect">
            <strong>联系方式 </strong>
            <a href="javascript:;"><em class="usficonfont usf-icon-facebook"></em></a>
            <a href="javascript:;"><em class="usficonfont usf-icon-twitter"></em></a>
            <a href="javascript:;"><em class="usficonfont usf-icon-xiangji"></em></a>
        </li>
        <li><strong>学校类型</strong><span><@if(schoolLevel){@><@ if (schoolLevel == 'HIGHSCHOOL') {@>高中<@}@><@ if (schoolLevel == 'JUNIORHIGHSCHOOL') {@>初中<@}@><@ if (schoolLevel == 'MIDDLEANDHIGHSCHOOL') {@>初高中<@}@><@}else{@>学校类型<@}@></span></li>
        <li><strong>是否寄宿</strong><span><@if(lodge == 0 || lodge == 1){@>
            <@if (lodge == 1) {@>是<@}@>
            <@if (lodge == 0) {@>否<@}@>
            <@}else{@>N/A<@}@></span></li>
        <li><strong>所在城市</strong><span><@if(city){@><@=city@><@}else{@>N/A<@}@></span></li>
        <li><strong>建校时间</strong><span><@if(createSchoolTime){@><@=createSchoolTime@><@}else{@>N/A<@}@></span></li>
        <li><strong>新生人数</strong><span><@if(newbornNum){@><@=newbornNum@><@}else{@>N/A<@}@></span></li>
        <li><strong>校园面积</strong><span><@if(schoolAcreage){@><@=schoolAcreage@><@}else{@>N/A<@}@></span></li>
        <li><strong>班级大小</strong><span><@if(classSize){@><@=classSize@><@}else{@>N/A<@}@></span></li>
        <li><strong>师资简介</strong><span><@if(teacherEducational){@><@=teacherEducational@><@}else{@>N/A<@}@></span></li>
        <li><strong>师生比例</strong><span><@if(teacherStudentRatio){@><@=teacherStudentRatio@><@}else{@>N/A<@}@></span></li>
    </ul>
</script>
<script type="text/template" id="schoolNameRank-template">
    <div class="school-avatar" id="myAvatarParent">
        <@if(avatarUrl){@><img src="<@=avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src" id="avatarSrc">
        <@}else{@><img src="/images/defaultAdmissionAvatar.jpg" id="avatarSrc"><@}@>
    </div>
    <a href="javascript:;" class="school_name"><@=name@></a>
    <%--<a href="//jinshuju.net/f/fZDcSo" target="_blank" class="reserve_iv"><i class="glyphicon glyphicon-facetime-video"></i>预约面试</a>--%>
    <a href="javascript:;" class="follow">
        <span id="followImg" <@ if ((window.loginUserId && window.isFollow) || window.loginUserId == window.schoolId) {@>
            style="color:red;"
        <@ } @> >
        <i class="newSchool_icon newSchool_xin"></i></span>关注（<span id="followCountSpan"><@=followCount@></span>）
    </a>
</script>

<script type="text/template" id="school-application-tmpl">
    <@
        var isPreview = true;
        var isChina = true;
    @>
    <ul>
        <li>
            <strong>
                招生程序
            </strong>
            <p><@=createTextHtml(enrollmentUrl, isPreview, isChina)@></p>
        </li>
        <li>
            <strong>
                咨询方式
            </strong>
            <p><@=createTextHtml(advice, isPreview, isChina)@></p>
        </li>
        <li>
            <strong>
                招生规模
            </strong>
            <p><@=createTextHtml(enrollmentScale, isPreview, isChina)@></p>
        </li>
        <li>
            <strong>
                截止时间
            </strong>
            <p><@=createTextHtml(deadline, isPreview, isChina)@></p>
        </li>
        <li>
            <strong>
                学费
            </strong>
            <p><@=createTextHtml(tuition, isPreview, isChina)@></p>
        </li>
        <li>
            <strong>
                升学指导服务
            </strong>
            <p><@=createTextHtml(studiesGuide, isPreview, isChina)@></p>
        </li>
        <li>
            <strong>
                课程类型
            </strong>
            <p><@=createTextHtml(courseType, isPreview, isChina)@></p>
        </li>
        <li>
            <strong>
                培养方案
            </strong>
            <p><@=createTextHtml(culturePlan, isPreview, isChina)@></p>
        </li>
        <li>
            <strong>
                课程体系
            </strong>
            <p><@=createTextHtml(courseSys, isPreview, isChina)@></p>
        </li>
        <li>
            <strong>
                往届录取情况
            </strong>
            <p><@=createTextHtml(admissionSituation, isPreview, isChina)@></p>
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
                } else {
                    width = 31.33333333333333;
                }@>
                <div class="informationReboxImg clearfix">
                <@_.each(information.materials, function(material, index) {
                @>
                <@ if (index == 2 && isClear) {@><div class="clearfix"></div><@}@>
                <@ if (material.type == 'IMG') {@>
                <a class="<@if(onlyOne){@>imgOne<@}@>" style="width: <@=width@>%;padding-bottom:<@=width@>%;max-width:100%; " href="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src">
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
            <a class="feel-good" href="javascript:;" <@if(information.isFavor=='true'){@> style='color:#1BB38C;' <@}@>  data-favor="<@=information.isFavor@>" data-id="<@=information.informationId@>"><i class="newSchool_icon newSchool_zan"></i><span><@=information.favorCount@></span></a>
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
                        <%--<div class="activity-age">
                            <@if(startDate){@><@=startDate@> — <@}@><@if(!endDate){@>Now<@}else{@><@=endDate@><@}@>
                        </div>--%>
                    </div>
                    <ul class="activity-item clearfix">
                        <@ for(var i = 0;i < activityTagList.length;i++){ @>
                        <li class=""><p><@= App.activityTags[parseInt(activityTagList[i].title)]@></p></li>
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
        <h4 class="lead-in">我们的学生</h4>
        <div class="ourStudents">
            <ul class="studentList">
                <li class="modalOurStudentMore"><a href="javascript:;" class="more">+更多</a></li>
            </ul>
        </div>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
