require("../../style/public.css");
require("../../style/frame.css");
require("../../style/jquery-rebox.css");
require("../../style/video-js.css");
//
require("jquery_scrollTo");
require("xss");
require("jquery_sortable");
require("video");
require("stuMyProfile_module");
require("video_popup");
$(function () {
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

});