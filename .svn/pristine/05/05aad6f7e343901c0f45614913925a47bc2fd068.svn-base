<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--MeetMe视频部分模板--%>
<script type="text/template" id="video_template">
    <%--<@if(status == 'NORMAL'){ @>--%>
    <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" poster="<@=videoPreviewImg@>" data-setup="{}">
        <source src="<@=materialSrc@>" type='video/mp4'/>
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
                <h5>视频小窍门：</h5>
                <p>人们都说一图胜千言，那一个视频呢？</p>
                <p>用3-5分钟的视频来展现您的学校最吸引人的地方</p>
                <p>展现校园、学生和老师最真实而独特的一面</p>
                <div class="text-center"> <a class="md-trigger add-video-btn" data-modal="modal-myVideo" href="javascript:void(0);">添加视频</a></div></div>
        </div>
        <div class="col-xs-5 text-center">
            <div class="video-inspiration">
                <h5>需要些灵感？</h5>
                <a class="inspireVideo video-container">
                    <i class="glyphicon glyphicon-play-circle"></i>
                    <img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/admission_sample_3.png@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/admission_sample_3.mp4"></a>
                <a class="inspireVideo video-container">
                    <i class="glyphicon glyphicon-play-circle"></i>
                    <img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/admission_sample_4.png@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/schoolvideo/admission_sample_4.mp4"></a>
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
                    <i class="glyphicon glyphicon-cloud-upload"></i><strong>上传</strong></a>
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
                <i class="glyphicon glyphicon-align-left"></i><strong>添加描述</strong>
            </a>
        </div>
    </div>
    <@}else{@>
    <div class="col-lg-8 col-xs-12 disabled">
        <div class="media-item-description">
            <a class="md-trigger modalLink" data-modal="modal-1" href="javascript:void(0);" <%--data-module="<@=module@>" data-type="description"--%>>
                <p><@=description@></p>
            </a>
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
                class="glyphicon glyphicon-plus-sign"></i><strong>添加其他信息</strong></a></div>
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
            <div class="col-lg-6 col-xs-12 text-left"><@=title@></div>
            <%--<div class="col-lg-6 col-xs-12 text-right">
                <@if(startDate){@>
                <@=startDate@> —
                <@}@>
                <@if(!endDate){@>
                Now
                <@}else{@>
                <@=endDate@>
                <@}@>
            </div>--%>
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
            <h4 class="lead-in">描述</h4>
            <textarea rows="4" id="descriptionContent" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span></span>
            </div>
            <input type="submit" value="更新" class="reveal-button" id="descriptionSubmit">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="updateFileTitle-template">
    <div class="md-effect-1 reveal-modal md-show" id="modal-update-title">
        <div class="md-content">
            <h4 class="lead-in">描述</h4>
            <input type="hidden" id="materialIndex">
            <textarea rows="4" id="materialTitle" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>300</span>
            </div>
            <input type="submit" value="更新" class="reveal-button" id="materialDescriptionSubmit">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="chooseFileType-template">
    <div class="md-effect-1 reveal-modal modalLink md-show" id="modal-img">
        <div class="md-content">
            <h4 class="lead-in">添加多媒体</h4>
            <ul class="subview clearfix text-center">
                <li><a class="modalLink" data-modal="IMG" href="javascript:void(0);" data-module=""><i
                        class="glyphicon glyphicon-camera"></i><label>图片</label></a></li>
                <li><a class="modalLink" data-modal="VIDEO" href="javascript:void(0);" data-module=""><i
                        class="glyphicon glyphicon-facetime-video"></i><label>视频</label></a></li>
                <li class="border-no"><a class="modalLink" data-modal="DOC" href="javascript:void(0);" data-module=""><i
                        class="glyphicon glyphicon-list-alt"></i><label>文档</label></a></li>
            </ul>
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="IMG-template">
    <div class="md-effect-1 reveal-modal file-upload md-show" id="modal-img">
        <div class="md-content">
            <h4 class="lead-in">添加图片<i class="popupTips">每个图像大小不能超过10mb</i></h4>
            <div id="uploadImgsContainer">
                <div class="file-upload-btn">
                <span>
                    <i class="glyphicon glyphicon-folder-open"></i>
                    <span class="file-select">选择文件</span>
                </span>
                    <input type="file" value="" id="imgFile" name="file" accept=".jpg,.jpeg,.png,.gif" multiple="multiple">
                </div>
            </div>
            <label for="title">图片描述</label>
        <textarea rows="3" id="imgTitle" oninput="limitWordsCounts($(this))"
                  onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>150</span>
            </div>
            <input type="submit" value="上传" class="reveal-button" id="uploadImgSave">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="VIDEO-template">
    <div class="md-effect-1 reveal-modal file-upload md-show" id="modal-video">
        <div class="md-content">
            <h4 class="lead-in">添加视频<i class="popupTips">每个视频大小不能超过500MB</i></h4>
            <div class="file-upload-btn">
                <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">选择文件</span></span>
                <input type="file" value="" name="file" id="videoFile" accept=".mp4,.mov,.mkv,.flv,.3gp,.wmv,.asf,.webm,.mpg,.avi">
            </div>
            <label for="title">视频描述</label>
            <textarea rows="3" id="videoTitle" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>150</span>
            </div>
            <input type="submit" value="上传" class="reveal-button" id="uploadVideoSave">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="DOC-template">
    <div class="md-effect-1 reveal-modal file-upload md-show" id="modal-doc">
        <div class="md-content">
            <h4 class="lead-in">添加文档<i class="popupTips">每个文档大小不能超过20MB</i></h4>
            <div id="uploadDocContainer">
                <div class="file-upload-btn">
                    <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">选择文件</span></span>
                    <input type="file" value="" id="docFile" name="file" accept=".docx,.doc.exl,.pdf" multiple="multiple">
                </div>
            </div>
            <label for="title">文档描述</label>
            <textarea rows="3" id="docTitle" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>150</span>
            </div>
            <input type="submit" value="上传" class="reveal-button" id="uploadDocSave">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="editActivity_template">
    <div class="md-effect-1 reveal-modal md-show" id="">
        <div class="md-content">
            <h4 class="lead-in">编辑</h4>

            <%--<p>Activities are the things that you love doing. Think sports, clubs, hobbies, etc. Bring them to life with images.<strong class="dis-bolck">Tagged to your activities</strong></p>--%>
            <ul class="activity-item-tips clearfix">
                <@ for(var i = 0;i < App.activityTags.length-1;i++){ @>
                <li value="<@=i@>" class="<@ for(var j = 0;j < activityTagList.length;j++){ if(i == parseInt(activityTagList[j].title)){ @> on <@ break;}}@>">
                    <p><@=App.activityTags[i]@></p>
                </li>
                <@ } @>
            </ul>
            <label>Title</label>
            <input type="text" class="title" value="<@=title@>">
            <label style="display:none !important;">How long have you been doing this?</label>

            <p class="clearfix activity-add-time hide"><input type="text" value="<@=startDate@>" class="startDate date fl"><input type="text" value="<@=endDate@>" class="endDate date fr"></p>
            <input type="button" value="Save" class="reveal-button mt20 modifyActivity">
            <button id="close-modal-4" class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="newActivity_template">
    <div class="md-effect-1 reveal-modal md-show" >
        <div class="md-content">
            <h4 class="lead-in">新建其他信息</h4>

            <%--<p>Activities are the things that you love doing. Think sports, clubs, hobbies, etc. Bring them to life with images.<strong class="dis-bolck">Tagged to your activities</strong></p>--%>
            <ul class="activity-item-tips clearfix">
                <@ for(var i = 0;i < App.activityTags.length-1;i++){ @>
                <li value="<@=i@>">
                    <p><@=App.activityTags[i]@></p>
                </li>
                <@ } @>
            </ul>
            <label>标题</label>
            <input type="text" class="title">
            <label style="display: none !important;">How long have you been doing this?</label>

            <p class="clearfix activity-add-time hide">
                <input type="text" class="startDate date fl">
                <input type="text" class="endDate date fr"></p>
            <input type="button" value="Save" class="reveal-button addActivity">
            <button id="close-modal-4" class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="score_template">
    <div class="add-score-content">
        <p>
            <select>
                <option value="">Choose your test:</option>
            </select>
            <a href="javascript:(0);" class="add-score-sort-delete"><i class="glyphicon glyphicon-trash"></i></a>
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
                <video class="video-js vjs-default-skin" autoplay="autoplay" id="video-obj" controls preload="none" poster="<@=posterImgSrc@>" data-setup="{}">
                    <source src="<@=videoSrc@>" type='video/mp4'/>
                </video>
                <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
            </div>
        </div>
    </div>
</script>
<div class="md-effect-1 reveal-modal file-upload" id="modal-avatar">
    <div class="md-content">
        <h4 class="lead-in">个人资料照片</h4>

        <div class="text-center">
            <div class="file-upload-btn">
                <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">请选择文件</span></span>
                <input type="file" id="avatarId" name="file" accept=".jpg,.jpeg,.png,.gif">
            </div>
        </div>
        <input type="submit" value="上传" class="reveal-button">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal file-upload" id="modal-schoolbgimg">
    <div class="md-content">
        <h4 class="lead-in">学校背景图片(1920*658)</h4>

        <div class="text-center">
            <div class="file-upload-btn">
                <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">请选择文件</span></span>
                <input type="file" id="schoolBgImgIn" name="file" accept=".jpg,.jpeg,.png,.gif">
            </div>
        </div>
        <input type="submit" id="schoolBgImgBtn" value="上传" class="reveal-button">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<%-- new school --%>
<%-- avatar school name and school rank --%>
<script type="text/template" id="schoolNameRank-template">
    <div class="school-avatar md-trigger" data-modal="modal-avatar" id="myAvatarParent" style="cursor: pointer;">
        <@if(avatarUrl){@><img src="<@=avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src" id="avatarSrc">
        <@}else{@><img src="/images/defaultAdmissionAvatar.jpg" id="avatarSrc"><@}@>
    </div>
    <a href="javascript:;" class="school_name md-trigger" data-modal="school-name"><@=name@></a>
    <%--<a href="javascript:;" class="rank md-trigger" data-modal="school-name"><@if(schoolRank){@><@=schoolRank@><@}else{@>schoolRank<@}@></a>--%>
   <%-- <a href="//jinshuju.net/f/fZDcSo" target="_blank" class="reserve_iv"><i class="glyphicon glyphicon-facetime-video"></i><span>预约面试</span></a>--%>
    <a href="javascript:;" class="follow"><i class="newSchool_icon newSchool_xin"></i><span>关注（<@=followCount@>）</span></a>

    <div class="md-effect-1 reveal-modal file-upload edit-school-name" id="school-name">
        <div class="md-content">
            <h4 class="lead-in">编辑</h4>

            <div class="clearfix">
                <dl class="fl"><dt>名字</dt>
                    <dd><input type="text" id="schoolName" value="<@=name@>"></dd></dl>
                <dl class="fr hide"><dt>School ranking</dt>
                    <dd><input type="text" id="schoolRank" value="<@=schoolRank@>"></dd></dl>
            </div>
            <input type="button" id="updateNameBtn" value="保存" class="reveal-button2">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="biographyEdit-template">
    <ul>
        <li><strong>学校地址</strong><span><@if(location){@><@=location@><@}else{@>请补充<@}@></span></li>
        <li><strong>学校网址</strong><span><@if(webSite){@><@=webSite@><@}else{@>请补充<@}@></span></li>
        <li><strong>联系电话</strong><span><@if(phone){@><@=phone@><@}else{@>请补充<@}@></span></li>
        <li><strong>电子邮箱</strong><span><@if(linkEmail){@><@=linkEmail@><@}else{@>请补充<@}@></span></li>
        <li><strong>学校简介</strong><span><@if(biographyOther){@><@=biographyOther@><@}else{@>请补充<@}@></span></li>
        <li class="share-icon">
            <strong>联系方式 </strong>
            <a href="javascript:;"><em class="usficonfont usf-icon-facebook"></em></a>
            <a href="javascript:;"><em class="usficonfont usf-icon-twitter"></em></a>
            <a href="javascript:;"><em class="usficonfont usf-icon-xiangji"></em></a>
        </li>
        <li><strong>学校类型</strong><@if(schoolLevel){@><@ if (schoolLevel == 'HIGHSCHOOL') {@>高中<@}@><@ if (schoolLevel == 'JUNIORHIGHSCHOOL') {@>初中<@}@><@ if (schoolLevel == 'MIDDLEANDHIGHSCHOOL') {@>初高中<@}@><@}else{@>请补充<@}@></li>
        <li><strong>是否寄宿</strong><@if(lodge == 0 || lodge == 1){@>
            <@if (lodge == 1) {@>是<@}@>
            <@if (lodge == 0) {@>否<@}@>
            <@}else{@>是否寄宿<@}@></li>
        <li><strong>所在城市</strong><@if(city){@><@=city@><@}else{@>请补充<@}@></li>
        <li><strong>建校时间</strong><@if(createSchoolTime){@><@=createSchoolTime@><@}else{@>请补充<@}@></li>
        <li><strong>新生人数</strong><@if(newbornNum){@><@=newbornNum@><@}else{@>请补充<@}@></li>
        <li><strong>校园面积</strong><@if(schoolAcreage){@><@=schoolAcreage@><@}else{@>请补充<@}@></li>
        <li><strong>班级大小</strong><@if(classSize){@><@=classSize@><@}else{@>请补充<@}@></li>
        <li><strong>师资简介</strong><@if(teacherEducational){@><@=teacherEducational@><@}else{@>请补充<@}@></li>
        <li><strong>师生比例</strong><@if(teacherStudentRatio){@><@=teacherStudentRatio@><@}else{@>请补充<@}@></li>
    </ul>

    <div class="md-effect-1 reveal-modal edit-user-info" id="school-biography">
        <div class="md-content">
            <h4 class="lead-in">基本信息</h4>
            <form>
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>学校地址</dt>
                        <dd><input type="text" placeholder="" id="schoolLocation" value="<@if(location){@><@=location@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>学校网址</dt>
                        <dd><input type="text" placeholder="http://" id="schoolWebSite" value="<@if(webSite){@><@=webSite@><@}@>"></dd></dl>
                </div>
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-earphone"></i>联系电话</dt>
                        <dd><input type="text" placeholder="010-9999999" id="schoolPhone" value="<@if(phone){@><@=phone@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-envelope"></i>电子邮箱</dt>
                        <dd><input type="text" placeholder="name@example.com" id="schoolLinkEmail" value="<@if(linkEmail){@><@=linkEmail@><@}@>"></dd></dl>
                </div>

                <label>&nbsp;<i class="glyphicon glyphicon-equalizer"></i>&nbsp;&nbsp;学校简介</label>
                <textarea id="schoolOther" maxlength="300"><@if(biographyOther){@><@=biographyOther@><@}@></textarea>

                <label><i class="s-iconfont s-icon-twitter"></i>Twitter</label>
                <input type="text" placeholder="twitter" value="<@if(linkTwitter){@><@=linkTwitter@><@}@>" id="linkTwitter">

                <label><i class="s-iconfont s-icon-facebook"></i>Facebook</label>
                <input type="text" placeholder="facebook" value="<@if(linkFacebook){@><@=linkFacebook@><@}@>" id="linkFacebook">

                <label><i class="s-iconfont s-icon-instagram"></i>Instagram</label>
                <input type="text" placeholder="instagram" value="<@if(linkInstagram){@><@=linkInstagram@><@}@>" id="linkInstagram">

                <div class="clearfix">
                    <dl class="fl mb0"><dt><i class="glyphicon glyphicon-th-list"></i>学校类型</dt>
                        <dd><input type="radio" <@if(schoolLevel && schoolLevel == 'HIGHSCHOOL') {@>checked<@}@> name="schoolLevel" value="HIGHSCHOOL" />高中
                            <input type="radio" <@if(schoolLevel && schoolLevel == 'JUNIORHIGHSCHOOL') {@>checked<@}@> name="schoolLevel" value="JUNIORHIGHSCHOOL" />初中
                            <input type="radio" <@if(schoolLevel && schoolLevel == 'MIDDLEANDHIGHSCHOOL') {@>checked<@}@> name="schoolLevel" value="MIDDLEANDHIGHSCHOOL" />初高中
                        </dd></dl>
                    <dl class="fr mb0"><dt><i class="glyphicon glyphicon-th-list"></i>是否寄宿</dt>
                        <dd>
                            <input type="radio" <@if((lodge == 0 || lodge == 1) && lodge == 0) {@>checked<@}@> name="schoolIsLodge" value="0" />走读
                            <input type="radio" <@if((lodge == 0 || lodge == 1) && lodge == 1) {@>checked<@}@> name="schoolIsLodge" value="1" />寄宿
                        </dd></dl>
                </div>
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>所在城市</dt>
                        <dd>
                            <select id="schoolProvince"></select>
                            <select id="schoolCity" class="hide"></select>
                            <select id="schoolArea" class="hide"></select>
                        </dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-dashboard"></i>建校时间</dt>
                        <dd><input type="text" value="<@if(createSchoolTime){@><@=createSchoolTime@><@}@>" id="schoolCreateTime"></dd></dl>
                </div>

                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-grain"></i>新生人数</dt>
                        <dd><input type="text" placeholder="60人" id="schoolNewbornNum" value="<@if(newbornNum){@><@=newbornNum@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-globe"></i>校园面积</dt>
                        <dd><input type="text" placeholder="150,000平米" id="schoolAcreage" value="<@if(schoolAcreage){@><@=schoolAcreage@><@}@>"></dd></dl>
                </div>
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-oil"></i>班级大小</dt>
                        <dd><input type="text" placeholder="10人小班" id="schoolClassSize" value="<@if(classSize){@><@=classSize@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-pawn"></i>师资简介</dt>
                        <dd><input type="text" placeholder="80%以上硕士学历" id="teacherEducational" value="<@if(teacherEducational){@><@=teacherEducational@><@}@>"></dd></dl>
                </div>
                <label><i class="glyphicon glyphicon-list"></i>&nbsp;&nbsp;师生比例</label>
                <input type="text" placeholder="1:8" value="<@if(teacherStudentRatio){@><@=teacherStudentRatio@><@}@>" id="teacherStudentRatio">

                <input type="button" value="保存" class="mt12 reveal-button2">
            </form>
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="school-application-tmpl">
    <@
        var isPreview = false;
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
    <div class="md-effect-1 reveal-modal edit-user-info" id="school-application">
        <div class="md-content">
            <h4 class="lead-in">课程和招生信息</h4>
            <form>
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-link"></i>招生程序</dt>
                        <dd><input maxlength="100" placeholder="http://" type="text" id="schoolEnrollmentUrl" value="<@if(enrollmentUrl){@><@=enrollmentUrl@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-earphone"></i>咨询方式</dt>
                        <dd><input maxlength="100" placeholder="010-9999999，李老师" type="text" id="schoolAdvice" value="<@if(advice){@><@=advice@><@}@>"></dd></dl>
                </div>
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-th"></i>招生规模</dt>
                        <dd><input maxlength="100" placeholder="150人" type="text" id="schoolEnrollmentScale" value="<@if(enrollmentScale){@><@=enrollmentScale@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-dashboard"></i>截止时间</dt>
                        <dd><input type="text" placeholder="报名时间：7月2日：8:30-11:30 13:30-16:30" id="schoolDeadline" value="<@if(deadline){@><@=deadline@><@}@>"></dd></dl>
                </div>

                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-piggy-bank"></i>学费</dt>
                        <dd><input type="text" placeholder="8万每年" id="schoolTuition" value="<@if(tuition){@><@=tuition@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-th-list"></i>培养方案</dt>
                        <dd><input type="text" placeholder="http://" id="schoolStudiesGuide" value="<@if(culturePlan){@><@=culturePlan@><@}@>"></dd></dl>
                </div>

                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-th-list"></i>课程类型</dt>
                        <@var courseTypeSelect = false;@>
                        <dd style="position: relative;"><input type="radio" name="schoolCourseType" <@if(courseType && courseType == 'A-level'){courseTypeSelect=true;@>checked<@}@> value="A-level" />A-level
                            <input type="radio" name="schoolCourseType" <@if(courseType && courseType == 'IB'){courseTypeSelect=true;@>checked<@}@> value="IB" />IB
                            <input type="radio" name="schoolCourseType" <@if(courseType && courseType == 'GAC'){courseTypeSelect=true;@>checked<@}@> value="GAC" />GAC
                            <input type="radio" name="schoolCourseType" <@if(courseType && courseType == 'AP'){courseTypeSelect=true;@>checked<@}@> value="AP" />AP
                            <input type="radio" name="schoolCourseType" <@if(courseType && !courseTypeSelect){@>checked<@}@> value="-1" id="courseTypeOther" />其它
                            <input type="text" class="<@if(courseType && courseTypeSelect){@>hide<@}@>" value="<@if(courseType && !courseTypeSelect){@><@=courseType@><@}@>" id="courseTypeOtherIn" />
                        </dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-folder-close"></i>升学指导服务</dt>
                        <dd>
                            <input type="radio" name="schoolStudiesGuide" <@if(studiesGuide && studiesGuide == '有'){@>checked<@}@> value="有" />有
                            <input type="radio" name="schoolStudiesGuide" <@if(studiesGuide && studiesGuide == '无'){@>checked<@}@> value="无" />无
                        </dd></dl>
                </div>

                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-link"></i>课程体系</dt>
                        <dd><input type="text" placeholder="http://" id="schoolCourseSys" value="<@if(courseSys){@><@=courseSys@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>往届录取情况</dt>
                        <dd><input type="text" placeholder="90%以上录取美国前50大学" id="schoolAdmissionSituation" value="<@if(admissionSituation){@><@=admissionSituation@><@}@>"></dd></dl>
                </div>

                <input type="button" value="保存" class="reveal-button2">
            </form>
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="informationItem-template">
    <@_.each(informationList, function(information){
    @>
    <li class="clearfix">
        <div class="col-lg-10 col-md-10 col-xs-10 record-con">
            <p><@=information.text@></p>
            <time><@=information.createTime@>
            </time>

                <@ if (information.materials && information.materials.length > 0) {
                    var width = 0;
                    var isClear = false;
                    var imgSubStr = '1e_1c_0o_0l_296h_296w_90q.src';
                    var onlyOne = false;
                    var isOrig = false;
                if (information.materials.length == 4 || information.materials.length == 2) {
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
                <a class="<@if(onlyOne){@>imgOne<@}@>" style="width: <@=width@>%;padding-bottom:<@=width@>%; " href="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src">
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


        </div>
        <div class="col-lg-2 col-md-2 col-xs-2 msg-delete">
            <a class="message-btn-down" ><i class="glyphicon glyphicon-menu-down"></i></a>
            <div class="message-btn-down-content">
                <button class="informationItem" data-id="<@=information.informationId@>">删除</button>
            </div>
        </div>
        <hr>
        <a class="feel-good" href="javascript:;"><i class="newSchool_icon newSchool_zan"></i><@=information.favorCount@></a>
    </li>
    <@});@>
</script>