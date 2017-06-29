/**
 * Created by liuruichao on 16/4/4.
 */
var limits = 500;
    $(function(){
        _.templateSettings = {
            evaluate: /<@([\s\S]+?)@>/g,
            interpolate: /<@=([\s\S]+?)@>/g,
            escape: /<@-([\s\S]+?)@>/g
        };
        var imgTypes = ['.jpg','.jpeg','.png','.gif'];
        var documentTypes = ['.doc','.docx','.pdf','.txt'];
        var videoTypes = ['.mp4','.mov','.mkv','.flv','.3gp','.wmv','.asf','.webm','.mpg','.avi'];
        
        // remark
        var remarkList_template = _.template($('#remarkList_template').html());
        var remarkMap = {};
        for (var i = 0; i < remarkJson.length; i++) {
            var remark = remarkJson[i];
            if(!(remark.title in remarkMap)){
                var value = [];
                value.push(remark);
                remarkMap[remark.title] = value;
            }else{
                remarkMap[remark.title].push(remark);
            }
        }
        $(".friend-impression-list").html(remarkList_template({'remarks':remarkMap}));
        $(".friend-impression-list li").each(function(index, element){
            var colorCode = randomColor;
            $(element).css("background-color",colorCode);
        });
        
        $(".friend-impression-list li").hover(function(){
            var tip = $(this).find('.tips');
            tip.css("background-color",$(this).css("background-color"));
            tip.toggle();
        });
        function randomColor(){
            var colorList = ["#EA4704","#FE7747","#FFE337","#6BF1CE","#06C7B2","#F48A94","#83A602","#60369C"];
            var random = parseInt(Math.random()*8);
            return colorList[random];
}
        
        //删除个人介绍视频
        $('body').on('click','#delMyVideoBtn',function(e){
            if (confirm("Are you sure you want to delete this item? This action can not be undone.")) {
                $.ajax({
                    type: "POST",
                    url: '/material/delete',
                    data: {module: "PROFILE", seq: 0},
                    dataType: 'json',
                    success: function (data) {
                        if (data.status == 1) {
                            $(".add-my-video").html(add_video_template());
                            $(".add-my-video").show();
                            $(".edit-my-video-info").hide();
                            $(".my-video-section .flex-video").hide();
                            //徽章 熄灭介绍视频
                            badgesJson[2].status = false;
                            $($(".add-badges .md-trigger")[2]).addClass("badge");
                            updateComplete();
                        }
                    }
                });
            }
            $(".md-close").trigger("click");
            e.stopPropagation();
        });

        // upload file
        $("body").delegate("#uploadImgSave","click",function(){
            var materialType = 'IMG';
            var module = $(this).closest(".file-upload").attr("data-module");
            var _list = $(this).closest(".file-upload");
            var url = '/material/uploadMultiple';
            //var url = '/material/upload';
            var imgTitle = $("#imgTitle").val();
            var activityId = $(this).parents(".file-upload").attr("activityId");

            var imgFile = $('#imgFile');
            var uploadFileList = imgFile[0].files;
            if (uploadFileList.length <= 0) {
                alert('please choose file!');
                return;
            }
            for (var i = 0; i < uploadFileList.length; i++) {
                var uploadFile = uploadFileList[i];
                var ext = uploadFile.name.substr(uploadFile.name.lastIndexOf(".")).toLowerCase();
                if ($.inArray(ext, imgTypes) < 0) {
                    alert('file type error!');
                    return;
                }
            }
            uploadingCover(module, activityId);
            $("#modal-img .md-close").trigger("click");
            $.ajaxFileUpload({
                url: url,
                secureuri:false,
                fileElementId: 'imgFile',//file标签的id
                dataType: 'json',//返回数据的类型
                data: {'materialType': materialType, 'module': module, 'title': imgTitle, 'activityId': activityId},//一同上传的数据
                async: true,
                success: function (data) {
                    if(data.status == 1){
                        var resultList = data.data;
                        for (var i = 0; i < resultList.length; i++) {
                            addMaterial(module, resultList[i]);
                            renderMaterial(module, activityId, resultList[i]);
                        }
                        $(".file-select").html("Choose File");
                        $("#modal-img .md-close").trigger("click");
                        $('#imgTitle').val('');
                        $('#uploadImgsContainer').html($('#uploadImg_template').html());
                    }else{
                        alert(data.message);
                    }
                },
                error: function (data, status, e) {
                    alert(data.message);
                },
                complete:function(){
                    $("body").find(".coverDiv").remove();
                }
            });
        });

        // my school
        myschool_template = _.template($('#myschool_template').html());
        profileData.mySchool.module = 'MYSCHOOL';
        $(".mySchoolMedia").append(myschool_template(profileData.mySchool));
        //addSortable();
        $("body").delegate("#descriptionSubmit","click",function(){
            var descriptionContent = $.trim($("#descriptionContent").val());
            $.ajax({
                type: "POST",
                url: '/admission/profile/myschool/updateDesc',
                data: {description:descriptionContent},
                dataType: 'json',
                success: function(data) {
                    if (data.status == 1) {
                        descriptionContent = data.data;
                        //mystoryJson.description = descriptionContent;
                        profileData.mySchool['description'] = data.data;
                        $(".mySchoolMedia").html(myschool_template(profileData.mySchool));
                        $("#modal-1 .md-close").trigger("click");
                        // 点亮徽章
                        judgeStoryLight();
                        $(this).closest(".md-effect-1").find(".md-close").trigger("click");
                    } else {
                        alert(data.message);
                    }
                }
            });
        });

        // intro video
        video_template = _.template($('#video_template').html());
        add_video_template = _.template($('#add_video_template').html());
        suggestions_template = _.template($('#add_video_template').html());
        $("#modal-suggestions .md-content").append(add_video_template());
        if (profileData.introductionVideo && profileData.introductionVideo.materialSrc && profileData.introductionVideo.materialSrc.length > 0) {
            $(".my-video-section .flex-video").append(video_template(profileData.introductionVideo));
        } else {
            $(".add-my-video").append(add_video_template());
            $(".edit-my-video-info").hide();
            $(".my-video-section .flex-video").hide();
        }
        $("#myVideoSave").bind("click",function(){
            var materialType = 'VIDEO';
            var module = 'PROFILE';
            var url = '/material/upload';
            var photoExt= $("#myVideo").val().substr($("#myVideo").val().lastIndexOf(".")).toLowerCase();
            if($.inArray(photoExt, videoTypes)>= 0){
                $("#modal-3 .md-close").trigger("click");
                uploadingCover("myVideo");
                $.ajaxFileUpload({
                    url: url,
                    secureuri:false,
                    fileElementId:'myVideo',//file标签的id
                    dataType: 'json',//返回数据的类型
                    data:{'materialType':materialType, 'module':module},//一同上传的数据
                    async: true,
                    success: function (data) {
                        if(data.status == 1){
                            $(".my-video-section .flex-video").html(video_template(data.data));
                            $(".my-video-section .flex-video").show();
                            $(".edit-my-video-info").show();
                            $(".add-my-video").hide();
                            //console.log(data.data);
                            $(".file-select").html("Choose File");
                            //点亮介绍视频
                            if(badgesJson[2].status == false){
                                badgesJson[2].status = true;
                                $($(".add-badges .md-trigger")[2]).removeClass("badge");
                                badgeAlertMsg("You just earned a new badge!","video");
                            }
                            updateComplete();
                        }else{
                            alert(data.message);
                        }
                        $("#modal-3 .md-close").trigger("click");
                    },
                    error: function (data, status, e) {
                        alert(e);
                    },
                    complete:function(){
                        $("body").find(".coverDiv").remove();
                    }
                });
            }else{
                alert("file type error!");
            }
        });

        // user info
        $('#updateBioBtn').bind('click', function(){
            var admissionName = $('#admissionName').val();
            if (admissionName == '') {
                alert("Name can't be blank");
                return;
            }
            var college = $('#college').val();
            if (college == '') {
                alert("College can't be blank");
                return;
            }
            var location = $('#location').val();
            var position = $('#position').val();
            var webSite = $('#webSite').val();
            $.ajax({
                url: '/admission/profile/updateBiography',
                type: 'POST',
                dataType: 'json',
                data: {'admissioName':admissionName, 'location':location, 'college':college, 'position':position, 'webSite':webSite},
                success: function(data) {
                    if (data.status == 1) {
                        $('#showAdmissioName').html(data.data.name);
                        $('#showCollege').html(data.data.currentSchool);
                        location = data.data.location;
                        position = data.data.position;
                        webSite = data.data.webSite;
                        if($.trim(location) == ''){location="College";}
                        if($.trim(position) == ''){position="Job Title/Role";}
                        if($.trim(webSite) == ''){webSite="WebSite";}
                        $('#showLocation').html(location);
                        $('#showPosition').html(position);
                        $('#showWebSite').html(webSite);
                        
                        $("#modal-6 .md-close").trigger("click");
                        
                        if($.trim(admissionName) != ""
                                && $.trim(college) != ""
                                && $.trim(location) != ""
                                && $.trim(position) != ""
                                && $.trim(webSite) != ""){
                            if(badgesJson[1].status == false){
                                badgesJson[1].status = true;
                                $($(".add-badges .md-trigger")[1]).removeClass("badge");
                                badgeAlertMsg("You just earned a new badge!","info");
                            }
                        }else{
                            badgesJson[1].status = false;
                            $($(".add-badges .md-trigger")[1]).addClass("badge");
                        }
                        updateComplete();
                    } else {
                        alert(data.message);
                    }
                },
                error: function() {
                    alert('Your speed is not good, please try again later.');
                }
            })
        });

        // avatar
        $("#myAvatar .reveal-button").bind("click",function(){
            var materialType = 'IMG';
            var module = 'AVATAR';
            var url = '/material/upload';
            var photoExt= $("#avatarId").val().substr($("#avatarId").val().lastIndexOf(".")).toLowerCase();
            if($.inArray(photoExt, imgTypes) >=0) {
                $("#myAvatar .md-close").trigger("click");
                uploadingCover('AVATAR', '')
                $.ajaxFileUpload({
                    url: url,
                    secureuri: false,
                    fileElementId: 'avatarId',//file标签的id
                    dataType: 'json',//返回数据的类型
                    data: {'materialType': materialType, 'module': module},//一同上传的数据
                    async: true,
                    success: function (data) {
                        if (data.status == 1) {
                            $("#avatarSrc").attr("src", data.data.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com') + "@1e_1c_0o_0l_200h_200w_80q.src");
                            $(".avatar-img").attr("src", data.data.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com') + "@1e_1c_0o_0l_31h_31w_45q.src");
                            // 点亮徽章
                            if (badgesJson[0].status == false) {
                                badgesJson[0].status = true;
                                $($(".add-badges .md-trigger")[0]).removeClass("badge");
                                badgeAlertMsg("You just earned a new badge!", "avatar");
                            }
                            updateComplete();
                        } else {
                            alert(data.message);
                        }
                        $(".file-select").html("Choose File");
                        $("#modal-8 .md-close").trigger("click");
                    },
                    error: function (data, status, e) {
                        alert(e);
                    },
                    complete:function(){
                        $("body").find(".coverDiv").remove();
                    }
                });
            }else{
                alert("file type error!");
            }

        });

        $('.edit-my-video-info-btn').click(function(){
            $(this).next('.edit-my-video-info-content').toggle();
        });

        //文件选择显示文件名
        $("body").on("change",":file",function(){
            var filename = $(this).val();
            if($.trim(filename) == ""){
                filename = "Choose File";
            }
            $(this).closest(".file-upload-btn").find(".file-select").last().html(filename);
        });

        $("body").delegate(".video-container, .inspireVideo","click",function(){
//            alert($(this).children("img").attr('materialSrc'));
//            alert($(this).children("img").attr('src'));
            var popupVideoTemplate = _.template($("#popup-video").html());
            if($("#popup_video_div").length == 0){
                $("body").append("<div id='popup_video_div'></div>");
            }
            $("#popup_video_div").html(popupVideoTemplate({posterImgSrc:$(this).children("img").attr('src'),videoSrc:$(this).children("img").attr('materialSrc')}));
        });

        $("body").delegate(".video-container .md-close","click",function(e){
            var video = videojs(document.getElementById("video-obj"));
            video.pause();
        });

        $("body").delegate(".modalLink", "click", function () {
            var module = $(this).attr("data-module");
            var dataModal = $(this).attr("data-modal");
            var activityId = $(this).attr("activityId");
            $("#" + dataModal).attr("data-module", module);
            $("#" + dataModal).attr("activityid", activityId);
            $("#" + dataModal + " .modalLink").attr("activityid", activityId);
            $("#" + dataModal + " .modalLink").attr("data-module", module);
            var dataType = $(this).attr("data-type");
            $("#descriptionContent").val($(this).find("p").text());
            var surplus=limits-$("#descriptionContent").val().length;
            $("#descriptionContent").next().children().text(surplus);
        });

        $("body").delegate("#uploadVideoSave","click",function(){
            var materialType = 'VIDEO';
            var module = $(this).closest(".file-upload").attr("data-module");
            var url = '/material/upload';
            var videoTitle = $("#videoTitle").val();
            var activityId = $(this).parents(".file-upload").attr("activityId");

            var ext= $("#videoFile").val().substr($("#videoFile").val().lastIndexOf(".")).toLowerCase();
            if($.inArray(ext, videoTypes) >= 0){
                $("#modal-video .md-close").trigger("click");
                uploadingCover(module, activityId);
                $.ajaxFileUpload({
                    url: url,
                    secureuri:false,
                    fileElementId:'videoFile',//file标签的id
                    dataType: 'json',//返回数据的类型
                    data: {'materialType': materialType, 'module': module, 'title': videoTitle, 'activityId': activityId},//一同上传的数据
                    async: true,
                    success: function (data) {
                        if (data.status == 1) {
                            addMaterial(module, data.data);
                            renderMaterial(module, activityId, data.data);
                        } else {
                            alert(data.message);
                        }
                        $(".file-select").html("Choose File");
                        $("#modal-video .md-close").trigger("click");
                    },
                    error: function (data, status, e) {
                        alert(data.message);
                    },
                    complete:function(){
                        $("body").find(".coverDiv").remove();
                    }
                });
            }else{
                alert("file type error!");
            }

        });

        $("body").delegate("#uploadDocSave","click",function(){
            var materialType = 'DOC';
            var module = $(this).closest(".file-upload").attr("data-module");
            var url = '/material/uploadMultiple';
            var docTitle = $("#docTitle").val();
            var activityId = $(this).parents(".file-upload").attr("activityId");

            var docFile = $('#docFile');
            var uploadFileList = docFile[0].files;
            if (uploadFileList.length <= 0) {
                alert('please choose file!');
                return;
            }
            for (var i = 0; i < uploadFileList.length; i++) {
                var uploadFile = uploadFileList[i];
                var ext = uploadFile.name.substr(uploadFile.name.lastIndexOf(".")).toLowerCase();
                if ($.inArray(ext, documentTypes) < 0) {
                    alert('file type error!');
                    return;
                }
            }
            uploadingCover(module, activityId);
            $("#modal-doc .md-close").trigger("click");
            $.ajaxFileUpload({
                url: url,
                secureuri:false,
                fileElementId: 'docFile',//file标签的id
                dataType: 'json',//返回数据的类型
                data: {'materialType': materialType, 'module': module, 'title': docTitle, 'activityId': activityId},//一同上传的数据
                async: true,
                success: function (data) {
                    if(data.status == 1){
                        var resultList = data.data;
                        for (var i = 0; i < resultList.length; i++) {
                            addMaterial(module, resultList[i]);
                            renderMaterial(module, activityId, resultList[i]);
                        }
                        $(".file-select").html("Choose File");
                        $("#modal-doc .md-close").trigger("click");
                        $('#docTitle').val('');
                        $('#uploadDocContainer').html($('#uploadDoc_template').html());
                    }else{
                        alert(data.message);
                    }
                },
                error: function (data, status, e) {
                    alert(data.message);
                },
                complete:function(){
                    $("body").find(".coverDiv").remove();
                }
            });
        });
        
        // material desc
        $("#materialDescriptionSubmit").click(function(){
            var title = $("#materialTitle").val();
            var index = $("#materialIndex").val();
            var module = $(this).closest(".md-effect-1").attr("data-module");
            $.ajax({
                type: "POST",
                url: '/material/updateMaterialTitle',
                data: {title:title,index:index,module:module},
                dataType: 'json',
                success: function(data) {
                    if (data.status == 1) {
                        title = data.data;
                        $("#modal-update-title .md-close").trigger("click");
                        if (module == 'MYSCHOOL') {
                            profileData.mySchool.materials[index].title = title;
                            renderMaterial(module);
                        }
                        $(this).closest(".md-effect-1").find(".md-close").trigger("click");
                    }
                }
            });
        });
        $("body").delegate(".controls-edit","click",function(){
            var module = $(this).attr("data-module");
            var index = $(this).closest(".media-item").find(".controls-edit").index(this);
            if(module == 'MYSCHOOL'){
                $("#materialTitle").val(profileData.mySchool.materials[index].title);
            }
            $("#materialIndex").val(index);
        });
    });

    function addMaterial(module, material){
            if(module == 'MYSCHOOL'){
                var index = 0;
                if (profileData.mySchool.materials) {
                    index = profileData.mySchool.materials.length;
                } else {
                    profileData.mySchool.materials = [];
                }
                profileData.mySchool.materials[index] = material;
            }
    }

        function renderMaterial(module, activityId, data) {
            if (module == 'MYSCHOOL') {
                profileData.mySchool.module = 'MYSCHOOL';
                $(".mySchoolMedia").html(myschool_template(profileData.mySchool));
                //点亮徽章
                judgeStoryLight();
            }

            if (module == 'ACTIVITY') {
                var materials = activityList.get(activityId).get('materials');
                if (!materials) {
                    materials = [];
                }
                materials.push(data);
                var material = new Material(data)
                $(".r-upload a").each(function () {
                    if ($(this).attr("activityId") && $(this).attr("activityId") == activityId) {
                        new MaterialView({
                            model: material,
                            outel:$(this).closest('.activity')
                        })
                    }
                })
            }
            addSortable();
        }
        function uploadingCover(module,activityId){
            var coverDiv = $('<div class="coverDiv text-center absolute-position"></div>');
            var parentDiv = null;
            if(module == "myVideo"){
                parentDiv= $(".my-video-section")[0];
            }else if(module == "ACTIVITY"){
                parentDiv = $(".uploadDiv").find("a[activityid="+activityId+"]").closest(".media-item")[0];
            } else if(module == 'AVATAR') {
                parentDiv = $('#myAvatarParent')[0];
            } else{
                parentDiv= $("div[data-module=MYSCHOOL]")[0];        //创建一个父div
            }
            coverDiv.height(parentDiv.offsetHeight);
            coverDiv.width(parentDiv.offsetWidth);
            coverDiv.css({
                "background-color":"#fff",
                "z-index" : 10,
                "opacity" : 0.5,
                "top": 0
            });
            var picHeight = coverDiv.height()/2;
            var picWidth = picHeight;
            var marginTop = (coverDiv.height()-picHeight)/2;
            var loadingIMG = $('<img src="/images/loading.gif" style="width:'+picWidth+'px; height:'+picHeight+'px;margin-top:'+marginTop+'px "/>');
            coverDiv.append(loadingIMG);
            $(parentDiv).append(coverDiv);
        }
        function limitWordsCounts(result){
            if(result.val().length>limits){
                result.val( result.val().substr(0,limits))
            }
            var surplus = limits - result.val().length
            result.next().children().text(surplus);
        }

        // Material
        function addSortable() {
            $('.media-item').sortable({items: ':not(.disabled)',handle:'.controls-move'}).bind('sortupdate', function(e,data) {
                console.log(data.beg);
                console.log(data.end);
                var module = $(this).attr("data-module");
                if(!module){
                    module="ACTIVITY";
                }
                var activityId = $(this).find('.activityId').val();
                //if (module == 'ACTIVITY') {
                    data.beg--;
                    data.end--;
                //}
                //if(module != "PORTFOLIO"){
                //    data.beg--;
                //    data.end--;
                //}
                $.ajax({
                    type: "POST",
                    url: '/material/location',
                    data: {module:module,beg:data.beg,end:data.end,activityId:activityId},
                    dataType: 'json',
                    success: function(data) {
                    }
                });
            });
        }

        $("body").delegate(".controls-delete","click",function(e){
            if(confirm("Are you sure you want to delete this item? This action can not be undone.")){
                var module = $(this).attr("data-module");
                var index = $(this).closest(".media-item").find(".controls-delete").index(this);
                $.ajax({
                    type: "POST",
                    url: '/material/delete',
                    data: {module:module,seq:index},
                    dataType: 'json',
                    success: function(data) {
                        if (data.status == 1) {
                            if(module == 'MYSCHOOL'){
                                profileData.mySchool.materials.splice(index,1);
                                renderMaterial(module);
                            }
                        }
                    }
                });
            }
            $('.md-overlay').removeClass('md-overlay-show');
        });

        $('body').on('mouseenter', '.edit-hover', function() {
            $(this).find('.controls').animate({'opacity':'1'},200);
        });
        $('body').on('mouseleave', '.edit-hover', function() {
            $(this).find('.controls').animate({'opacity':'0'},200);
        });

    //点亮勋章后提示
    function badgeAlertMsg(msg, module){
        $("#badge-msg").html(msg);
        if (module == "avatar") {
            $("#badge-alert-img").attr("src","/images/avatar.png");
        } else if (module == "info") {
            $("#badge-alert-img").attr("src","/images/info.png");
        } else if (module == "video") {
            $("#badge-alert-img").attr("src","/images/video.png");
        } else if (module == "myschool") {
            $("#badge-alert-img").attr("src","/images/mystory.png");
        } else if (module == "activity") {
            $("#badge-alert-img").attr("src","/images/activity.png");
        }
        $("#badge-alert-msg").addClass("md-show");
    }

    //我的进度计算
    function updateComplete(){
        var score = 0;
        _.each(badgesJson, function (badge, index) {
            if(index == 0){
                if(badge.status == true){
                    score += 10;
                }
            }else if(index == 2){
                if(badge.status == true){
                    score += 30;
                }
            } else {
                if (badge.status == true) {
                    score += 20;
                }
            }
        });
        $(".progress-bar").attr("aria-valuenow",score);
        $(".progress-bar").width(score + "%");
        $(".sr-only").html(score + "% complete");
        $(".progress-description").html(score + "% complete");
    }

    function judgeStoryLight(){
       if(!profileData.mySchool.description && profileData.mySchool.materials.length <= 0){
           badgesJson[3].status = false;
           $($(".add-badges .md-trigger")[3]).addClass("badge");
       }else{
           if(badgesJson[3].status == false){
               badgesJson[3].status = true;
               $($(".add-badges .md-trigger")[3]).removeClass("badge");
               badgeAlertMsg("You just earned a new badge!","myschool");
           }

       }
       updateComplete();
    }

    var badgesJson = JSON.parse(badges);
    if(badges != ""){
        _.each(badgesJson, function (badge, index) {
            if(badge.status == false){
                $($(".add-badges .md-trigger")[index]).addClass("badge");
            }
        });
    }

// MyLinks
$("body").delegate("#updateBioBtn","click",function(){
    var linkEmail = $('#linkEmail').val();
    var linkTwitter = $('#linkTwitter').val();
    var linkFacebook = $('#linkFacebook').val();
    var linkInstagram = $('#linkInstagram').val();
    $.ajax({
        url: '/admission/profile/updateLinks',
        data: {'linkEmail': linkEmail, 'linkTwitter': linkTwitter, 'linkFacebook': linkFacebook, 'linkInstagram': linkInstagram},
        type: 'POST',
        dataType: 'json',
        success: function(data) {
            if (data.status == 1) {
                $("#modal-addMyLinks .md-close").trigger("click");
            } else {
                alert(data.message);
            }
        }
    });
});
