/**
 * Created by Administrator on 2016/4/12.
 */
$(function () {
    //上传个人头像
    $("#modal-avatar .reveal-button").bind("click", function () {
        var materialType = 'IMG';
        var module = 'AVATAR';
        var url = '/material/upload';
        var photoExt = $("#avatarId").val().substr($("#avatarId").val().lastIndexOf(".")).toLowerCase();
        if ($.inArray(photoExt, imgTypes) >= 0) {
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
                        $("#avatarSrc").attr("src", data.data.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com') + "@1e_1c_0o_0l_480h_460w_100q.src");
                        $(".avatar-img").attr("src", data.data.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com') + "@1e_1c_0o_0l_31h_31w_45q.src");
                        //TODO 点亮头像
                        App.vent.trigger("badge:add","avatar");
                    } else {
                        alert(data.message);
                    }
                    $(".file-select").html("Choose File");
                    $("#modal-8 .md-close").trigger("click");
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
})
