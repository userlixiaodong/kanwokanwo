<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>意见反馈</title>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="/style/public.css"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css"/>
    <style>
        /*banner图start*/
        * {
            margin: 0;
            padding: 0;
            font-family: 微软雅黑;
        }

        html {
            font-size: 20px;
        }
        body{
            background: #f3f3f3;
        }

        @media screen and (max-width: 1920px) {
            html {
                font-size: 18px !important;
            }
        }

        @media screen and (max-width: 1300px) {
            html {
                font-size: 16px !important;
            }
        }

        @media screen and (max-width: 1280px) {
            html {
                font-size: 14px !important;
            }
        }

        @media screen and (max-width: 750px) {
            html {
                font-size: 12px !important;
            }

            body {
                max-width: 750px;
            }
        }
        /* iphone6 plus */
        @media (min-device-width: 414px) and (max-device-width: 736px) and (-webkit-min-device-pixel-ratio: 3) {
            html {
                font-size: 25.875px;
            }
        }
        /* iphone 6 */
        @media (min-device-width: 375px) and (max-device-width: 667px) and (-webkit-min-device-pixel-ratio: 2) {
            html {
                font-size: 23.4375px;
            }
        }
        /* 判断iphone5 *//* 横屏竖屏判断方法与ipad一样 */
        @media only screen and (min-device-width: 320px) and (max-device-width: 568px) {
            html {
                font-size: 20px;
            }
        }
        .gis_banner {
            height: 8rem;
            margin-top: 3.7rem;
            position: relative;
            overflow: hidden;
        }
        .ban-pic{
            width:100%;
            height:auto;
        }
        @media (max-device-width: 769px){
            .gis_banner {
                height: 15rem;
                margin-top: 5rem;
            }
            .ban-pic{
                width:100%;
                height:100%;
            }
            @media (max-device-width: 640px) {
                .gis_banner {
                    height: 10rem;
                    margin-top: 6rem;
                }
            }
        }
        /*弹窗样式*/
        .popup_box{
            width: 600px;
            height: 420px;
            background-color: #f3f7ff;
            position: fixed;
            left: 50%;
            top: 50%;
            margin-left: -300px;
            margin-top: -210px;
            z-index:999;
            display: none;
        }
        .popup_box img{
            display: block;
            margin: 0 auto;
            padding: 62px 0 40px 0;

        }
        .popup_box p{
            text-align: center;
            font-size: 18px;
            font-family: "微软雅黑";
            color: #666666;
            padding: 0;
            margin: 0;
            line-height:30px;
        }
        .popup_box .popup_btn{
            display: block;
            width: 100px;
            height: 42px;
            background-color: #1bb38c;
            font-size: 18px;
            color: #FFFFFF;
            font-family: "微软雅黑";
            border-radius: 4px;
            text-decoration: none;
            line-height: 42px;
            text-align: center;
            margin: 40px auto;
        }
        .popup_box .popup_btn:hover{
            background-color: #39cea8;
        }
        .popup_box .popup_close{
            display: block;
            cursor: pointer;
            width: 23px;
            height: 23px;
            background: url(/images/cisformclose.png)no-repeat center;
            position: absolute;
            right: 13px;
            top:13px
        }
        .fe_window_mask{
            display: none;
            position:fixed;
            left:0;
            top:0;
            z-index:699;
            width:100%;
            height:100%;
            margin:0;
            padding:0;
            background:#000 none repeat scroll 0 0;
            opacity:0.3;
        }
        .mid_cont{
            width:60%;
            height:auto;
            margin:4rem auto;
            overflow: hidden;
        }
        .opinions{
            width:100%;
            height:auto;
            margin:0 auto;
            padding:0;
        }
        .opinions .indexTitle{
            color: #666;
            font-size: 1.4rem;
            font-family: "微软雅黑";
            padding:0.5rem 0 0.5rem 1rem;
            text-align: left;
            margin:0 auto 4rem;
            border-left:0.3rem solid #0aaa82;
        }

        .opinions input,.opinions textarea{
            width: 60%;
        }
        .opinions p i{
            display: block;
            float: left;
            height: 2.2rem;
            line-height: 2.2rem;
            color: #666;
            font-size:1rem;
            width: 12%;
        }
        .opinions p:nth-child(1){
            margin: 1.8rem 0 1rem 0;
        }
        .opinions p input{
            height: 2.2rem;
            text-indent: 0.6rem;
            font-size: 0.9rem;
        }
        .opinions p textarea{
            overflow:auto;
            text-indent: 0.6rem;
            font-size: 0.8rem;
        }
        .opinions p{
            position: relative;
        }
        .opinions p em{
            position: absolute;
            right: -8.4rem;
            top: 0.3rem;
            font-size: 1rem;
            color:#666;
            display: none;
        }
        .opinions p:nth-child(3) em{
            right: -6.7rem;
        }
        .opinions button{
            width: 60%;
            float: left;
            margin-left:12%;
            height: 2rem;
            color: #fff;
            font-size:1rem ;
            border: none;
            background-color:#72c954;
            display:block;
        }
        .opinions button:hover{
            background-color: #19c09f;
        }
        .tips{
            float: left;
            margin-left:12%;
            width: 60%;
            color: #0aaa82;
            display: block;
            text-align: center;
            padding: 0.8rem 0;
            font-size: 0.9rem;
            font-weight:bold;
        }
        .opinions i{
            font-style: normal;
        }
        .warns{
            display: inline-block;
            width:20%;
            height:2.2rem;
            background:transparent;
            vertical-align: top;
            line-height:2.2rem;
            padding-left:0.5rem;
            color: #f00;
            font-family:"微软雅黑";
        }

    </style>
</head>
<body>
<div class="container_box">
    <%@include file="/WEB-INF/views/common/top.jsp" %>
    <div class="gis_banner">
        <img src="/images/hezuoBA.png" class="ban-pic">
    </div>
    <div class="mid_cont">
        <div class="opinions">
            <h5 class="indexTitle"><i>意见</i>反馈</h5>
            <p><i>联系方式：</i><input type="text" id="phone" name="phone" placeholder="用于对您的意见进行反馈"><label class="warns" id="warns1"></label></p>
            <p>
                <i>意见详述：</i>
                <textarea rows="8" cols="20" id="problem" name="problem" placeholder="请写下您的意见，非常感谢您的反馈"></textarea><label class="warns" id="warns2"></label>
            </p>
            <p>
                <button id="btnsubmit">提交</button>
                <p class="tips">我们将在第一时间联系您，对您的问题作出解答</p>
            </p>
        </div>
    </div>
    <div class="popup_box">
        <span class="popup_close"></span>
        <img src="/images/cisformIcon.png"/>
        <p>恭喜您提交成功！我们会在5个工作日内与您取得联系，<br />
            祝您心情愉快。</p>
        <a href="javascript:;" class="popup_btn">确定</a>

    </div>
    <%--弹窗蒙版--%>
    <div class="fe_window_mask"></div>
    <%@include file="/WEB-INF/views/common/bottom.jsp" %>
</div>
</body>
<script type="text/javascript" src="/js/video-popup.js?201605121953"></script>
<script type="text/javascript">
    $(function () {
        $("#problem").focus(function () {
            var phone=$("#phone").val();
            var reg = /(1[3-9]\d{9}$)/;//正则表达式
            if (!phone || phone == ""){
                $("#warns1")[0].innerText = "手机号不能为空！";
                return false;
            }else if(!reg.test(phone)){
                $("#warns1")[0].innerText = "请输入正确格式的手机号码！";
                return false;
            }else{
                $("#warns1")[0].innerText = "";
            }
        });
        $("#phone").focus(function () {
            $("#warns1")[0].innerText = "";
            return false;
        });
        $("#btnsubmit").click(function () {
            var phone=$("#phone").val();
            var problem=$("#problem").val();
            var reg = /(1[3-9]\d{9}$)/;//正则表达式
            if (!phone || phone == ""){
                $("#warns1")[0].innerText = "手机号不能为空！";
                return false;
            }else if(!reg.test(phone)){
                $("#warns1")[0].innerText = "请输入正确格式的手机号码！";
                return false;
            }else{
                $("#warns1")[0].innerText = "";
            }
            if(!problem || problem==""){
                $("#warns2")[0].innerText = "描述内容不能为空！";
                return false;
            }
            $.post("/userItem/consultation",{"phone":$("#phone").val(),"problem":$("#problem").val()},function(data){
                // 获得到返回的数据:
                if(data == 1){
                    $(".popup_box").show();
                    $(".fe_window_mask").show();
                    var scrollH=$(window).scrollTop();
                    $(window).scroll(function(){
                        $ (this).scrollTop (scrollH)
                    });
                }else{
                    // 跳保存页面

                }
            });
        })
        //弹窗事件
        $(".popup_close").click(function(){
            window.location.href='/statics/opinion.jsp'/*跳转链接*/
        });

        $(".popup_btn").click(function(){
            window.location.href='/statics/opinion.jsp'/*跳转链接*/
        });
    })
</script>
</html>
