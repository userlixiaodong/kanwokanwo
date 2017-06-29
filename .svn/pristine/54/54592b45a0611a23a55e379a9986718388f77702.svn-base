<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="/style/bottom.css"/>
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
<footer class="clearfix">
    <div class="row">
        <div class="col-md-12">
      <span>
        Learn more about Kanwokanwo <br>
        <br>
         © 2017.Kanwokanwo<br>
          <em>京ICP备14049391号-1</em>
      </span>
        </div>
    </div>
</footer>
<%--<script>--%>
<%--var _hmt = _hmt || [];--%>
<%--(function() {--%>
   <%--var hm = document.createElement("script");--%>
     <%--hm.src = "//hm.baidu.com/hm.js?bbf35b4303ced08fa9af56df2c374a0d";--%>
       <%--var s = document.getElementsByTagName("script")[0];--%>
         <%--s.parentNode.insertBefore(hm, s);--%>
         <%--})();--%>
<%--</script>--%>
<%--<script type="text/javascript">
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1261541403'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1261541403%26online%3D1%26show%3Dline' type='text/javascript'%3E%3C/script%3E"));
</script>--%>
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
    //右侧悬浮框滚动超出一屏显示恢复隐藏功能
    $(window).scroll(function() {
        if ($(this).scrollTop() > 150) {
            $('.offsideCustomer').fadeIn(100);
        } else {
            $('.offsideCustomer').fadeOut(100);
        }
    });
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
})
</script>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1261541403'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1261541403' type='text/javascript'%3E%3C/script%3E"));</script>


