/**
 * Created by song on 16/4/21.
 */
/**
 * Created by swl on 16/4/21.
 */
$(function(){
    //我的介绍视频
    //初始化
    $('.edit-my-video-info-btn').click(function () {
        $(this).next('.edit-my-video-info-content').toggle();
    });
    var myVideoPlayLogic = function(videoJson, isPlay){
        videojs("example_video_1").ready(function(){
            var myPlayer = this;
            // reset the UI states
            //设置背景
            var poster = $("#example_video_1_html5_api");
            myPlayer.on('error',function(){
                poster.attr("poster","/images/transcoding.jpg");
                setTimeout(_myVideoPlayLogic(videoJson, true), 10000);
            })
            poster.attr("poster", videoJson.videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com'));
            //poster.attr("poster", "/images/transcoding.jpg");
            //设置视频
            $(".my-video-section video:nth-child(1)").attr("src",videoJson.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com'));
            // reset the UI states
            $("#example_video_1").removeClass("vjs-playing").addClass("vjs-paused");
            if(isPlay)
                myPlayer.play();
        });
    }
    var _myVideoPlayLogic = function(videoJson, isPlay){
        return function(){
            myVideoPlayLogic(videoJson, isPlay);
        };
    }

    add_video_template = _.template($('#add_video_template').html());
    suggestions_template = _.template($('#add_video_template').html());
    $("#modal-suggestions .md-content").append(add_video_template());

    if (jQuery.isEmptyObject(videoJson)) {
        $(".add-my-video").append(add_video_template());
        $(".edit-my-video-info").hide();
        $(".my-video-section .flex-video").hide();
    } else {
        myVideoPlayLogic(videoJson);
        $(".edit-my-video-info-content").hide();

    }

    $("#myVideoSave").bind("click", function () {
        var materialType = 'VIDEO';
        var module = 'PROFILE';
        var url = '/material/upload';
        var photoExt = $("#myVideo").val().substr($("#myVideo").val().lastIndexOf(".")).toLowerCase();
        
        var uploadFileList = $('#myVideo')[0].files;
        if (uploadFileList.length <= 0) {
            alert('please choose file!');
            return;
        }
        
        var types = videoTypes;
        var maxSize = 524288000;
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
        
        if ($.inArray(photoExt, videoTypes) >= 0) {
            uploadingCover("myVideo");
            $.ajaxFileUpload({
                url: url,
                secureuri: false,
                fileElementId: 'myVideo',//file标签的id
                dataType: 'json',//返回数据的类型
                data: {'materialType': materialType, 'module': module},//一同上传的数据
                async: true,
                success: function (data) {
                    if (data.status == 1) {
                        myVideoPlayLogic(data.data);
                        //$(".my-video-section .flex-video").html(video_template(data.data));
                        $(".my-video-section .flex-video").show();
                        $(".edit-my-video-info").show();
                        $(".edit-my-video-info-content").hide();
                        $(".add-my-video").hide();
                        $(".file-select").html("Choose File");
                        App.vent.trigger("badge:add","introductionVideo");
                    } else {
                        alert(data.message);
                    }
                    $("#modal-3 .md-close").trigger("click");
                },
                error: function (data, status, e) {
                    alert(e);
                },
                complete: function () {
                    $("body").find(".coverDiv").remove();
                }
            });
        } else {
            alert("file type error!");
        }
    });

    //删除个人介绍视频
    $('body').on('click', '#delMyVideoBtn', function (e) {
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
                        $(".my-video-section video")[0].pause()
                        //TODO 熄灭介绍视频
                        App.vent.trigger("badge:remove","introductionVideo");
                    }
                }
            });
        }
        $(".md-close").trigger("click");
        e.stopPropagation();
    });
});
