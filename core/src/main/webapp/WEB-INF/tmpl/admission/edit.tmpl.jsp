<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- left template --%>
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
<!-- 上传文档 -->
<script type="text/template" id="uploadDoc_template">
    <div class="file-upload-btn">
        <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
        <input type="file" value="" id="docFile" name="file" accept=".docx,.doc.exl,.pdf" multiple="multiple">
    </div>
</script>
<!-- 上传图片 -->
<script type="text/template" id="uploadImg_template">
    <div class="file-upload-btn">
        <span>
            <i class="glyphicon glyphicon-folder-open"></i>
        <span class="file-select">Choose File</span>
        </span>
        <input type="file" value="" id="imgFile" name="file" accept=".jpg,.jpeg,.png,.gif" multiple="multiple">
    </div>
</script>

<!-- TOEFL , IELTS 考试-->
<script type="text/template" id="score_item_template1">
    <dl><dt>total</dt><dd><input type="text" value="" name="total"></dd></dl>
    <dl><dt>Reading</dt><dd><input type="text" value="" name="Reading"></dd></dl>
    <dl><dt>Listening</dt><dd><input type="text" value="" name="Listening"></dd></dl>
    <dl><dt>Speaking</dt><dd><input type="text" value="" name="Speaking"></dd></dl>
    <dl><dt>Writing</dt><dd><input type="text" value="" name="Writing"></dd></dl>
</script>
<!-- GRE , GMAT 考试-->
<script type="text/template" id="score_item_template2">
    <dl><dt>total</dt><dd><input type="text" value=""  name="total"></dd></dl>
    <dl><dt>Verbal</dt><dd><input type="text" value="" name="Verbal"></dd></dl>
    <dl><dt>Quantitative</dt><dd><input type="text" value="" name="Quantitative"></dd></dl>
    <dl><dt>Writing</dt><dd><input type="text" value="" name="Writing"></dd></dl>
</script>
<!-- SAT 考试-->
<script type="text/template" id="score_item_template3">
    <dl><dt>total</dt><dd><input type="text" value="" name="total"></dd></dl>
    <dl><dt>Reading</dt><dd><input type="text" value="" name="Reading"></dd></dl>
    <dl><dt>Mathematics</dt><dd><input type="text" value="" name="Mathematics"></dd></dl>
    <dl><dt>Writing</dt><dd><input type="text" value="" name="Writing"></dd></dl>
</script>
<script type="text/template" id="remarkList_template">
    <@_.each(remarks, function(remark,title,index){ @>
    <li><@=title@>（<@=remark.length@>）
        <div class="tips text-center">
            <@ _.each(remark, function(item,index){ @>
            <dl>
                <dt><a href="/<@=item.fromPublicUri@>" target="_blank"><img src="<@=item.fromAvatar ? item.fromAvatar:'/images/defaultavatar.jpg'@>"></a></dt>
                <dd><a href="/<@=item.fromPublicUri@>" target="_blank"><@=item.fromPublicUri@></a></dd>
            </dl>
            <@ }) @>
        </div>
    </li>
    <@ }) @>
</script>

<%-- right template --%>
<script type="text/template" id="video_template">
    <@if(status == 'NORMAL'){ @>
    <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" poster="<@=videoPreviewImg@>" data-setup="{}">
        <source src="<@=materialSrc@>" type='video/mp4'/>
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
                <p>Could be a video tour of your campus.</p>
                <p class="p-b-blue"><a href="https://kanwo.daikeapp.com/kb/articles/1475" target="_blank">Still stumped? Check this out.</a></p>
                <div class="text-center"> <a class="md-trigger add-video-btn" data-modal="modal-3" href="javascript:void(0);">Add
                    a video</a></div></div>
        </div>
        <div class="col-xs-5 text-center">
            <div class="video-inspiration">
                <h5>Need some inspiration?</h5>
                <a class="inspireVideo" data-modal="modal-video1">
                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/admission_sample_1.jpg@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/videos/admission_sample_1.mp4"></a>
                <a class="inspireVideo" data-modal="modal-26">
                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/admission_sample_2.jpg@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/videos/admission_sample_2.mp4"></a>
            </div>
        </div>
    </div>
</script>

<!-- myschool -->
<script type="text/template" id="myschool_template">
    <@if(typeof description == 'undefined' || description == ''){@>
        <div class="col-lg-8 col-xs-12 disabled ">
            <div class="r-line">
                <a class="md-trigger add-description modalLink text-center" data-modal="modal-1" href="javascript:void(0);" data-module="<@=module@>">
                    <i class="glyphicon glyphicon-align-left"></i><strong>Add Description</strong>
                </a>
            </div>
        </div>
    <@}else{@>
        <div class="col-lg-8 col-xs-12 disabled">
            <div class="media-item-description">
                <a class="md-trigger modalLink" data-modal="modal-1" href="javascript:void(0);" data-module="<@=module@>" data-type="description">
                    <p><@=description@></p>
                </a>
            </div>
        </div>
    <@}@>
     <@if(typeof materials != 'undefined' && materials && materials.length > 0){@>
    <@ _.each(materials, function(material,index){ @>
    <@if(material.type == 'IMG'){@>
    <div class="col-lg-4 col-xs-6" draggable="true" style="display: block;">
        <div class="edit-hover"><a class="zoom" title="<@=material.title@>" href="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src"><img src="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src"></a>
            <div class="controls clearfix" style="opacity: 0;">
                <div class="fl">
                    <a class="controls-move"><i class="glyphicon glyphicon-move"></i></a>
                </div>
                <div class="fr">
                    <a class="md-trigger add-upload controls-delete"  data-module="<@=module@>" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i></a>
                    <a class="md-trigger add-upload controls-edit modalLink"  data-modal="modal-update-title" href="javascript:void(0);" data-module="<@=module@>"><i class="glyphicon glyphicon-edit"></i></a>
                </div>
            </div>
        </div>
    </div>
    <@}else if(material.type == 'VIDEO'){@>
    <div class="col-lg-4 col-xs-6 videoMaterial" draggable="true">
        <div class="edit-hover">
            <div class="video-img video-container">
                <@if(material.status == 'NORMAL'){@>
                <img materialSrc="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" src="<@=material.videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src">
                <@}else if(material.status == 'TRANSCODE'){@>
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
                    <a class="md-trigger add-upload controls-delete"   data-module="<@=module@>" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i></a>
                    <a class="md-trigger add-upload controls-edit modalLink"  data-modal="modal-update-title" href="javascript:void(0);" data-module="<@=module@>"><i class="glyphicon glyphicon-edit"></i></a>
                </div>
            </div>
        </div>
    </div>
    <@}else if(material.type == 'DOC'){@>
    <div class="col-lg-4 col-xs-6" draggable="true">
        <div class="edit-hover">
            <a href="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>"  target="_blank" class="edit-document-item text-center">
                <i class="glyphicon glyphicon-list-alt"></i>
                <p class="edit-document-item-title"><@=material.title@></p>
                <small>Document</small>
            </a>
            <div class="controls clearfix" style="opacity: 0;">
                <div class="fl">
                    <a class="controls-move"><i class="glyphicon glyphicon-move"></i></a>
                </div>
                <div class="fr">
                    <a class="md-trigger add-upload controls-delete"   data-module="<@=module@>" href="javascript:void(0);" ><i class="glyphicon glyphicon-trash"></i></a>
                    <a class="md-trigger add-upload controls-edit modalLink"  data-modal="modal-update-title" href="javascript:void(0);" data-module="<@=module@>"><i class="glyphicon glyphicon-edit"></i></a>
                </div>
            </div>
        </div>
    </div>
    <@ } @>
    <@ }) @>
    <@}@>
    <div class="col-lg-4 col-xs-6 disabled">
        <div class="r-upload">
            <a class="md-trigger add-upload modalLink text-center" data-modal="modal-2" href="javascript:void(0);" data-module="<@=module@>">
                <i class="glyphicon glyphicon-cloud-upload"></i><strong>Upload</strong></a>
        </div>
    </div>
</script>

<%--Activity 模板--%>
<script type="text/template" id="activity_template">
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
            <span><@= activityTags[parseInt(activityTagList[i].title)]@></span>
            <@ } @>
        </div>
        <div class="col-xs-1"><a href="javascript:void(0);" class="deleteActivity"><i class="glyphicon glyphicon-trash"></i></a></div>

    </div>


    <div class="bg-gray">
        <div class="clearfix">
            <div class="media-item clearfix relative-position">

                <@if(description){@>
                <div class="col-lg-8 col-xs-12 disabled">
                    <div class="media-item-description">
                        <a class="md-trigger openDescription" data-modal="modal-20" href="javascript:void(0);">
                            <p><@=description@></p>
                        </a>
                    </div>
                </div>
                <@} else {@>
                <div class="col-lg-8 col-xs-12 addDes disabled">
                    <div class="r-line"><a class="md-trigger add-description openDescription text-center" data-modal="modal-20"
                                           href="javascript:void(0);"><i
                            class="glyphicon glyphicon-align-left"></i><strong>Add Description</strong></a>
                    </div>
                </div>
                <@}@>
                <div class="col-lg-4 col-xs-6 uploadDiv disabled">
                    <div class="r-upload"><a class="md-trigger openUpload text-center" data-modal="modal-2" activityId="<@=activityId@>" data-module="ACTIVITY"
                                             href="javascript:void(0);"><i
                            class="glyphicon glyphicon-cloud-upload"></i><strong>Upload</strong></a></div>
                </div>
                <input type="hidden" class="activityId" value="<@=activityId@>">
            </div>
        </div>
    </div>
</script>
<%--xxx模板--%>
<script type="text/template" id="activityTagList_template">
    <@ for(var i = -1;i < activityTags.length-1;i++){ @>
    <@if(tags[i] != -1){@>
    <li class="col-lg-2 col-xs-4 <@if(i == 0){@> on <@ } @>">
        <p><@=activityTags[i]@></p>
        <span>（<@=tags[i]@>）</span></li>
    <@ } @>
    <@ } @>
</script>
<%--弹窗编辑Activity模板--%>
<script type="text/template" id="editActivity_template">
    <div class="md-content">
        <h4 class="lead-in">Edit Activity</h4>

        <p>Activities are the things that you love doing. Think sports, clubs, hobbies, etc. Bring them to life with images.<strong class="dis-bolck">Tagged to your activities</strong></p>
        <ul class="activity-item-tips clearfix">
            <@ for(var i = 0;i < activityTags.length-1;i++){ @>
            <li value="<@=i@>" class="<@ for(var j = 0;j < activityTagList.length;j++){ if(i == parseInt(activityTagList[j].title)){ @> on <@ break;}}@>">
                <p><@=activityTags[i]@></p>
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
</script>

<script type="text/template" id="newActivity_template">
    <div class="md-content">
        <h4 class="lead-in">New Activity</h4>

        <p>Activities are the things that you love doing. Think sports, clubs, hobbies, etc. Bring them to life with images.<strong class="dis-bolck">Tagged to your activities</strong></p>
        <ul class="activity-item-tips clearfix">
            <@ for(var i = 0;i < activityTags.length-1;i++){ @>
            <li value="<@=i@>">
                <p><@=activityTags[i]@></p>
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
</script>
<script type="text/template" id="editDescription_template">
    <div class="md-content">
        <h4 class="lead-in">DESCRIBE</h4>

        <form>
            <textarea rows="4" oninput="limitWordsCounts($(this))" onpropertychange="limitWordsCounts($(this))" class="description"><@=description@></textarea>
            <div class="text-right">
                <span><@=limits-description.length@></span>
            </div>
            <input type="button" value="Update" class="reveal-button modifyDescription">
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</script>
<script type="text/template" id="editMaterial_template">
    <div class="md-content">
        <h4 class="lead-in">DESCRIBE</h4>
        <textarea rows="4" class="materialTitle"><@=title@></textarea>

        <div class="text-right">
            <span>300</span>
        </div>
        <input type="button" value="Update" class="reveal-button modifyTitle">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</script>
<script type="text/template" id="material_template">
    <@if( type == 'IMG'){@>
    <div class="col-lg-4 col-xs-6" draggable="true" style="display: block;">
        <div class="edit-hover"><a class="zoom" title="<@=title@>" href="<@= materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src"><img src="<@= materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src"></a>

            <div class="controls clearfix" style="opacity: 0;">
                <div class="fl">
                    <a class="controls-move"><i class="glyphicon glyphicon-move"></i></a>
                </div>
                <div class="fr">
                    <a class="md-trigger add-upload controls-deletes" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i></a>
                    <a class="md-trigger add-upload controls-edit  openModifyTitle" data-modal="modal-22" href="javascript:void(0);"><i class="glyphicon glyphicon-edit"></i></a>
                </div>
            </div>
        </div>
    </div>
    <@}else if( type == 'VIDEO'){@>
    <div class="col-lg-4 col-xs-6 videoMaterial" draggable="true">
        <div class="edit-hover">
            <div class="video-img video-container">
                <@if( status == 'NORMAL'){@>
                <img materialSrc="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>" src="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src">
                <@}else if( status == 'TRANSCODE'){@>
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
                    <a class="md-trigger add-upload controls-deletes" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i></a>
                    <a class="md-trigger add-upload controls-edit openModifyTitle" data-modal="modal-22" href="javascript:void(0);"><i class="glyphicon glyphicon-edit"></i></a>
                </div>
            </div>
        </div>
    </div>
    <@}else if( type == 'DOC'){@>
    <div class="col-lg-4 col-xs-6" draggable="true">
        <div class="edit-hover">
            <a href="<@= materialSrc@>" target="_blank" class="edit-document-item text-center">
                <i class="glyphicon glyphicon-list-alt"></i>

                <p class="edit-document-item-title"><@= title@></p>
                <small>Document</small>
            </a>

            <div class="controls clearfix" style="opacity: 0;">
                <div class="fl">
                    <a class="controls-move"><i class="glyphicon glyphicon-move"></i></a>
                </div>
                <div class="fr">
                    <a class="md-trigger add-upload controls-deletes" href="javascript:void(0);"><i class="glyphicon glyphicon-trash"></i></a>
                    <a class="md-trigger add-upload controls-edit openModifyTitle" data-modal="modal-22" href="javascript:void(0);" "><i class="glyphicon glyphicon-edit"></i></a>
                </div>
            </div>
        </div>
    </div>
    <@ } @>

</script>


<script type="text/template" id="popup-video">
    <div class="md-effect-1 reveal-modal md-show video-show-md"  id="modal-popup-video">
        <div class="md-content video-container">
            <div class="flex-video-popup">
                <video class="video-js vjs-default-skin" autoplay="autoplay" id="video-obj" controls preload="none" poster="<@=posterImgSrc@>" data-setup="{}">
                    <source src="<@=videoSrc@>" type='video/mp4'/>
                </video>
                <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
            </div>
        </div>
    </div>
    <div class="md-overlay"></div>
</script>
