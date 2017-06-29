<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--MeetMe视频部分模板--%>
<script type="text/template" id="video_template">
    <@if(status == 'NORMAL'){ @>
    <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" poster="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>" data-setup="{}">
        <source src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" type='video/mp4'/>
    </video>
    <@}@>
    <@if(status == 'TRANSCODE'){ @>
    <img class="trans" src="/images/transcoding.jpg"/>
    <@}@>
</script>
<script type="text/template" id="add_video_template">
    <div class="clearfix">
        <div class="col-xs-7">
            <div class="add-video-description">
                <h5>Tips for your video:</h5>
                <p>Videos help you stand out from the crowd.</p>
                <p>Use your phone to record it. Be yourself.</p>
                <p>Share what you are passionate about.</p>
                <p class="p-b-blue"><a href="https://kanwo.daikeapp.com/kb/articles/1475" target="_blank">Still stumped? Check this out.</a></p>
                <div class="text-center"> <a class="md-trigger add-video-btn" data-modal="modal-myVideo" href="javascript:void(0);">Add
                    a video</a></div></div>
        </div>
        <div class="col-xs-5 text-center">
            <div class="video-inspiration">
                <h5>Need some inspiration?</h5>
                <a class="inspireVideo video-container">
                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/introVideoExample.jpg@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/videos/introVideoExample.mp4"></a>
                <a class="inspireVideo video-container">
                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/MeetMeDefaultImg.jpg@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/videos/MeetMe.mp4"></a>
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
                    <i class="glyphicon glyphicon-cloud-upload"></i><strong>Upload</strong></a>
            </div>
        </div>
    </div>
    <%--<div class='less-more-button col-lg-12 col-xs-12' style="display: none">more</div>--%>
</script>

<%--描述模板--%>
<script type="text/template" id="description-edit-template">
    <%--<@if(typeof description == 'undefined'){}else if(description == ''){@><div class="col-lg-8 col-xs-12 disabled "><div class="r-line"><a class="add-description modalLink"><i class="glyphicon glyphicon-align-left"></i><strong>Lazy guy</strong></a></div></div><@}else{@><div class="col-lg-8 col-xs-12 disabled"><div class="media-item-description"><p><@=description@></p></div></div><@}@>--%>
    <@if(typeof description == 'undefined'){}else if(description == ''){@>
    <div class="col-lg-8 col-xs-12 disabled ">
        <div class="r-line">
            <a class="md-trigger add-description modalLink text-center" <%--href="javascript:void(0);" data-module="<@=module@>"--%>>
            <i class="glyphicon glyphicon-align-left"></i><strong>Add Description</strong>
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
            <@if(status == 'NORMAL'){@>
            <img materialSrc="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" src="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src">
            <@}else if(status == 'TRANSCODE'){@>
            <img src="/images/transcoding_324.324.jpg"/>
            <@}@>
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
                class="glyphicon glyphicon-plus-sign"></i><strong>Add Activity</strong></a></div>
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
            <div class="col-lg-6 col-xs-12 text-right">
                <@if(startDate){@>
                <@=startDate@> —
                <@}@>
                <@if(!endDate){@>
                Now
                <@}else{@>
                <@=endDate@>
                <@}@>
            </div>
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

<%--biography 模板--%>
<script type="text/template" id="biographyEdit-template">
    <div class="clearfix">
        <div class="col-xs-12 text-center" id="myAvatarParent">
            <a class="md-trigger" data-modal="modal-avatar" href="javascript:void(0);">
                <@if(avatar){@><img width="200" height="200" src="<@=avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src" id="avatarSrc">
                <@}else{@><img width="200" height="200" src="/images/defaultavatar.jpg" id="avatarSrc"><@}@>
            </a>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <h2><@=name@></h2>
    </div>
    <ul class="col-xs-12 icon-list">
        <li>
            <i class="glyphicon glyphicon-map-marker"></i>
            <a class="md-trigger modifyBiography" href="javascript:void(0);">
                <p><span>
                <@if(location){@><@=location@><@}else{@>N/A<@}@>
            </span></p>
            </a>
        </li>
        <li>
            <i class="glyphicon glyphicon-bed"></i>
            <a class="md-trigger modifyBiography" href="javascript:void(0);">
                <p>
                    <@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@>
                </p>
            </a>
        </li>
        <li>
            <i class="glyphicon glyphicon-education"></i>
            <a class="md-trigger modifyBiography" href="javascript:void(0);">
                <p><span>
            <@if(graduation){@><@=graduation@><@}else{@>N/A<@}@>
            </span></p>
            </a>
        </li>
        <li>
            <i class="glyphicon glyphicon-tower"></i>
            <a class="md-trigger modifyBiography" href="javascript:void(0);">
                <p><span>
            <@if(hobby){@><@=hobby@><@}else{@>N/A<@}@>
            </span></p>
            </a>
        </li>
        <li><i class="glyphicon glyphicon-tags"></i>
            <em id="scores" class="md-trigger" data-modal="modal-score" style="cursor: pointer">Score</em>
        </li>
    </ul>
</script>

<%--各类弹框模板--%>
<script type="text/template" id="editDescription-template">
    <div class="md-effect-1 reveal-modal md-show" id="modal-description">
        <div class="md-content">
            <h4 class="lead-in">DESCRIBE</h4>
            <textarea rows="4" id="descriptionContent" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span></span>
            </div>
            <input type="submit" value="Update" class="reveal-button" id="descriptionSubmit">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="updateFileTitle-template">
    <div class="md-effect-1 reveal-modal md-show" id="modal-update-title">
        <div class="md-content">
            <h4 class="lead-in">DESCRIBE</h4>
            <input type="hidden" id="materialIndex">
            <textarea rows="4" id="materialTitle" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>300</span>
            </div>
            <input type="submit" value="Update" class="reveal-button" id="materialDescriptionSubmit">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="chooseFileType-template">
    <div class="md-effect-1 reveal-modal modalLink md-show" id="modal-img">
        <div class="md-content">
            <h4 class="lead-in">ADD MEDIA</h4>
            <ul class="subview clearfix text-center">
                <li><a class="modalLink" data-modal="IMG" href="javascript:void(0);" data-module=""><i
                        class="glyphicon glyphicon-camera"></i><label>Photo</label></a></li>
                <li><a class="modalLink" data-modal="VIDEO" href="javascript:void(0);" data-module=""><i
                        class="glyphicon glyphicon-facetime-video"></i><label>Video</label></a></li>
                <li class="border-no"><a class="modalLink" data-modal="DOC" href="javascript:void(0);" data-module=""><i
                        class="glyphicon glyphicon-list-alt"></i><label>Document</label></a></li>
            </ul>
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="IMG-template">
    <div class="md-effect-1 reveal-modal file-upload md-show" id="modal-img">
        <div class="md-content">
            <h4 class="lead-in">NEW IMAGE<em>Each image size must not exceed 10MB</em></h4>
            <div id="uploadImgsContainer">
                <div class="file-upload-btn">
                <span>
                    <i class="glyphicon glyphicon-folder-open"></i>
                    <span class="file-select">Choose File</span>
                </span>
                    <input type="file" value="" id="imgFile" name="file" accept=".jpg,.jpeg,.png,.gif" multiple="multiple">
                </div>
            </div>
            <label for="title">IMAGE Title</label>
        <textarea rows="3" id="imgTitle" oninput="limitWordsCounts($(this))"
                  onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>150</span>
            </div>
            <input type="submit" value="Save" class="reveal-button" id="uploadImgSave">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="VIDEO-template">
    <div class="md-effect-1 reveal-modal file-upload md-show" id="modal-video">
        <div class="md-content">
            <h4 class="lead-in">NEW VIDEO<em>Each video size must not exceed 500MB</em></h4>
            <div class="file-upload-btn">
                <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
                <input type="file" value="" name="file" id="videoFile" accept=".mp4,.mov,.mkv,.flv,.3gp,.wmv,.asf,.webm,.mpg,.avi">
            </div>
            <label for="title">VIDEO Title</label>
            <textarea rows="3" id="videoTitle" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>150</span>
            </div>
            <input type="submit" value="Save" class="reveal-button" id="uploadVideoSave">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="DOC-template">
    <div class="md-effect-1 reveal-modal file-upload md-show" id="modal-doc">
        <div class="md-content">
            <h4 class="lead-in">NEW DOCUMENT<em>Each document size must not exceed 20MB</em></h4>
            <div id="uploadDocContainer">
                <div class="file-upload-btn">
                    <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
                    <input type="file" value="" id="docFile" name="file" accept=".docx,.doc.exl,.pdf" multiple="multiple">
                </div>
            </div>
            <label for="title">Document Title</label>
            <textarea rows="3" id="docTitle" oninput="limitWordsCounts($(this))"
                      onpropertychange="limitWordsCounts($(this))"></textarea>
            <div class="text-right">
                <span>150</span>
            </div>
            <input type="submit" value="Save" class="reveal-button" id="uploadDocSave">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="editActivity_template">
    <div class="md-effect-1 reveal-modal md-show activity-item-sort" id="">
        <div class="md-content">
            <h4 class="lead-in">Edit Activity</h4>

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

            <p class="clearfix"><input type="text" value="<@=startDate@>" class="startDate date fl"><input type="text" value="<@=endDate@>" class="endDate date fr"></p>
            <input type="button" value="Save" class="reveal-button modifyActivity">
            <button id="close-modal-4" class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="newActivity_template">
    <div class="md-effect-1 reveal-modal md-show" >
        <div class="md-content">
            <h4 class="lead-in">New Activity</h4>

            <p>Activities are the things that you love doing. Think sports, clubs, hobbies, etc. Bring them to life with images.<strong class="dis-bolck">Tagged to your activities</strong></p>
            <ul class="activity-item-tips clearfix">
                <@ for(var i = 0;i < App.activityTags.length-1;i++){ @>
                <li value="<@=i@>">
                    <p><@=App.activityTags[i]@></p>
                </li>
                <@ } @>
            </ul>
            <label>Title</label>
            <input type="text" class="title">
            <label>How long have you been doing this?</label>

            <p class="clearfix activity-add-time">
                <input type="text" class="startDate date fl">
                <input type="text" class="endDate date fr"></p>
            <input type="button" value="Save" class="reveal-button addActivity">
            <button id="close-modal-4" class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="biographyEditModal_template">
    <div class="md-effect-1 reveal-modal md-show edit-user-info">
        <div class="md-content">
            <h4 class="lead-in">EDIT BIO</h4>
            <label>Name</label>
            <input type="text" value="<@=name@>" id="studentName">

            <div class="clearfix">
                <dl class="fl">
                    <dt><i class="glyphicon glyphicon-map-marker"></i>Location</dt>
                    <dd><input type="text" id="location" value="<@=location@>"></dd>
                </dl>
                <dl class="fr">
                    <dt><i class="glyphicon glyphicon-bed"></i>Current School</dt>
                    <dd><input type="text" id="currentSchool" value="<@=currentSchool@>"></dd>
                </dl>
            </div>
            <div class="clearfix">
                <dl class="fl">
                    <dt><i class="glyphicon glyphicon-education"></i>Graduation Year</dt>
                    <dd><input type="text" id="graduationYear" value="<@=graduation@>"></dd>
                </dl>
                <dl class="fr">
                    <dt><i class="glyphicon glyphicon-tower"></i>Major of Interest</dt>
                    <dd><input type="text" id="hobby" value="<@=hobby@>"></dd>
                </dl>
            </div>
            <input type="submit" value="Save" class="reveal-button">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
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
