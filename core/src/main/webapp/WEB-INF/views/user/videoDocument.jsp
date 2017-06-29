<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>影像文书</title>
    <script src="/js/jquery-2.2.1.min.js"></script>
    <script src="/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <%--<link href="/style/bootstrap.css" rel="stylesheet">--%>
    <link href="/style/msstyle.css" rel="stylesheet">
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<section>
    <div class="first-part">
        <div class="first-left col-lg-8 ">
            <h2>加入【看我看我】  让世界看到你！</h2>
            <a class="register md-trigger" data-modal="modal-selectType" href="javascript:trackOutboundLink('', 'index_topRightSignUp');">免费注册</a>
        </div>
        <div class="col-lg-4">
            <div class=" login">
                <h4>登录</h4>
                <span>账号：<input type="text" id="email1"></span>
                <span>密码：<input type="password" id="password1"></span>
                <b><input type="checkbox">下次自动登录</b><label id="tip1" class="tip-error-text"></label>
                <input class="btn reveal-button2" id="logIn1" type="button"  value="登录">
            </div>
        </div>
    </div>
    <div class="tutorial">
        <h2>现在，动手建一个页面，
            就这么简单！</h2>
        <div class="u-center">
            <ul class="lable-img">
                <li id="tab1" class="active" onclick="switchTab('tab1');">
                    <a>
                        01　注册、登录
                        <span>请点击网站导航右上角</span>
                    </a>
                </li>
                <li id="tab2" onclick="switchTab('tab2');this.blur();return false;">
                    <a>
                        02　上传基本信息
                        <span>点击头像和详细信息位置，在弹框中编辑</span>
                    </a>
                </li>
                <li id="tab3" onclick="switchTab('tab3');this.blur();return false;">
                    <a>
                        03　上传个人视频
                        <span>视频建议时长少于3分钟</span>
                    </a>
                </li>
                <li id="tab4" onclick="switchTab('tab4');this.blur();return false;">
                    <a>
                        04　上传其他资料
                        <span>点击文本框和图片，在弹框中编辑</span>
                    </a>
                </li>
                <li id="tab5" onclick="switchTab('tab5');this.blur();return false;">
                    <a>
                        05　发送链接
                        <span>链接可增加到Common系统或发给招生官</span>
                    </a>
                </li>
            </ul>
            <ul class="img-list">
                <li id="img1">
                    <img src="/images/t-1.jpg">
                </li>
                <li id="img2">
                    <img src="/images/t-2.jpg">
                </li>
                <li id="img3">
                    <img src="/images/t-3.jpg">
                </li>
                <li id="img4">
                    <img src="/images/t-4.jpg">
                </li>
                <li id="img5">
                    <img src="/images/t-5.jpg">
                </li>
            </ul>
        </div>

    </div>
    <div class="second-part">
        <h2>FEATURED STUDENTS</h2>
        <div class="container">
            <ul class="row">
                <li class="col-lg-3">
                    <a href="/chengchi" target="_blank"><img src="/images/chengchi.png" ></a>
                    <p>I love to explore physics using
                        the techniques I learned from
                        engineering practice. I'm always
                        thirsty to studynew technologies.</p>
                </li>
                <li class="col-lg-3">
                    <a href="http://www.kanwokanwo.com/shiningzhao" target="_blank"><img src="/images/SHINING.png"></a>
                    <p>In the qualification competition, I led the Operation Department and Business Development Deptartment to discuss and design future space centers.</p>
                </li>
                <li class="col-lg-3">
                    <a href="/jingjin" target="_blank"><img src="/images/Jing.png"></a>
                    <p>I love to explore physics using
                        the techniques I learned from
                        engineering practice. I'm always
                        thirsty to studynew technologies.</p>
                </li>
                <li class="col-lg-3">
                    <a href="/jiayisong" target="_blank"><img src="/images/JIAYI.png"></a>
                    <p>I love running, because it keeps
                        me energized.</p>
                </li>
            </ul>
        </div>
    </div>
    <div class="third-part">
        <h2>看我视频拍摄服务</h2>
        <p class="movie-s">如果你不满足于手机拍摄，我们为您提供专业的拍摄团队；如果你对如何全方位诠释自己的优势还有些困惑，我们为您提供专业的咨询服务，帮你整理思路，列出重点，找到闪闪发光的自己。</p>
        <div class="container">
            <ul class="row">
                <li class="col-md-4">
                    <h5>头脑风暴</h5>
                    <img src="/images/p-1.jpg">
                    <p>发掘客户闪光点并制定拍摄内容</p>
                </li>
                <li class="col-md-4">
                    <h5>拍摄服务</h5>
                    <img src="/images/p-2.jpg">
                    <p>分镜头拍摄、布景、脚本、剪切后期制作等专业程序</p>
                </li>
                <li class="col-md-4">
                    <h5>后期制作</h5>
                    <img src="/images/p-3.jpg">
                    <p>根据客户反馈意见进行修改和调整</p>
                </li>
            </ul>
        </div>
    </div>


</section>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script>
    $('#logIn1').click(function () {
        var returnUrl = '';//location.href;//没前缀的，
        //var noRedirect = ['/','parterner']
        //if(returnUrl in noRedirect)
        //    returnUrl = '';
        $.ajax({
            url: '/user/login-submit',
            data: {
                loginName: $('#email1').val(),
                userPwd: $('#password1').val()
            },
            type: 'post',
            dataType: 'json',
            success: function (result) {
                if (result.status == 1) {
                    window.location.href = '/' + result.data;
                } else {
                    $('#tip1').html(result.message)
                }
            },
            error:function(e){
                console.log(e);
            }
        })
    })
    function switchTab(tabName){
        for(i=1;i<=5;i++){
            if(('tab'+i)==tabName){
                $('#tab'+i).addClass('active');
                $('#img'+i).show();
            }else{
                $('#img'+i).hide();
                $('#tab'+i).removeClass('active');
            }
        }
    }

   /* var email = $('#loginEmail').val();
    $(".login").children().click(function(){
        if(email){
            alert("You have already logged in!");
        }else{
            $($('.not-login li a')[1]).trigger("click");
        }
    });*/


</script>
<script type="text/javascript" src="/js/top.js?20160517"></script>
</body>
</html>