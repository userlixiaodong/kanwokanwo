<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style type="text/css">
    /*.line {*/
    /*margin-bottom: 20px;*/
    /*}*/

    /*!* 复制提示 *!*/
    /*.copy-tips {*/
    /*position: fixed;*/
    /*z-index: 99999;*/
    /*bottom: 50%;*/
    /*left: 50%;*/
    /*margin: 0 0 -20px -80px;*/
    /*background-color: rgba(0, 0, 0, 0.2);*/
    /*filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr=#30000000, endColorstr=#30000000);*/
    /*padding: 6px;*/
    /*}*/

    /*.copy-tips-wrap {*/
    /*padding: 10px 20px;*/
    /*text-align: center;*/
    /*border: 1px solid #F4D9A6;*/
    /*background-color: #FFFDEE;*/
    /*font-size: 14px;*/
    /*}*/

    /*.login_sf {*/
    /*float: right;*/
    /*position: relative;*/
    /*margin-top: 2%;*/
    /*}*/

    /*.icon_wb {*/
    /*background: url(/images/wbqq.png) no-repeat left top;*/
    /*width: 53px;*/
    /*height: 54px;*/
    /*}*/

    /*.icon_qq {*/
    /*background: url(/images/wbqq.png) no-repeat -73px top;*/
    /*width: 53px;*/
    /*height: 54px;*/
    /*margin-left: 20px;*/
    /*}*/

    /*.icon_weixin {*/
    /*background: url(/images/wbqq.png) no-repeat right top;*/
    /*width: 53px;*/
    /*height: 54px;*/
    /*margin-left: 20px;*/
    /*}*/

    /*.login_sf a {*/
    /*display: inline-block;*/
    /*}*/

    /*.login_title {*/
    /*width: 100%;*/
    /*text-align: center;*/
    /*margin-bottom: 1%;*/
    /*font-size: 16px;*/
    /*}*/
    /*新版菜单栏 2016.4.25*/
    .show-for-large-menu a {
        display: inline-block;
        width: 130px;
        height: 75px;
        line-height: 25px;
        font-size: 16px;
        color: #fff;
        text-align: center;
        padding-top: 15px;
    }

    .show-for-large-menu a:hover, .show-for-large-menu a.active {
        border-bottom: 2px solid #1bb38c;
        font-weight: bold;
    }
    .small-close{
        display: block;
        width:2rem;
        height:2rem;
        background: url("/images/top-menu.png") no-repeat;
        background-size:cover ;
        position: absolute;
        top:0.6rem;
        right:0.6rem;
    }
    .show-for-large-menu{
        display: inline-block;      /*原因是导航栏右侧主页按钮布局错位*/
    }
    @media screen and (max-width: 1366px) {
        .show-for-large-menu a {
            width: 90px;
        }
        .navbar-section > li{
            width: 106px;
        }
    }

    @media screen and (max-width: 1100px) {
        .show-for-large-menu a {
            width: 80px;
            font-size: 13px;
        }
        .navbar-section > li{
            width: 110px;
        }
        .navbar-section > li span{
            font-size: 13px;
        }

    }

    @media (max-width: 1089px) {
        .navbar-section > li{
            width: 100px
        }
        .navbar-section > li span{
            font-size: 12px;
        }
    }
    @media (max-width: 1005px) {
        .show-for-large-menu a {
            width: 70px;
        }
        .navbar-section > li{
            width: 106px;
        }
    }
    @media (max-width: 850px) {
        .show-for-large-menu a{
            width:68px;
        }
        .navbar-section > li {
            width: 88px;
        }
        .navbar-brand{
            margin-left:-30px;
        }
    }
    @media (min-width: 769px) {
        .small-menu{
            display: none;
        }
        .small-close{
            display: none;
        }
    }
    /*959宽隐藏student和school显示三道杠 large-menu隐藏 small-menu显示*/
    @media (max-width: 769px) {
        .navbar-section{
            display: none;
        }
        .navbar-brand{
            margin-left: -40px!important;
        }
        .not-login {
            display: none;
        }

        .nav-center {
            display: block !important;
        }

        .show-for-small-menu {
            width: 100%;
            max-width:769px;
            height: 100%;
            position: absolute;
            top:0;
            left:0;
            background: rgba(27,179,140,0.8);
            text-align: center;
            display: none;
            z-index:9999;
        }
        .show-for-small-menu a {
            display: block;
            width: 100%;
            height: 110px;
            margin: 0;
            text-align: center;
            font-size:2.4rem;
        }
        @media (max-width: 640px) {
            .show-for-small-menu a {
                display: block;
                width: 100%;
                height: 55px;
                margin: 0;
                text-align: center;
                font-size:1.8rem;

            }
            .show-for-small-menu a span{
                display: block;
                width:40%;
                height:auto;
                margin:-8px auto;
            }
        }
        .small-close{
            display: block;
            width:2.5rem;
            height:2.5rem;
            background: url("/images/top-close.png") no-repeat;
            background-size:cover ;
            position: absolute;
            top:1rem;
            right:1.5rem;
        }
        .small-menu{
            display: block;
            width:2.5rem;
            height:2.5rem;
            background: url("/images/top-menu.png") no-repeat;
            background-size:cover ;
            position: absolute;
            top:2.2rem;
            right:1rem;
        }
        /*.click-dropdown a {*/
        /*display: inline-block;*/
        /*font-size: 30px;*/
        /*color: #fff;*/
        /*}*/

        /*.click-show {*/
        /*position: absolute;*/
        /*right: 0;*/
        /*top: 100%;*/
        /*display: none;*/
        /*}*/

        /*.click-show a {*/
        /*display: block;*/
        /*width: 130px;*/
        /*height: 60px;*/
        /*line-height: 60px;*/
        /*text-align: center;*/
        /*color: #fff;*/
        /*background: #2f312e;*/
        /*}*/

        /*.click-show a.active {*/
        /*background: #1bb38c;*/
        /*}*/
    }

    /*@media ( max-width: 593px) {*/
    /*.navbar-search-input {*/
    /*width: 130px !important;*/
    /*}*/
    /*}*/

    /*@media ( max-width: 539px) {*/
    /*.navbar-search-input {*/
    /*width: 100px !important;*/
    /*}*/
    /*}*/

    /*@media ( max-width: 520px) {*/
    /*.navbar-search-input {*/
    /*width: 56px !important;*/
    /*}*/
    /*.navbar-section li{*/
    /*width:60px;*/
    /*}*/
    /*.subnav-avatar-down{*/
    /*width:90px;*/
    /*}*/

    /*}*/

    /*@media ( max-width: 400px) {*/
    /*.navbar-search-input {*/
    /*width: 22px !important;*/
    /*}*/
    /*.nav-center{*/
    /*margin-left: 10px;*/
    /*}*/
    /*.navbar-section{*/
    /*margin-right: 10px;*/
    /*}*/
    /*.navbar-section li{*/
    /*width:40px;*/
    /*}*/
    /*.subnav-avatar-down{*/
    /*width:90px;*/
    /*}*/
    /*}*/

    /*@media ( max-width: 330px) {*/
    /*.navbar-search-input {*/
    /*width: 8px !important;*/
    /*}*/
    /*.navbar-brand {*/
    /*margin-right: 0px;*/
    /*}*/
    /*}*/

    select#adregisterSchoolCountry {
        width: 50%;
        height: 40px;
    }
    /* 清除导航文字下划线*/
    .show-for-large-menu a{
        text-decoration: none;
    }
</style>
<div class="md-overlay"></div>
<div class="fixed-top fixed-top-bar">
    <nav class="navbar">
        <div class="nav-center">
            <a class="navbar-brand" href="javascript:trackOutboundLink('//www.kanwokanwo.com', 'index_toIndex');"></a>
            <%--移动端--%>
            <%--<div class="header-share-app icon_lists fl centerY">--%>
            <%--<em><i class="icon iconfont icon-fenxiang"></i></em>--%>
            <%--<span>--%>
            <%--<a href="javascript:void(0);" class="share_wechat"><i class="icon iconfont icon-weixin "></i>--%>
            <%--</a>--%>
            <%--<div class='codeDiv text-center' style='line-height: normal;position: absolute;top:2%;left:100%;background-color: white;padding: 10px;border: 1px solid black;display: none;z-index:99999'>--%>
            <%--<b>分享到微信朋友圈</b><a href='javascript:hideCode()' style="float:right;"><b>x</b></a>--%>
            <%--<div class="codes" style="margin: 10px;text-align: center;"></div>--%>
            <%--<div style="font-size:12px;">打开微信，点击底部的“发现”，<br/>使用“扫一扫”即可将网页分享至朋友圈。</div>--%>
            <%--</div>--%>

            <%--<a href="javascript:void(0);" class="shares share_qq"><i class="icon iconfont icon-qq"></i></a>--%>
            <%--<a href="javascript:void(0);" class="shares share_sina"><i class="icon iconfont icon-xinlang"></i></a>--%>
            <%--</span></div>--%>

            <c:if test="${sessionScope.loginUser != null}"> <!--登录后导航栏-->

                <div class="fr show-for-large-menu show-for-small-menu">
                    <a id="student-Page" href="javascript:trackOutboundLink('//www.kanwokanwo.com', 'index_toIndex');"
                       rel="javascript:trackOutboundLink('//www.kanwokanwo.com', 'index_toIndex');">Home<br><span style="font-size: 12px;font-family: '微软雅黑';">首页</span></a>
                        <%--<a href="/admission/profile/videoDocument" id="videoDocument"--%>
                        <%--rel="/admission/profile/videoDocument">Services<br><span style="font-size: 12px;font-family: '微软雅黑';">服务</span></a>--%>
                        <%--<a href="/admission/profile/schoolList?country=OTHER" id="alumnusPage" target="_blank">校友在线</a>--%>
                        <%--<a href="/admission/profile/alumniOnline" id="alumniOnline" rel="/admission/profile/alumniOnline">Alumni<br><span style="font-size: 12px;font-family: '微软雅黑';">校友导师</span></a>--%>
                    <a href="/video/list" id="videolist" rel="/video/list">Videos<br><span style="font-size: 12px;font-family: '微软雅黑';">学校视频</span></a>
                    <a href="/admission/profile/partnerschoolList"
                       id="partners"
                       rel="/admission/profile/partnerschoolList">Schools<br><span style="font-size: 12px;font-family: '微软雅黑';">院校库</span></a>
                        <%--<a href="/statics/aboutUs.jsp" id='aboutUs'rel="/statics/aboutUs.jsp">关于我们</a>--%>
                    <a href="/specialization/list" id="slist" rel="/specialization/list">Activities<br><span style="font-size: 12px;font-family: '微软雅黑';">活动提升</span></a>
                    <a href="../../../statics/mustRead.jsp" rel="/statics/mustRead.jsp" >Must-Read<br><span style="font-size: 12px;font-family: '微软雅黑';">用户必读</span></a>
                    <a href="/statics/businessCooperation.jsp" rel="/statics/businessCooperation.jsp" >Partnership<br><span style="font-size: 12px;font-family: '微软雅黑';">商务合作</span></a>
                    <i class="small-close"></i>
                </div>
                <i class="small-menu"></i>
                <%--<div class="header-share icon_lists fr">--%>
                <%--<c:if test="${sessionScope.loginUser == null}">--%>
                <%--<a class="createbtn" href="javascript:void(0);">Create Your Own Page for Free</a>--%>
                <%--</c:if>--%>
                <%--<span>Share：--%>
                <%--<a href="javascript:void(0);" class="share_wechat"><i class="icon iconfont icon-weixin "></i></a>--%>
                <%--<div class='codeDiv text-center' style='line-height: normal;position: absolute;top:82%;right:26%;background-color: white;padding: 10px;border: 1px solid black;display: none;z-index:99999'>--%>
                <%--<b>分享到微信朋友圈</b><a href='javascript:hideCode()' style="float:right;"><b>x</b></a>--%>
                <%--<div class="codes" style="margin: 10px auto;width:170px;"></div>--%>
                <%--<div style="font-size:12px;">打开微信，点击底部的“发现”，<br/>使用“扫一扫”即可将网页分享至朋友圈。</div>--%>
                <%--</div>--%>
                <%--<a href="javascript:void(0);" class="shares share_qq"><i class="icon iconfont icon-qq"></i></a>--%>
                <%--<a href="javascript:void(0);" class="shares share_sina"><i class="icon iconfont icon-xinlang"></i></a>--%>
                <%--</span>--%>

                <%--</div>--%>
                <ul class="left-side navbar-section">
                        <%--<li class="pc-search"> <span>
                <input type="text" value="Search now···" onfocus="if(this.value=='Search now···'){this.value='${q}'}"
                       onblur="if(this.value==''){this.value='Search now···'}" class="navbar-search-input"><!--value="${q}"-->
                            <i class="glyphicon glyphicon-search"></i>
                </span></li>--%>
                        <%--<a class="app-search" href="/search/users?q=" target="_blank"> <i class="glyphicon glyphicon-search"></i></a>--%>
                </ul>
                <ul class="right-side navbar-section">
                    <li>
                        <a class="message-number relative-position" href="/msg/messages/1">
                            <img src="/images/message-icon-chat.png"> <span>消息</span><em id="topMsgCount">0</em>
                        </a>
                    </li>
                    <li></li>
                        <%-- <li><a href="/${sessionScope.loginUser.publicUri}"> <i class="glyphicon glyphicon-home"></i> <span
                                 class="show-for-large-menu">主页</span>
                         </a></li>
                         <li></li>--%>
                        <%--<li class="my-link"><a href="javascript:void(0);" class="md-trigger" data-modal="modal-yourlink"> <i
                                class="glyphicon glyphicon glyphicon-link"></i> <span class="show-for-large-menu">链接</span>
                        </a></li>
                        <li></li>--%>
                    <li class="user-dropdown-wrap">
                        <div class="subnav-avatar-down user-dropdown">
                            <div class="subnav-avatar">
                                <c:if test="${not empty sessionScope.loginUser.avatarUrl}">
                                    <img class="avatar-img"
                                         src="${sessionScope.loginUser.avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_35h_35w_100q.src"/>
                                </c:if>
                                <c:if test="${empty sessionScope.loginUser.avatarUrl}">
                                    <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
                                        <img class="avatar-img" src="/images/defaultavatar.jpg"/>
                                    </c:if>
                                    <c:if test="${sessionScope.loginUser.role == 'AD_REP'}">
                                        <img class="avatar-img" src="/images/defaultAdmissionAvatar.jpg"/>
                                    </c:if>
                                </c:if>
                            </div>
                            <i class="glyphicon glyphicon-menu-down"></i></div>
                        <ul class="subnav-content">
                            <div class="subnav-content-box clearfix">
                                <div class="subnav-avatar fl">
                                    <c:if test="${not empty sessionScope.loginUser.avatarUrl}">
                                        <img class="avatar-img"
                                             src="${sessionScope.loginUser.avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_35h_35w_100q.src"/>
                                    </c:if>
                                    <c:if test="${empty sessionScope.loginUser.avatarUrl}">
                                        <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
                                            <img class="avatar-img" src="/images/defaultavatar.jpg"/>
                                        </c:if>
                                        <c:if test="${sessionScope.loginUser.role == 'AD_REP'}">
                                            <img class="avatar-img" src="/images/defaultAdmissionAvatar.jpg"/>
                                        </c:if>
                                    </c:if>
                                </div>
                                <div class="profile-menu-top-right fl"><span>${sessionScope.loginUser.userName}</span>
                                    <a class="md-trigger editBio"
                                            <c:if test="${empty param.flag}">
                                                <c:if test="${sessionScope.loginUser.publicUri == studentProfile.publicUri || sessionScope.loginUser.publicUri == admissionProfile.publicUri}">
                                                    href="javascript:void(0);"
                                                </c:if>
                                                <c:if test="${sessionScope.loginUser.publicUri != studentProfile.publicUri || sessionScope.loginUser.publicUri != admissionProfile.publicUri}">
                                                    href="/${sessionScope.loginUser.publicUri}"
                                                </c:if>
                                            </c:if>
                                            <c:if test="${not empty param.flag}">
                                                href="/${sessionScope.loginUser.publicUri}"
                                            </c:if>
                                    >Edit bio</a></div>
                            </div>
                            <li class="subnav-link-item"><a href="/${sessionScope.loginUser.publicUri}"><i
                                    class="glyphicon glyphicon-home"></i><span>My HomePage</span></a>
                            </li>
                            <li class="subnav-link-item"><a href="/${sessionScope.loginUser.publicUri}?flag=preview"
                                                            target="_blank"><i class="glyphicon glyphicon-eye-open"></i><span>Preview</span></a>
                            </li>

                            <li class="subnav-link-item"><a href="javascript:void(0);" class="md-trigger"
                                                            data-modal="modal-setting"><i
                                    class="glyphicon glyphicon-cog"></i><span>Setting</span></a>
                            </li>
                            <li class="subnav-link-item"><a href="/tanghaidan"><i
                                    class="glyphicon glyphicon-th-large"></i><span>Sample</span></a></li>
                            <li class="subnav-link-item"><a href="/msg/messages/1">
                                <img src="/images/message-icon-chat.png" class="subnav-chat-img">
                                </i><span class="subnav-chat-text">Message</span></a></li>
                            <li class="subnav-link-item"><a href="/admission/profile/partnerschoolList" target="_blank"><i
                                    class="glyphicon glyphicon-bed"></i><span>Schools</span></a>
                            </li>
                            <li class="subnav-link-item"><a href="/reservation/myReservation" id="myreserve"><i
                                    class="glyphicon glyphicon-phone-alt"></i><span>Orders</span></a>
                            </li>

                            <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
                                <li class="subnav-link-item no">
                                    <a href="/specialization/applyInfo" id="applyInfo"><i
                                            class="glyphicon glyphicon-cog"></i><span>Apply Info</span></a>
                                </li>
                            </c:if>

                            <li class="subnav-link-item"><a href="" target="_blank"><i
                                    class="glyphicon glyphicon-question-sign"></i><span>Q&A</span></a></li>
                            <li class="subnav-link-item"><a href="/user/logout"><i
                                    class="glyphicon glyphicon-log-out"></i><span>Logout</span></a></li>
                        </ul>
                    </li>
                </ul>

            </c:if>
            <c:if test="${sessionScope.loginUser == null}">
                <%--<ul class="not-login clearfix fr">
                    <li><a class="md-trigger" data-modal="modal-12" href="javascript:trackOutboundLink('', 'index_login');">Log in</a></li>
                    <em></em>
                    <li><a class="md-trigger" data-modal="modal-selectType" href="javascript:trackOutboundLink('', 'index_topRightSignUp');">Sign up</a></li>
                </ul>--%>
                <!--PC-->

                <div class="show-for-large-menu show-for-small-menu">
                    <a id="student-Page" href="javascript:trackOutboundLink('//www.kanwokanwo.com', 'index_toIndex');"
                       rel="javascript:trackOutboundLink('/', 'index_toIndex');">Home<br><span style="font-size: 12px;font-family: '微软雅黑';">首页</span></a>
                        <%--<a href="/admission/profile/videoDocument" id="videoDocument"--%>
                        <%--rel="/admission/profile/videoDocument">Services<br><span style="font-size: 12px;font-family: '微软雅黑';">服务</span></a>--%>
                        <%--<a href="/admission/profile/schoolList?country=OTHER" id="alumnusPage" target="_blank">校友在线</a>--%>
                        <%--<a href="/admission/profile/alumniOnline" id="alumniOnline" rel="/admission/profile/alumniOnline">Alumni<br><span style="font-size: 12px;font-family: '微软雅黑';">校友导师</span></a>--%>
                    <a href="/video/list"  rel="/video/list">Videos<br><span style="font-size: 12px;font-family: '微软雅黑';">学校视频</span></a>
                    <a href="/admission/profile/partnerschoolList"
                       id="partners"
                       rel="/admission/profile/partnerschoolList">Schools<br><span style="font-size: 12px;font-family: '微软雅黑';">院校库</span></a>
                        <%--<a href="/statics/aboutUs.jsp" id="aboutUs" rel="/statics/aboutUs.jsp">关于我们</a>--%>
                    <a href="/specialization/list" id="slist" rel="/specialization/list">Activities<br><span style="font-size: 12px;font-family: '微软雅黑';">活动提升</span></a>
                    <a href="../../../statics/mustRead.jsp" rel="/statics/mustRead.jsp" >Must-Read<br><span style="font-size: 12px;font-family: '微软雅黑';">用户必读</span></a>
                    <a href="/statics/businessCooperation.jsp" rel="/statics/businessCooperation.jsp" >Partnership<br><span style="font-size: 12px;font-family: '微软雅黑';">商务合作</span></a>
                    <i class="small-close"></i>
                </div>
                <i class="small-menu"></i>
                <!--搜索-->
                <ul class="left-side navbar-section">
                    <!--<li class="pc-search"> <span>
            <input type="text" value="Search now···" onfocus="if(this.value=='Search now···'){this.value='${q}'}"
                   onblur="if(this.value==''){this.value='Search now···'}" class="navbar-search-input"><!--value="${q}"-->
                    <!--<i class="glyphicon glyphicon-search"></i>
        </span></li>-->
                        <%--  <div class="language-change">
           &lt;%&ndash; <a href="javascript:;" class="viewI18n" data-locale="en">EN</a>
            |
            <a href="javascript:;" class="viewI18n" data-locale="zh_CN">CN</a>&ndash;%&gt;
               <a href="/lang?locale=en_US">en</a><br/>
               <a href="/lang?locale=zh_CN">zh</a><br/>
        </div>--%>
                    <ul> <a href="/lang?locale=en_US">en</a>
                      |  <a href="/lang?locale=zh_CN">zh</a><br/></ul>
                    <ul class="not-login clearfix">
                        <li><a class="md-trigger" data-modal="modal-12"
                               href="javascript:trackOutboundLink('', 'index_login');">登录</a></li>
                        <em></em>
                        <li><a class="md-trigger" data-modal="modal-selectType"
                               href="javascript:trackOutboundLink('', 'index_topRightSignUp');">注册</a></li>
                    </ul>
                        <%--<a class="app-search" href="/search/users?q=" target="_blank"> <i class="glyphicon glyphicon-search"></i></a>--%>
                </ul>
                <!--PC end-->
                <%--<!--移动端-->--%>
                <%--<div class="fr show-for-small-menu">--%>
                <%--<div class="click-dropdown center"><a href="javascript:void(0)"><i class="glyphicon glyphicon-menu-hamburger"></i></a></div>--%>
                <%--<div class="click-show">--%>
                <%--<a class="md-trigger" data-modal="modal-12" href="javascript:trackOutboundLink('', 'index_login');">登录</a>--%>
                <%--<a class="md-trigger" data-modal="modal-selectType" href="javascript:trackOutboundLink('', 'index_topRightSignUp');">注册</a>--%>
                <%--<a href="javascript:trackOutboundLink('//www.kanwokanwo.com', 'index_toIndex');">首页</a>--%>
                <%--<a href="/partners" target="_blank">SCHOOLS</a>--%>
                <%--<a href="/partners" target="_blank">影像文书</a>--%>
                <%--<a href="/partners" target="_blank">校友在线</a>--%>
                <%--<a href="/video/list" target="_blank">百家讲谈</a>--%>
                <%--<a href="/partners" target="_blank">KanView面试</a>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<!--移动端end-->--%>
            </c:if>
            <%--PC--%>

        </div>
    </nav>
</div>
<!-- 设置 -->
<div class="md-effect-1 reveal-modal user-login" id="modal-setting">
    <div class="md-content">
        <h4 class="lead-in">重置密码</h4>
        <label>Dear ${sessionScope.loginUser.userName}</label>
        <label>新密码</label>
        <input name="password" id="password" type="password" value="">
        <label>重复输入密码</label>
        <input name="repassword" id="repassword" type="password" value="">
        <input type="submit" value="Submit" class="reveal-button2">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal" id="modal-yourlink">
    <div class="md-content">
        <h4 class="lead-in">GET SEEN</h4>
        <label>Copy and paste your kanwokanwo link into any application.</label>
        <textarea class="copy" style="margin:10px auto;min-height: 50px;padding-top: 20px;padding-left: 5px;"
                  readonly="readonly">https://www.kanwokanwo.com/${sessionScope.loginUser.publicUri}</textarea>
        <a href="/${sessionScope.loginUser.publicUri}?flag=preview" target="_blank"><input type="button"
                                                                                           value="Preview Page"
                                                                                           class="reveal-button"></a>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>

<!--登录弹框-->
<div class="md-effect-1 reveal-modal user-login" id="modal-12">
    <div class="md-content">
        <h4 class="lead-in">登录</h4>

        <form>
            <label>邮箱/电话<span id="tip" class="tip-error-text"></span></label>
            <input name="email" type="text" value="" id="email" required>
            <label>密码</label>
            <input name="userPwd" type="password" value="" id="loginpassword">
            <input type="button" value="Log in" class="reveal-button2" id="logIn">
            <div><a href="/wechat/login">微信登录</a></div>
            <%--<div class="login_sf">--%>
            <%--<div class="login_title">Create account with:</div>--%>
            <%--<a title="使用新浪微博帐号登录" target="_blank" class="icon_wb" href="/oauth/login?flag=sina"></a>--%>
            <%--<a title="使用腾讯QQ帐号登录" target="_blank" class="icon_qq" href="/oauth/login?flag=qq"></a>--%>
            <%--<a title="使用微信帐号登录" target="_blank" class="icon_weixin" href="/oauth/login?flag=wechat"></a>--%>
            <%--</div>--%>
            <label class="small-text"> <a class="md-trigger" data-modal="modal-selectType"
                                                          href="javascript:void(0);">注册</a><br><a
                    class="md-trigger" data-modal="modal-14" href="javascript:void(0);">忘记密码</a></label>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal user-login" id="modal-selectType">
    <div class="md-content">
        <h4 class="lead-in">开始注册</h4>
        <div class="text-center sign-in-model">
            <a href="javascript:clearTips();" data-modal="modal-13"
               class="reveal-button md-trigger index-option-signuptype">学生</a>
            <a href="javascript:clearTips();" data-modal="modal-15"
               class="reveal-button md-trigger index-option-signuptype">学校</a>
            <!--<label>Email<span class="tip-error-text" id="registerEmailTip"></span></label>
            <input name="email" type="text" id="registerEmail">
            <label>Password (8 characters minimum)<span class="tip-error-text" id="registerPwdTip"></span></label>
            <input name="password" type="password" id="registerPwd" maxlength="16">
            <label>Name<span class="tip-error-text" id="registerNameTip"></span></label>
            <input name="name" type="text" id="registerName">
            <input type="button" value="Sign up" class="reveal-button" id="register">
            <label>Already have an account?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12" href="javascript:void(0);">Login</a></label>-->
        </div>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<!-- admission register -->
<div class="md-effect-1 reveal-modal user-login" id="modal-15">
    <div class="md-content">
        <h4 class="lead-in">现在开始</h4>

        <form>
            <label>邮箱<span class="tip-error-text" id="adregisterEmailTip"></span></label>
            <input name="email" type="text" id="adregisterEmail" class="regEmail" autocomplete="off">
            <label>密码 (最少八个字符)<span class="tip-error-text" id="adregisterPwdTip"></span></label>
            <input name="password" type="password" id="adregisterPwd" autocomplete="off">
            <label>学校名字<span class="tip-error-text" id="adregisterNameTip"></span></label>
            <input name="name" type="text" id="adregisterName" autocomplete="off">
            <%--<label>School<span class="tip-error-text" id="adregisterCollegeTip"></span></label>--%>
            <%--<input name="name" type="text" id="adregisterCollege" autocomplete="off">--%>
            <label>国家<span class="tip-error-text" id="adregisterSchoolCountrylTip"></span></label>
            <select id="adregisterSchoolCountry">
                <option value="-1">===请选择===</option>
                <option value="CHINA">中国</option>
                <option value="OTHER">其他</option>
            </select>

            <p> <a href="/terms_of_use"></a></p>

            <input type="button" value="Sign up" class="reveal-button2 reveal-button-signStudent" id="adRegister">
            <label>已经有账号?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12"
                                                          href="javascript:void(0);">Login</a></label>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<!-- mobile register -->
<script type="text/template" id="mobile_register_tmpl">
    <div class="md-content">
        <h4 class="lead-in">现在开始</h4>
        <form>
            <label>手机号<span class="tip-error-text" id="registerMobileTip"></span></label>
            <input name="mobile" type="text" id="registerMobile" autocomplete="off">

            <label>输入验证码<span class="tip-error-text" id="registerSendVCodeTip"></span></label>
            <input style="width: 40%;" name="verificationCode" type="text" id="registerSendVCode" maxlength="4"
                   autocomplete="off">
            <a id="sendMobileVerifyCodeBtn"
               href="javascript:$('#sendMobileVerifyCodeImg').attr('src', '/sendMobileRandomCode?q=' + Math.random());">
                <img id="sendMobileVerifyCodeImg" src="/sendMobileRandomCode"/>
            </a>

            <label>短信验证码<span class="tip-error-text" id="registerVCodeTip"></span></label>
            <input style="margin-bottom: 20px; width: 40%;" name="verificationCode" type="text" id="registerVCode"
                   autocomplete="off">
            <input style="font-size: 18px;" class="reveal-button2 reveal-button-signStudent" name="sendVerifCode"
                   type="button" id="sendVerifCode" value="Get verification code">

            <label>密码(最少8个字符)<span class="tip-error-text" id="registerMobilePwdTip"></span></label>
            <input name="password" type="password" id="registerMobilePwd" autocomplete="off">

            <label>名字<span class="tip-error-text" id="registerMobileNameTip"></span></label>
            <input name="name" type="text" id="registerMobileName" autocomplete="off">

            <p><a href="/terms_of_use"></a></p>
            <input type="button" value="Sign up" class="reveal-button2 reveal-button-signStudent"
                   id="registerMobileBtn">
            <a href="javascript:;" class="swich-register-type" data-type="email">邮箱注册</a>
            <label>
                已经有帐户?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12"
                                                          href="javascript:void(0);">登录</a></label>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</script>
<script type="text/template" id="email_register_tmpl">
    <div class="md-content">
        <h4 class="lead-in">现在开始</h4>
        <form>
            <label>邮箱<span class="tip-error-text" id="registerEmailTip"></span></label>
            <input name="email" type="text" id="registerEmail" class="regEmail" autocomplete="off">

            <label>密码 (至少八位)<span class="tip-error-text" id="registerPwdTip"></span></label>
            <input name="password" type="password" id="registerPwd" autocomplete="off">
            <label>名字<span class="tip-error-text" id="registerNameTip"></span></label>
            <input name="name" type="text" id="registerName" autocomplete="off">

            <p><a href="/terms_of_use"></a></p>

            <input type="button" value="Sign up" class="reveal-button2" id="register">
            <a href="javascript:;" class="swich-register-type" data-type="mobile">手机号注册</a>
            <label>已经有账号?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12"
                                                          href="javascript:void(0);">登录</a></label>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</script>
<!-- student register-->
<div class="md-effect-1 reveal-modal user-login" id="modal-13">

</div>
<a href="javascript:;" class="md-trigger disabled" data-modal="modal-mobileInEmail" id="showInMobileEmail"></a>
<div class="md-effect-1 reveal-modal user-login" id="modal-mobileInEmail">
    <div class="md-content">
        <h4 class="lead-in">恭喜您！</h4>
        <div class="width100" style="width: 80%;margin: 0 auto;">
            <div>
                <label>E-mail subscriptions to receive the latest news of schools and colleges.</label>
                <label>Email: <span style="color:red;" id="updateEmailTip"></span></label>
                <input type="text" value="" class="regEmail" id="updateEmail" autocomplete="off">
            </div>
            <div class="text-center reveal-button-bindemail">
                <input type="button" value="SKIP" class="reveal-button2" id="skipEmailBtn">
                <input type="button" value="CONTINUE" class="reveal-button2" id="updateEmailBtn">
            </div>
        </div>
    </div>
</div>

<!--找回密码弹框-->
<div class="md-effect-1 reveal-modal user-login" id="modal-14">
    <div class="md-content">
        <h4 class="lead-in">忘记你的密码?</h4>
        <h5>We'll email you instructions to reset your password.</h5>

        <form>
            <label>邮箱</label>
            <input name="email" type="text" id="forgotEmail">
            <input type="button" value="Go" class="reveal-button2" id="sendEmail">
            <span id="sendEmailTip"></span>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<script src="/js/jquery-2.2.1.min.js"></script>
<script src="/js/jquery.zclip.js"></script>
<script src="/js/modalEffects_jquery.js?20160415"></script>
<script src="/js/underscore-min.js"></script>
<script type="text/javascript" src="/js/jquery.jcshare.js"></script>
<<%--script type="text/javascript" src="/js/jquery.qrcode.min.js"></script>--%>
<script type="text/javascript" src="/js/top.js"></script>
<script>
    $(function () {
//        $(window).resize(function(){
//            var clintW=$(window).width();
//            if(clintW<1650){
//                $('.nav-center').css('margin-left','2px');
//                $('.navbar ul').css('margin-right','2px');
//            }else {
//                $('.nav-center').css('margin-left','50px');
//                $('.navbar ul').css('margin-right','50px');
//            }
//        })
        var wid = $(window).width();
        var hei = $(window).height();
        if (wid < 769){
            $(".show-for-small-menu").css("width",wid);
            $(".show-for-small-menu").css("height",hei+$(".navbar").height());
            var navList = $(".show-for-small-menu a").length;
            var navHei = $(".show-for-small-menu a").height();
            console.log("屏幕高度："+hei);
            console.log("每个导航链接高度："+navHei);
            $(".show-for-small-menu a").eq(0).css("margin-top","40px");
            $(".small-close").on("click",function () {
                $(".show-for-small-menu").slideUp(400);
                $(".small-menu").show(600);
            });
            $(".small-menu").on("click",function(){
                $(".offsideCustomer").css("display","none");
                $(".small-menu").hide();
                $(".show-for-small-menu").slideDown(400).bind("touchmove",function(e){
                    e.preventDefault();
                    e.stopPropagation();
                },false);
            })
        }
    });
    /*解决高亮显示bug*/
    function addLine(pageText,firstpage,pageId) {
        var URLText=window.location.href;
        if(URLText.indexOf(pageText)>-1) {
            $(firstpage).css("border-bottom", "none");
            $(pageId).css("border-bottom", "2px solid #1bb38c");
            $(firstpage).hover(function () {
                $(firstpage).css("border-bottom", "2px solid #1bb38c");
            }, function () {
                $(firstpage).css("border-bottom", "none");
            })
        }
    }
    addLine("specialization","#student-Page","#slist");
    addLine("userItem","#student-Page","#slist");
    addLine("myReservation","#student-Page","#slist");
    addLine("profile","#student-Page","#partners");

</script>
