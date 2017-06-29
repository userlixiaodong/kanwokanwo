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
<script type="application/javascript">
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
                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/admission_sample_1.jpg@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/videos/admission_sample_1.mp4"></a>
                <a class="inspireVideo video-container">
                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="//img-cdn.kanwokanwo.com/images/admission_sample_2.jpg@1e_1c_0o_0l_173h_244w_83q.src" materialSrc="//kw-cdn.kanwokanwo.com/videos/admission_sample_2.mp4"></a>
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
                class="glyphicon glyphicon-plus-sign"></i><strong>ADD ADDITIONAL INFORMATION</strong></a></div>
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
            <div class="col-lg-6 col-xs-12 text-right hide">
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

<script type="text/template" id="newActivity_template">
    <div class="md-effect-1 reveal-modal md-show" >
        <div class="md-content">
            <h4 class="lead-in">New ADDITIONAL INFORMATION</h4>

            <%--<p>Activities are the things that you love doing. Think sports, clubs, hobbies, etc. Bring them to life with images.<strong class="dis-bolck">Tagged to your activities</strong></p>--%>
            <ul class="activity-item-tips clearfix">
                <@ for(var i = 0;i < App.activityTags.length-1;i++){ @>
                <li value="<@=i@>">
                    <p><@=App.activityTags[i]@></p>
                </li>
                <@ } @>
            </ul>
            <label>Title</label>
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
<script type="text/template" id="biographyEditModal_template">
    <div class="md-effect-1 reveal-modal md-show edit-user-info">
        <div class="md-content">
            <h4 class="lead-in">EDIT BIO</h4>
            <form>
                <label>Name</label>
                <input type="text" value="<@=name@>" id="admissionName">
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-education"></i>College</dt>
                        <dd><input type="text" id="college" value="<@=currentSchool@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-map-marker"></i>Location</dt>
                        <dd><input type="text" id="location" value="<@=location@>"></dd></dl>
                </div>
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-user"></i>Job Title/Role</dt>
                        <dd><input type="text" id="position" value="<@=position@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Website</dt>
                        <dd><input type="text" id="webSite" value="<@=webSite@>"></dd></dl>
                </div>
                <input type="button" value="Save" class="reveal-button">
            </form>
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
<div class="md-effect-1 reveal-modal file-upload" id="modal-avatar">
    <div class="md-content">
        <h4 class="lead-in">YOUR PROFILE PHOTO</h4>

        <div class="text-center">
            <div class="file-upload-btn">
                <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
                <input type="file" id="avatarId" name="file" accept=".jpg,.jpeg,.png,.gif">
            </div>
        </div>
        <input type="submit" value="Save" class="reveal-button">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal file-upload" id="modal-schoolbgimg">
    <div class="md-content">
        <h4 class="lead-in">SCHOOL BACKGROUND IMAGE(1920*658)</h4>

        <div class="text-center">
            <div class="file-upload-btn">
                <span><i class="glyphicon glyphicon-folder-open"></i><span class="file-select">Choose File</span></span>
                <input type="file" id="schoolBgImgIn" name="file" accept=".jpg,.jpeg,.png,.gif">
            </div>
        </div>
        <input type="submit" id="schoolBgImgBtn" value="Save" class="reveal-button">
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
    <a href="javascript:;" class="rank md-trigger" data-modal="school-name"><@if(schoolRank){@><@=schoolRank@><@}else{@>School Rank<@}@></a>
    <!--<a href="//jinshuju.net/f/fZDcSo" target="_blank" class="reserve_iv"><i class="glyphicon glyphicon-facetime-video"></i><span>Reserve Interview</span></a>-->
    <a href="javascript:;" class="follow"><i class="newSchool_icon newSchool_xin"></i><span>Follow（<@=followCount@>）</span></a>
    <div class="md-effect-1 reveal-modal file-upload edit-school-name" id="school-name">
        <div class="md-content">
            <h4 class="lead-in">Edit</h4>

            <div class="clearfix">
                <dl class="fl"><dt>Name</dt>
                    <dd><input type="text" id="schoolName" value="<@=name@>"></dd></dl>
                <dl class="fr"><dt>School ranking</dt>
                    <dd><input type="text" id="schoolRank" value="<@=schoolRank@>"></dd></dl>
            </div>
            <input type="button" id="updateNameBtn" value="Save" class="reveal-button2">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="biographyEdit-template">
    <ul>
        <li><i class="glyphicon glyphicon-map-marker"></i><a href="javascript:;">
            <@if(area){@>${districtArr[districtName]}<@}else{@>District<@}@>
        </a></li>

        <li><i class="glyphicon glyphicon-map-marker"></i><a href="javascript:;"><@if(province){@>${stateArr[stateName]}<@}else{@>State<@}@></a></li>
        <li><i class="glyphicon glyphicon-map-marker"></i><a href="javascript:;"><@if(city){@><@=city@><@}else{@>City<@}@></a></li>
        <li><i class="glyphicon glyphicon-map-marker"></i><a href="javascript:;"><@if(location){@><@=location@><@}else{@>Location<@}@></a></li>
        <li><i class="glyphicon glyphicon-education"></i><a href="javascript:;"><@if(schoolLevel){@>${schoolLevelArr[schoolLevelName]}<@}else{@>Level<@}@></a></li>
        <li><i class="glyphicon glyphicon-education"></i><a href="javascript:;"><@if(lodge != -1){@>${schoolTypeArr[schoolTypeName]}<@}else{@>Type<@}@></a></li>
        <li><i class="glyphicon glyphicon-equalizer"></i><a href="javascript:;"><@if(settings){@>${settingsArr[settingsName]}<@}else{@>Settings<@}@></a></li>
        <li><i class="glyphicon glyphicon-user"></i><a href="javascript:;"><@if(schoolSex){@>${schoolSexArr[schoolSexName]}<@}else{@>Gender Specfic<@}@></a></li>
        <li><i class="glyphicon glyphicon-home"></i><a href="javascript:;"><@if(schoolAcreage){@><@=schoolAcreage@><@}else{@>Acreage<@}@></a></li>
        <li><i class="glyphicon glyphicon-education"></i><a href="javascript:;"><@if(newbornNum){@><@=newbornNum@><@}else{@>Number of Students<@}@></a></li>
        <li><i class="glyphicon glyphicon-equalizer"></i><a href="javascript:;"><@if(teacherStudentRatio){@><@=teacherStudentRatio@>:1<@}else{@>Student Faculty Ratio<@}@></a></li>
        <li><i class="glyphicon glyphicon-link"></i><a href="javascript:;"><@if(webSite){@><@=webSite@><@}else{@>WebSite<@}@></a></li>
        <li><i class="glyphicon glyphicon-earphone"></i><a href="javascript:;"><@if(phone){@><@=phone@><@}else{@>Phone<@}@></a></li>
        <li><i class="glyphicon glyphicon-envelope"></i><a href="javascript:;"><@if(linkEmail){@><@=linkEmail@><@}else{@>Email<@}@></a></li>
        <li><i class="glyphicon glyphicon-equalizer"></i><a href="javascript:;"><@if(biographyOther){@><@=biographyOther@><@}else{@>Brief description<@}@></a></li>
        <li>
            <i style="color: #888888;font-size: 16px; font-style:normal;font-weight: bold">@</i>
            <a href="javascript:;"><em class="usficonfont usf-icon-facebook"></em></a>
            <a href="javascript:;"><em class="usficonfont usf-icon-twitter"></em></a>
            <a href="javascript:;"><em class="usficonfont usf-icon-xiangji"></em></a>
        </li>
    </ul>

    <div class="md-effect-1 reveal-modal edit-user-info" id="school-biography">
        <div class="md-content">
            <h4 class="lead-in">EDIT BIO</h4>
            <form>
                <!----------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>District</dt>
                        <dd><select id="area">
                            <@var isSelect = false;
                            if (!area) {
                            isSelect = true;
                            }
                            @>
                            <option value="-1">===Please Choose===</option>
                            <option value="1" <@if (area=='1') {isSelect=true;@>selected="selected"<@}@>>NORTHEAST</option>
                            <option value="2" <@if (area=='2') {isSelect=true;@>selected="selected"<@}@>>SOUTHEAST</option>
                            <option value="3" <@if (area=='3') {isSelect=true;@>selected="selected"<@}@>>WEST</option>
                            <option value="4" <@if (area=='4') {isSelect=true;@>selected="selected"<@}@>>MIDWEST</option>
                            <option value="5" <@if (area=='5') {isSelect=true;@>selected="selected"<@}@>>SOUTH</option>


                        </select><br/></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>State</dt>
                        <dd><select id="province">
                            <option value="-1">===Please Choose===</option>
                            <c:forEach var="state" items="${stateArr}" varStatus="stat" >
                                <c:choose>
                                    <c:when test="${stat.index == 0}">
                                    </c:when>
                                    <c:when test="${stat.index == stateName}">
                                        <option value="${stat.index}" selected="selected">${state}</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="${stat.index}">${state}</option>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>


                        </select><br/></dd></dl>
                </div>
                <!----------------------------------------------------------------------------------->
                <!----------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>City</dt>
                        <dd><input type="text" placeholder="City" id="city" value="<@if(city){@><@=city@><@}@>"></dd></dl>
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>Location</dt>
                        <dd><input type="text" placeholder="Location" id="schoolLocation" value="<@if(location){@><@=location@><@}@>"></dd></dl>
                </div>
                <!----------------------------------------------------------------------------------->
                <!----------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>School Level</dt>
                        <dd>
                            <select id="schoolLevel">
                                <@var isSelect = false;
                                if (!schoolLevel) {
                                isSelect = true;
                                }
                                @>
                                <option value="-1">===Please Choose===</option>
                                <option value="1" <@if (schoolLevel=='1') {isSelect=true;@>selected="selected"<@}@>>UNIVERSITY</option>
                                <option value="2" <@if (schoolLevel=='2') {isSelect=true;@>selected="selected"<@}@>>HIGHSCHOOL</option>
                                <option value="3" <@if (schoolLevel=='3') {isSelect=true;@>selected="selected"<@}@>>JUNIORHIGHSCHOOL</option>
                                <option value="4" <@if (schoolLevel=='4') {isSelect=true;@>selected="selected"<@}@>>MIDDLEANDHIGHSCHOOL</option>
                                <option value="5" <@if (schoolLevel=='5') {isSelect=true;@>selected="selected"<@}@>>PRIMARYSCHOOL</option>
                                <option value="6" <@if (schoolLevel=='6') {isSelect=true;@>selected="selected"<@}@>>GRADUATESCHOOL</option>

                            </select><br/>

                        </dd>
                    </dl>
                    <!--<dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>School Level</dt>
                        <dd><input type="text" placeholder="Level" id="schoolLevel" value="<@if(schoolLevel){@><@=schoolLevel@><@}@>"></dd></dl>-->
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>Type of school</dt>
                        <dd>
                            <select id="lodge">
                                <@var isSelect = false;
                                if (!lodge) {
                                isSelect = true;
                                }
                                @>
                                <option value="-1">===Please Choose===</option>
                                <option value="0" <@if (lodge=='0') {isSelect=true;@>selected="selected"<@}@>>Boarding School</option>
                                <option value="1" <@if (lodge=='1') {isSelect=true;@>selected="selected"<@}@>>Day School</option>
                                <option value="2" <@if (lodge=='2') {isSelect=true;@>selected="selected"<@}@>>Pubic National Universities</option>
                                <option value="3" <@if (lodge=='3') {isSelect=true;@>selected="selected"<@}@>>Private National Universities</option>
                                <option value="4" <@if (lodge=='4') {isSelect=true;@>selected="selected"<@}@>>Liberal Arts Colleges</option>
                                <option value="5" <@if (lodge=='5') {isSelect=true;@>selected="selected"<@}@>>Community Colleges</option>
                                <option value="6" <@if (lodge=='6') {isSelect=true;@>selected="selected"<@}@>>Others</option>
                            </select><br/>

                        </dd>
                    </dl>

                </div>
                <!----------------------------------------------------------------------------------->
                <!----------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>Settings</dt>
                        <dd>
                            <select id="settings">
                                <@var isSelect = false;
                                if (!settings) {
                                isSelect = true;
                                }
                                @>
                                <option value="-1">===Please Choose===</option>
                                <option value="1" <@if (settings=='1') {isSelect=true;@>selected="selected"<@}@>>URBAN</option>
                                <option value="3" <@if (settings=='3') {isSelect=true;@>selected="selected"<@}@>>SUBURBAN</option>
                                <option value="2" <@if (settings=='2') {isSelect=true;@>selected="selected"<@}@>>CITY</option>
                                <option value="4" <@if (settings=='4') {isSelect=true;@>selected="selected"<@}@>>RURAL</option>


                            </select><br/></dd>
                    </dl>
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>Gender Specific</dt>
                        <dd><select id="schoolSex">
                            <@var isSelect = false;
                            if (!schoolSex) {
                            isSelect = true;
                            }
                            @>
                            <option value="-1">===Please Choose===</option>
                            <option value="1" <@if (schoolSex=='1') {isSelect=true;@>selected="selected"<@}@>>ALL-MALE</option>
                            <option value="2" <@if (schoolSex=='2') {isSelect=true;@>selected="selected"<@}@>>ALL-FEMALE</option>
                            <option value="0" <@if (schoolSex=='0') {isSelect=true;@>selected="selected"<@}@>>CO_ED</option>
                        </select><br/></dd></dl>

                </div>
                <!----------------------------------------------------------------------------------->

                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>School Acreage</dt>
                        <dd><input type="text" placeholder="Acreage" id="schoolAcreage" value="<@if(schoolAcreage){@><@=schoolAcreage@><@}@>"></dd></dl>
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>Number of Students</dt>
                        <dd><input type="text" placeholder="1000" id="newbornNum" value="<@if(newbornNum){@><@=newbornNum@><@}@>"></dd></dl>

                </div>
                <!----------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>Student Faculty Ratio</dt>
                        <dd>
                            <input type="text" placeholder="" id="teacherStudentRatio" value="<@if(teacherStudentRatio){@><@=teacherStudentRatio@><@}@>" style="width:49%;text-align:center;">
                            <span style="width:49%;height:35px;line-height: 35px;text-align:center;float: right;margin-top:0px;right:40px;z-index:999;background:#eee;">1</span>
                        </dd>
                    </dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>WebSite</dt>
                        <dd><input type="text" placeholder="http://" id="schoolWebSite" value="<@if(webSite){@><@=webSite@><@}@>"></dd></dl>
                </div>
                <!----------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-earphone"></i>Phone</dt>
                        <dd><input type="text" placeholder="010-9999999" id="schoolPhone" value="<@if(phone){@><@=phone@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-envelope"></i>Email</dt>
                        <dd><input type="text" placeholder="name@example.com" id="schoolLinkEmail" value="<@if(linkEmail){@><@=linkEmail@><@}@>"></dd></dl>
                </div>

                <label><i class="s-iconfont s-icon-twitter"></i>Twitter</label>
                <input type="text" placeholder="twitter" value="<@if(linkTwitter){@><@=linkTwitter@><@}@>" id="linkTwitter">

                <label><i class="s-iconfont s-icon-facebook"></i>Facebook</label>
                <input type="text" placeholder="facebook" value="<@if(linkFacebook){@><@=linkFacebook@><@}@>" id="linkFacebook">

                <label><i class="s-iconfont s-icon-instagram"></i>Instagram</label>
                <input type="text" placeholder="instagram" value="<@if(linkInstagram){@><@=linkInstagram@><@}@>" id="linkInstagram">

                <label>&nbsp;<i class="glyphicon glyphicon-equalizer"></i>&nbsp;&nbsp;Other</label>
                <textarea id="schoolOther" placeholder="other" maxlength="300"><@if(biographyOther){@><@=biographyOther@><@}@></textarea>
                <input type="button" value="Save" class="mt12 reveal-button2">
            </form>
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>
<script type="text/template" id="school-application-tmpl">
    <@
    var isPreview = false;
    var isChina = false;
    @>
    <ul>
        <li class="ranking">
            <strong>
                Ranking
            </strong>
            <p><@=createTextHtml(ranking, isPreview, isChina, 'Ranking')@></p>
        </li>

        <li>
            <strong>
                Deadlines
            </strong>
            <p><@=createTextHtml(specialty, isPreview, isChina, 'Deadlines')@></p>
        </li>
        <li>
            <strong>
                Early Admission
            </strong>
            <p>
                <@if(ED == '0'){@>
                <@=createTextHtml('No Need', isPreview, isChina, 'Early Admission')@>
                <@}else {@>
                <@=createTextHtml('Need', isPreview, isChina, 'Early Admission')@>
                <@}@>
               </p>
        </li>
        <li>
            <strong>
                SAT
            </strong>
            <p>
                <@if(issat == '0'){@>
                <@=createTextHtml('No Need', isPreview, isChina, 'SAT')@>
                <@}else {@>
                <@=createTextHtml('Need', isPreview, isChina, 'SAT')@>
                <@}@>
            </p>
        </li>
        <li>
            <strong>
                Average SAT Score
            </strong>
            <p><@=createTextHtml(middlesatscore, isPreview, isChina, 'Average SAT Score')@></p>
        </li>
        <li>
            <strong>
                Minimum TOEFL Score
            </strong>
            <p><@=createTextHtml(toeflscore, isPreview, isChina, 'Minimum TOEFL Score')@></p>
        </li>
        <li>
            <strong>
                Average TOEFL Score
            </strong>
            <p><@=createTextHtml(middletoeflscore, isPreview, isChina, 'Average TOEFL Score')@></p>
        </li>
        <li>
            <strong>
                IELTS Score
            </strong>
            <p><@=createTextHtml(ieltsScore, isPreview, isChina, 'IELTS Score')@></p>
        </li>
        <li>
            <strong>
                GPA
            </strong>
            <p><@=createTextHtml(middlegpascore, isPreview, isChina, 'GPA')@></p>
        </li>
        <li>
            <strong>
                Visit Campus
            </strong>
            <p><@=createTextHtml(visitUrl, isPreview, isChina, 'Visit Campus')@></p>
        </li>
        <li class="sch-tuition">
            <strong>
                Scholarships and tuitions
            </strong>
            <p><@=createTextHtml(tuitionUrl, isPreview, isChina, 'Scholarships and tuitions')@></p>
        </li>
        <li>
            <strong>
                Admission office email
            </strong>
            <p><@=createTextHtml(admissionEmail, isPreview, isChina, 'Admission office email')@></p>
        </li>
        <li class="adm-o-website">
            <strong>
                Admission office website
            </strong>
            <p><@=createTextHtml(applicationUrl, isPreview, isChina, 'Admission office website')@></p>
        </li>
        <li>
            <strong>
                Application essay topics
            </strong>
            <p><@=createTextHtml(docTitle, isPreview, isChina, 'Application essay topics')@></p>
        </li>

        <li>
            <strong>
                Application requirements
            </strong>
            <p><@=createTextHtml(requirement, isPreview, isChina, 'Application requirements')@></p>
        </li>
        <li>
            <strong>
                Graduate development
            </strong>
            <p><@=createTextHtml(ourStudentUrl, isPreview, isChina, 'Graduate development')@></p>
        </li>
    </ul>
    <div class="md-effect-1 reveal-modal edit-user-info" id="school-application">
        <div class="md-content">
            <h4 class="lead-in">EDIT BIO</h4>
            <form>

                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-earphone"></i>Deadlines</dt>
                        <dd><input maxlength="100" placeholder="" type="text" id="schoolSpecialty" value="<@if(specialty){@><@=specialty@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Visit Campus</dt>
                        <dd><input type="text" placeholder="http://" id="schoolVisitUrl" value="<@if(visitUrl){@><@=visitUrl@><@}@>"></dd></dl>
                </div>
                <!---------------------------------------------------------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>SAT NEED</dt>
                        <dd><select id="issat">
                            <@var isSelect = false;
                            if (!issat) {
                            isSelect = true;
                            }
                            @>
                            <option value="-1">===Please Choose===</option>
                            <option value="0" <@if (issat=='0') {isSelect=true;@>selected="selected"<@}@>>NO NEED</option>
                            <option value="1" <@if (issat=='1') {isSelect=true;@>selected="selected"<@}@>>NEED</option>
                        </select></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Average SAT Score</dt>
                        <dd><input maxlength="100" placeholder="" type="text" id="middlesatscore" value="<@if(middlesatscore){@><@=middlesatscore@><@}@>"></dd></dl>
                </div>
                <!---------------------------------------------------------------------------------------------------------------------------------->
                <!---------------------------------------------------------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Minimum TOEFL Score</dt>
                        <dd><input maxlength="100" placeholder="" type="text" id="toeflscore" value="<@if(toeflscore){@><@=toeflscore@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Average TOEFL Score</dt>
                        <dd><input maxlength="100" placeholder="" type="text" id="middletoeflscore" value="<@if(middletoeflscore){@><@=middletoeflscore@><@}@>"></dd></dl>
                </div>
                <!---------------------------------------------------------------------------------------------------------------------------------->
                <!---------------------------------------------------------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>IELTS Score</dt>
                        <dd><input maxlength="100" placeholder="" type="text" id="ieltsScore" value="<@if(ieltsScore){@><@=ieltsScore@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>GPA</dt>
                        <dd><input maxlength="100" placeholder="" type="text" id="middlegpascore" value="<@if(middlegpascore){@><@=middlegpascore@><@}@>"></dd></dl>
                </div>
                <!---------------------------------------------------------------------------------------------------------------------------------->
                <!---------------------------------------------------------------------------------------------------------------------------------->
                <div class="clearfix">
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Ranking</dt>
                        <dd><input maxlength="100" placeholder="" type="text" id="ranking" value="<@if(ranking){@><@=ranking@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Early Admission</dt>
                        <dd><select id="ED">
                            <@var isSelect = false;
                            if (!ED) {
                            isSelect = true;
                            }
                            @>
                            <option value="-1">===Please Choose===</option>
                            <option value="0" <@if (ED=='0') {isSelect=true;@>selected="selected"<@}@>>NO</option>
                            <option value="1" <@if (ED=='1') {isSelect=true;@>selected="selected"<@}@>>YES</option>
                        </select></dd></dl>
                </div>
                <!---------------------------------------------------------------------------------------------------------------------------------->

                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-link"></i>Scholarships and tuitions</dt>
                        <dd><input type="text" placeholder="http://" id="schoolTuitionUrl" value="<@if(tuitionUrl){@><@=tuitionUrl@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-envelope"></i>Admission office email</dt>
                        <dd><input type="text" placeholder="name@example.com" id="schoolAdmissionEmail" value="<@if(admissionEmail){@><@=admissionEmail@><@}@>"></dd></dl>
                </div>

                <div class="clearfix">
                    <dl class="fl"><dt><i class="glyphicon glyphicon-link"></i>Admission office website</dt>
                        <dd><input type="text" placeholder="http://" id="schoolApplicationUrl" value="<@if(applicationUrl){@><@=applicationUrl@><@}@>"></dd></dl>
                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Application essay topics</dt>
                        <dd><input type="text" placeholder="http://" id="schoolDocTitle" value="<@if(docTitle){@><@=docTitle@><@}@>"></dd></dl>
                </div>

                <div class="clearfix">

                    <dl class="fr"><dt><i class="glyphicon glyphicon-link"></i>Application requirements</dt>
                        <dd><input maxlength="100" placeholder="" type="text" id="schoolRequirement" value="<@if(requirement){@><@=requirement@><@}@>"></dd></dl>
                </div>
                <label><i class="glyphicon glyphicon-equalizer"></i>&nbsp;&nbsp;&nbsp;Graduate development</label>
                <textarea maxlength="300" placeholder="Graduate development" id="schoolOurStudentUrl"><@if(ourStudentUrl){@><@=ourStudentUrl@><@}@></textarea>
                <input type="button" value="Save" class="reveal-button2">
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
            //width = 48;
            width = 31.33333333333333;
            isClear = true;
            } else if (information.materials.length == 1) {
            var m = information.materials[0];
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
                <a class="<@if(onlyOne){@>imgOne<@}@>"  style="width: <@=width@>%;padding-bottom:<@=width@>%; " href="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src">
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
                <button class="informationItem" data-id="<@=information.informationId@>">Delete</button>
            </div>
        </div>
        <hr>
        <a class="feel-good" href="javascript:;"><em  class="glyphicon glyphicon-thumbs-up"></em><@=information.favorCount@></a>
    </li>
    <@});@>
</script>