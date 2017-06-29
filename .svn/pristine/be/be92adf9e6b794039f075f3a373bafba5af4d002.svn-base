/**
 * Created by liuruichao on 16/4/6.
 */
$(function () {
    _.templateSettings = {
        evaluate: /<@([\s\S]+?)@>/g,
        interpolate: /<@=([\s\S]+?)@>/g,
        escape: /<@-([\s\S]+?)@>/g
    };
    //视频静音按钮
    var email = $('#loginEmail').val();
    var videoStudent=$("#video-student").get(0);
    $('.v-btn').on('click',function() {
        videoStudent.muted = !videoStudent.muted;
        if($('.v-btn i').hasClass('glyphicon-volume-off')){
            $('.v-btn i').removeClass('glyphicon-volume-off').addClass('glyphicon-volume-up');
        }else if($('.v-btn i').hasClass('glyphicon-volume-up')){
            $('.v-btn i').removeClass('glyphicon-volume-up').addClass('glyphicon-volume-off');
        }
    });
    $('body').off('click', '.reveal-button')
    //登录


    $(".sign-up-form").children().click(function(){
        if(email){
            alert("You have already logged in!");
        }else{
            $($('.not-login li a')[1]).trigger("click");
        }
    });

    $(".join-kanwo").click(function(){
        if(email){
            alert("You have already logged in!");
        }else{
            $($('.not-login li a')[1]).trigger("click");
        }
    });

    //// 关闭按钮视频暂停
    //$("body").delegate(".popup_video_div .md-close","click",function(e){
    //    var video = videojs("video-obj");
    //    video.pause();
    //    $(".popup_video_div").hide();
    //    //$("#video-obj").removeClass("vjs-has-started");
    //});
    //$("body").delegate(".video-container","click",function(){
    //    //var popupVideoTemplate = _.template($("#popup-video").html());
    //    var materialSrc = $(this).children("img").attr('materialSrc') || $(this).children("i").attr('materialSrc');
    //    var posterSrc = $(this).children("img").attr('src') || $(this).children("i").attr('src');
    //    //$("#popup_video_div").children(".reveal-modal").addClass("md-show");
    //    $(".popup_video_div").show();
    //    videojs("video-obj").ready(function(){
    //        var myPlayer = this;
    //        // reset the UI states
    //        //设置背景
    //        $("#video-obj_html5_api").attr("poster", posterSrc);
    //        //设置视频
    //        $("video:nth-child(1)").attr("src",materialSrc);
    //        // reset the UI states
    //        $("#video-obj").removeClass("vjs-playing").addClass("vjs-paused");
    //        // load the new sources
    //        // myPlayer.pause().currentTime(0).trigger('loadstart');
    //        // $(".vjs-big-play-button").show();
    //        // EXAMPLE: Start playing the video.
    //        myPlayer.play();
    //    });
    //});

})

