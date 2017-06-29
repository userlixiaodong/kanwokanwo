/**
 * 重构
 * Created by Administrator on 2016/3/28.
 * 在</body>之前引用
 */
document.write('<div class="popup_video_div">'+
    '<div class="popup-vertical-center">'+
    '<div class="popup-horizontal-center">'+
    '<video class="video-js vjs-default-skin" id="video-obj" width="100%" height="100%" controls preload="none" poster="" data-setup="{}">'+
    '<source src="" type="video/mp4"/>'+
    '</video>'+
    '<button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>'+
    '</div>'+
    '</div>'+
    '</div>');
$(function(){
    $("body").delegate(".video-container","click",function(){
//            var popupVideoTemplate = _.template($("#popup-video").html());
        var materialSrc = $(this).children("img").attr('materialSrc') || $(this).children("i").attr('materialSrc');
        var posterSrc = $(this).children("img").attr('src') || $(this).children("i").attr('src');

//            $("#popup_video_div").children(".reveal-modal").addClass("md-show");
        $(".popup_video_div").show();

        var videoPlayLogic = function(){
            videojs("video-obj").ready(function() {
                var myPlayer = this;
                // reset the UI states
                //设置背景
                var poster = $(".popup_video_div #video-obj_html5_api")
                myPlayer.on('error', function () {
                    poster.attr("poster", "/images/transcoding.jpg");
                    setTimeout(videoPlayLogic, 10000);
                })
                poster.attr("poster", posterSrc);
                //设置视频
                $(".popup_video_div video:nth-child(1)").attr("src", materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com'));
                // reset the UI states
                $("#video-obj").removeClass("vjs-playing").addClass("vjs-paused");
                // 自动播放safari支持不好(所以这样写)
                setTimeout(function(){
                    myPlayer.play();
                }, 100);
            });
        }
        videoPlayLogic();
        $('#video-obj .vjs-big-play-button').click();
    });
    $("body").delegate(".popup_video_div .md-close","click",function(e){
        var video = videojs("video-obj");
        video.pause();
        $(".popup_video_div").hide();
//          $("#video-obj").removeClass("vjs-has-started");
    });
});