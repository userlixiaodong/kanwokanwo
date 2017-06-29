window.urlReg = /(http|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&amp;:/~\+#]*[\w\-\@?^=%&amp;/~\+#])?/;
window.emailReg = /^([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9\-_]+\.(?:com|cn|net|edu|org)$/;
$(function(){
    $('.ourStudents').delegate('.studentList li', 'click', function(){
        var item = $(this);
        var url = item.attr('hreff');
        if (url) {
            window.open(encodeURI(url));
        }
    });
    $('#information_btn').click(function(){
        $('#information_btn').addClass('tab-show');
        $('#information_btn').removeClass('tab-hide');
        
        $('#school_btn').removeClass('tab-show');
        $('#school_btn').addClass('tab-hide');

        $('#informationPage').show();
        $('#infomationSchoolPage').hide();
    });
    $('#school_btn').click(function(){
        $('#information_btn').removeClass('tab-show');
        $('#information_btn').addClass('tab-hide');

        $('#school_btn').addClass('tab-show');
        $('#school_btn').removeClass('tab-hide');

        $('#informationPage').hide();
        $('#infomationSchoolPage').show();
        $('#previewPicture').hide();
        //isFirstPreview = true;
    });

    $('.add-photo,.add-video').click(function(){
        $('#previewPicture').toggle();
        var top = $('.add-p-v').offset().top;
        var left = $('.add-p-v').offset().left;
        $('#previewPicture').css({'top': top + $('.add-p-v').height(), 'left': left});
    });
    $('#selectImageBtn,#selectVideoBtn').click(function(){
        $(".md-close").trigger("click");
        var item = $(this);
        if (item.attr('id') == 'selectImageBtn') {
            $('#informationImgFile').click();
        } else {
            $('#informationVideoFile').click();
        }
    });
    $('body').delegate('#informationImgFile,#informationVideoFile', 'change', function(){
        var item = $(this);
        var uploadFileList = $(this)[0].files;
        if (uploadFileList.length > 0) {
            if (item.attr('id') == 'informationImgFile') {
                $('#informationUploadImgBtn').click();
            } else {
                $('#informationUploadVideoBtn').click();
            }
        }
    });
    
    var ourStudentCurrnetPage = 0;
    var outStudentTotalPage = 1;
    var ourStudentUrl = '/admission/profile/ourstudents/{schoolName}/{page}.json';
    var ourStudentTmpl = '<li hreff="/{publicUri}">' +
                         '<img src="{imgUrl}@1e_1c_0o_0l_96h_96w_90q.src">' + 
                         '{name}</li>';
    $('.ourStudentMore,.modalOurStudentMore').click(function(){
        ++ourStudentCurrnetPage;
        if (ourStudentCurrnetPage > outStudentTotalPage) {
            var item = $(this);
            if (item.hasClass('modalOurStudentMore')) {
                --ourStudentCurrnetPage;
                alert('No more students');
            }
            return;
        }
        var url = ourStudentUrl.replace('{schoolName}', window.schoolName).replace('{page}', ourStudentCurrnetPage);
        $.ajax({
            url: url,
            type: 'POST',
            data: null,
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    var dataList = data.data.data;
                    var html = '';
                    for (var i = 0; i < dataList.length; i++) {
                        var ourStudent = dataList[i];
                        var publicUri = ourStudent.userPublicUri;
                        var imgUrl = ourStudent.userAvatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com');
                        var userName = ourStudent.userName;
                        html += ourStudentTmpl.replace('{publicUri}', encodeURI(publicUri)).replace('{imgUrl}', imgUrl).replace('{name}', userName);
                    }
                    ourStudentCurrnetPage = data.data.currentPage;
                    outStudentTotalPage = data.data.totalPage;
                    $('.modalOurStudentMore').before(html);
                }
            }
        });
    });
    
    // bg images
    $('#schoolBgImgBtn').click(function(){
        var materialType = 'IMG';
        var module = 'SCHOOLBGIMG';
        var url = '/material/upload';
        var photoExt = $("#schoolBgImgIn").val().substr($("#schoolBgImgIn").val().lastIndexOf(".")).toLowerCase();

        var uploadFileList = $('#schoolBgImgIn')[0].files;
        if (uploadFileList.length <= 0) {
            alert(uploadPleaseChoose);
            return;
        }

        var types = imgTypes;
        var maxSize = 10485760;
        for (var i = 0; i < uploadFileList.length; i++) {
            var uploadFile = uploadFileList[i];
            // check type
            var ext = uploadFile.name.substr(uploadFile.name.lastIndexOf(".")).toLowerCase();
            if ($.inArray(ext, types) < 0) {
                alert(uploadFileTypeError);
                return;
            }
            // check size
            var fileSize = uploadFile.size;
            if (fileSize > maxSize) {
                alert(uploadFileTooLarge);
                return;
            }
        }

        if ($.inArray(photoExt, imgTypes) >= 0) {
            uploadingCover('SCHOOLBGIMG', '')
            $.ajaxFileUpload({
                url: url,
                secureuri: false,
                fileElementId: 'schoolBgImgIn',//file标签的id
                dataType: 'json',//返回数据的类型
                data: {'materialType': materialType, 'module': module},//一同上传的数据
                async: true,
                success: function (data) {
                    if (data.status == 1) {
                        $('#schoolBgImgParent img').attr("src", data.data.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com') + "@1e_1c_0o_0l_678h_1920w_100q.src");
                    } else {
                        alert(data.message);
                    }
                    $(".file-select").html(uploadPleaseChoose);
                },
                error: function (data, status, e) {
                    alert(e);
                },
                complete: function () {
                    $("body").find(".coverDiv").remove();
                }
            });
        }
    });
    bindRebox();
    bindSlideToggle();
});

function bindRebox() {
    $('.informationReboxImg').rebox({
        selector: 'a',
        templates: {           // define templates to create the elements you need function($item, settings)
            image: function ($item, settings, callback) {
                var videoClass = '';
                var materialSrc = $item.attr('materialSrc');
                return $('<img materialSrc="' + materialSrc + '" src="' + $item.attr('href') + '" class="' + settings.theme + '-content img-change" />').load(callback);
            }
        }
    });
}
function bindSlideToggle() {
    $.each($('.message-btn-down'),function(index){
        $('.message-btn-down:eq('+index+')').click(function (e) {
            $('.message-btn-down:eq('+index+')').attr("href","javascript:void(0);");
            $('.message-btn-down:eq('+index+')').next('.message-btn-down-content').slideToggle();
            e.stopPropagation();
        });
    });
}
function createTextHtml(text, isPreview, isChina, linkName) {
    if (text && text.length > 0 && (text.match('^http://') || text.match('^https://'))) {
        var textLink = linkName || '点此链接';
        var html = '<a class="application-a" target="_blank" href="javascript:;">' + textLink + '</a>';
        if (isPreview) {
            html = html.replace('javascript:;', text);
        }
        return html;
    } else if (text) {
        return text;
    } else {
        if (isPreview) {
            return 'N/A';
        }
        if (isChina) {
            return "请补充";
        } else {
            return "Please add";
        }
    }
}