$(function(){
    var data = JSON.parse(profileData);
    IntroVideo = Backbone.Collection.extend({
    });
    IntroVideoView = Backbone.View.extend({
        el : '#introVideoDiv',
        template : _.template($('#right_introVideo_template').html()),
        initialize : function() {
            this.render();
        },
        events : {
            'click #openUploadVideoDivBtn' : 'openUploadVideoDiv',
            'click #introVideoBtn' : 'uploadIntroVideo',
            'change #introVideoFile' : 'updateIntroVideoFileName'
        },
        render: function() {
            var html = this.template(this.model.toJSON());
            this.$el.html(html);
        },
        openUploadVideoDiv: function() {
            $('#introVideoFilInput').addClass('md-show');
        },
        updateIntroVideoFileName: function() {
            var fileName = $('#introVideoFile').val();
            if (!fileName || fileName.length <= 0) {
                alert('请选择文件!');
                return;
            }
            $('#introVideoFileName').html(fileName);
        },
        uploadIntroVideo: function() {
            var materialType = 'VIDEO';
            var module = 'PROFILE';
            var url = '/uploadFile-submit';
            var fileData = new FormData(introVideoFile);
            $.ajaxFileUpload({
                url: url,
                secureuri:false,
                fileElementId:'introVideoFile',//file标签的id
                dataType: 'json',//返回数据的类型
                data:{'materialType':materialType, 'module':module},//一同上传的数据
                async: true,
                success: function (data) {
                    alert(data.message);
                },
                error: function (data, status, e) {
                    alert(e);
                }
            });
        }
        /*openUploadView: function(){
            $('#uploadIntroIframe').html('<iframe width="930px" height="393px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" src="/uploadFile?materialType=VIDEO&module=PROFILE&title=上传介绍视频&isOption=false"></iframe>');
            $('#uploadIntroIframe').show();
            $("#uploadIntroIframe").dialog({
                draggable: false,
                closeOnEscape: true,
                height: 349,
                width: 930,
                modal: true,
                open: function (event, ui) {
                    $(".ui-dialog-titlebar-close", $(this).parent()).hide();
                }
            });
            $('.ui-dialog').css('z-index', '111');
            $('#uploadIntroVideoBg').show();
        }*/
    });
    var introVideo = new IntroVideo(data.introductionVideo);
    var introVideoView = new IntroVideoView({model: introVideo});
});