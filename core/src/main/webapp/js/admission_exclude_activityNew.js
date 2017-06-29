/**
 * Created by liuruichao on 16/4/4.
 */
var limits = 1000;
    $(function(){
        //上传个人头像
        $("#modal-avatar .reveal-button").bind("click", function () {
            var materialType = 'IMG';
            var module = 'AVATAR';
            var url = '/material/upload';
            var photoExt = $("#avatarId").val().substr($("#avatarId").val().lastIndexOf(".")).toLowerCase();
            
            var uploadFileList = $('#avatarId')[0].files;
            if (uploadFileList.length <= 0) {
                alert('please choose file!');
                return;
            }
            
            var types = imgTypes;
            var maxSize = 10485760;
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
                            $("#avatarSrc").attr("src", data.data.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com') + "@1e_1c_0o_0l_200h_200w_80q.src");
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
    });

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
