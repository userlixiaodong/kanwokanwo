<%--
  Created by IntelliJ IDEA.
  User: 晓东
  Date: 2017/6/1
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="/style/newBottom.css"/>
<style>
    #cnzz_stat_icon_1261541403 a{
        display: none;
    }
</style>
<%--右侧咨询悬浮框--%>
<div class="offsideCustomer">
    <ul>
        <li class="color_b">
            <a class="53kf"><i class="sprite sprite_earphone"></i><span>点击咨询</span></a>
        </li>
        <li class="color_g">
            <a href="javascript:void(0);"><i class="sprite sprite_weixin"></i><span>官方微信</span>
                <ul class="leftScroll ewm ewn_wx">
                    <li><img src="/images/gzh.png" width="80" height="80" /><em>看我公众号</em></li>
                    <li><img src="/images/kefu.png" width="80" height="80" /><em>看我客服号</em></li>
                </ul>
            </a>
        </li>
        <li class="color_p">
            <a href="javascript:void(0);"><i class="sprite sprite_hotline"></i><span>咨询热线</span>
                <ul class="leftScroll bgcolorP">
                    <li><label class="hotTel">拨打免费咨询客服<br/></label><label class="hotTel">010-5292-8288-8018</label></li>
                </ul>
            </a>
        </li>
        <li class="color_t">
            <a href="javascript:void(0);"><i class="sprite sprite_return"></i><span>返回顶部</span></a>
        </li>
    </ul>
</div>
<div class="pointOut">
    展开咨询
</div>
<%--底部--%>
<div class="newBottom">
    <div class="bottomBox">
        <img class="img" src="/images/logo.png" alt="">
        <ul class="navList clearfix">
            <li>
                <a href="/">Home 首页</a>
                <a href="/specialization/list">Activities 活动提升</a>
                <a href="/admission/profile/partnerschoolList">Schools 院校库</a>
                <a href="/video/list">Videos 学校视频</a>
                <a href="/statics/mustRead.jsp">Must-Read 用户必读</a>
                <a href="/statics/businessCooperation.jsp">Partnership 商务合作</a>
            </li>
            <li>
                <a href="statics/businessCooperation.jsp">关于我们</a>
                <a href="/statics/opinion.jsp">意见反馈</a>
            </li>
            <li>
                <span class="telphone">010-5292-8288-8018</span>
                <div class="kanwoewm">
                    <div class="ewmLeft"><img src="/images/gzh.png"><br><i>微信公众号</i></div>
                    <div class="ewmLeft"><img src="/images/newindex/kanwowb.png"><br><i>微博公众号</i></div>
                </div>
            </li>
        </ul>
        <p class="icp">北京看我看我科技有限责任公司 © 2017.Kanwokanwo     京ICP备14049391号-1</p>
    </div>
</div>
<%@include file="/WEB-INF/views/common/mobiletop.jsp" %>

<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-75362333-1', 'auto');
    ga('send', 'pageview');
</script>

<script>
    //    (function() {
    //        var _53code = document.createElement("script");
    //        _53code.src = "//tb.53kf.com/code/code/10089574/4";
    //        var s = document.getElementsByTagName("script")[0];
    //        s.parentNode.insertBefore(_53code, s);
    //    })();


    //53客服咨询对话框功能
    function windowbox(){
        window.open('http://tb.53kf.com/webCompany.php?arg=10089574&style=4','','height=500,width=710,top=200,left=200,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
    }
    function AddFavorite(sURL, sTitle)
    {
        try
        {
            window.external.addFavorite(sURL, sTitle);
        }
        catch (e)
        {
            try
            {
                window.sidebar.addPanel(sTitle, sURL, "");
            }
            catch (e)
            {
                alert("加入收藏失败，请使用Ctrl+D进行添加");
            }
        }
    }
    $(function () {
        function floatboxFun() {
            //    返回顶部功能
            $('.color_t').click(function(event) {
                event.preventDefault();
                $('html, body').animate({
                    scrollTop: 0
                }, 500);
            });
            //微信及电话悬浮显示二级列表功能
            $('.offsideCustomer ul li a').hover(function() {
                $(this).find('.leftScroll').fadeIn(200);
            }, function() {
                $(this).find('.leftScroll').fadeOut(200);
            });
            <!--53kf 客服-->
            $.each($('.53kf'),function(index){
                $('.53kf:eq('+index+')').attr("href","javascript:void(0);");
                var indexadd=index+1;
                var a=$('.53kf:eq('+index+')').find('.53kf').end().addClass('53kf'+indexadd);
                $('.53kf:eq('+index+')').bind('click', function(){
                    windowbox();
                });
            });
        }
        if($(window).width()>767){
            $(".pointOut").css("display","none")
            //右侧悬浮框滚动超出一屏显示恢复隐藏功能
            $(window).scroll(function() {
                if ($(this).scrollTop() > 150) {
                    $('.offsideCustomer').fadeIn(100);
                } else {
                    $('.offsideCustomer').fadeOut(100);
                }
            });
            floatboxFun()
        }else {
           /* 屏幕小于767px时*/
            $(".offsideCustomer").css("margin-right","0")
            $(".pointOut").click(function () {
                $(".pointOut").fadeOut(function () {
                    $('.offsideCustomer').fadeIn(100);
                    floatboxFun()
                })
            })
            /*滚动时隐藏右浮框*/
            $(window).scroll(function () {
                $(".pointOut").show()
                $(".offsideCustomer").hide();
                $(".Mobile_slide").hide();
            })


        }


    })
</script>
<script type="text/javascript">
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cspan id='cnzz_stat_icon_1261541403'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1261541403' type='text/javascript'%3E%3C/script%3E"));
</script>

