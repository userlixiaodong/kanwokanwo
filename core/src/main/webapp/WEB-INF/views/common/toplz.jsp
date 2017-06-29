<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="/js/jquery-2.2.1.min.js"></script>
<script src="/js/jquery.zclip.js"></script>
<script src="/js/modalEffects_jquery.js?20160415"></script>
<script src="/js/underscore-min.js"></script>
<script type="text/javascript" src="/js/jquery.jcshare.js"></script>
<script type="text/javascript" src="/js/jquery.qrcode.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".nav-basic").find("li").each(function () {
            var a = $(this).find("a:first")[0];
            if ($(a).attr("href") === location.pathname) {
                $(this).addClass("active");
            } else {
                $(this).removeClass("active");
            }
        });
    })
</script>
<script type="text/javascript" src="/js/top.js"></script>

<div class="container">


    <!-- Static navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse ">

                <c:if test="${sessionScope.loginUser != null}"> <!--登录后导航栏-->
                <ul class="nav navbar-nav nav-basic">
                    <li ><a href="/">Home<br><span style="font-size: 12px;font-family: '微软雅黑';">首页</span></a></li>
                    <li><a href="/video/list">Videos<br><span style="font-size: 12px;font-family: '微软雅黑';">学校视频</span></a></li>
                    <li><a href="/admission/profile/partnerschoolList">Schools<br><span style="font-size: 12px;font-family: '微软雅黑';">院校库</span></a></li>
                    <li><a href="/specialization/list">Activities<br><span style="font-size: 12px;font-family: '微软雅黑';">活动提升</span></a></li>
                    <li><a href="../../../statics/mustRead.jsp">Must-Read<br><span style="font-size: 12px;font-family: '微软雅黑';">用户必读</span></a></li>
                    <li><a href="/statics/businessCooperation.jsp">Partnership<br><span style="font-size: 12px;font-family: '微软雅黑';">商务合作</span></a></li>
                    <%--<li class="dropdown">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li><a href="#">Action</a></li>--%>
                            <%--<li><a href="#">Another action</a></li>--%>
                            <%--<li><a href="#">Something else here</a></li>--%>
                            <%--<li role="separator" class="divider"></li>--%>
                            <%--<li class="dropdown-header">Nav header</li>--%>
                            <%--<li><a href="#">Separated link</a></li>--%>
                            <%--<li><a href="#">One more separated link</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
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
                                <i class="glyphicon glyphicon-menu-down"></i>
                            </div>

                            <%--<span class="caret"></span>--%>
                        </a>
                        <ul class="dropdown-menu">

                            <li class="subnav-link-item"><a href="javascript:void(0);" class="md-trigger"
                                                            data-modal="modal-setting"><i
                                    class="glyphicon glyphicon-cog"></i><span style="color: #fff">Setting</span><span style="font-size: 12px;font-family: '微软雅黑';color: #fff">密码重置</span></a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Info</li>
                            <li class="subnav-link-item"><a href="/${sessionScope.loginUser.publicUri}"><i
                                    class="glyphicon glyphicon-home"></i><span style="color: #fff">Profile</span><span style="font-size: 12px;font-family: '微软雅黑';color: #fff">个人主页</span></a>
                            </li>
                            <li class="subnav-link-item"><a href="/${sessionScope.loginUser.publicUri}?flag=preview"
                                                            target="_blank"><i class="glyphicon glyphicon-eye-open"></i><span style="color: #fff">Preview</span><span style="font-size: 12px;font-family: '微软雅黑';color: #fff">主页预览</span></a>
                            </li>

                            <%--<li class="subnav-link-item"><a href="/tanghaidan"><i--%>
                                    <%--class="glyphicon glyphicon-th-large"></i><span>Sample</span></a></li>--%>
                            <%--<li class="subnav-link-item"><a href="/msg/messages/1">--%>
                                <%--<img src="/images/message-icon-chat.png" class="subnav-chat-img">--%>
                                <%--</i><span class="subnav-chat-text">Message</span></a></li>--%>
                            <%--<li class="subnav-link-item"><a href="/admission/profile/partnerschoolList" target="_blank"><i--%>
                                    <%--class="glyphicon glyphicon-bed"></i><span>Schools</span></a>--%>
                            <%--</li>--%>
                            <li class="subnav-link-item"><a href="/reservation/myReservation" id="myreserve"><i
                                    class="glyphicon glyphicon-phone-alt"></i><span style="color: #fff">Orders</span><span style="font-size: 12px;font-family: '微软雅黑';color: #fff">活动订单</span></a>
                            </li>

                            <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
                                <li class="subnav-link-item no">
                                    <a href="/specialization/applyInfo" id="applyInfo"><i
                                            class="glyphicon glyphicon-cog"></i><span style="color: #fff">Apply Info</span><span style="font-size: 12px;font-family: '微软雅黑';color: #fff">活动申请信息</span></a>
                                </li>
                            </c:if>

                            <%--<li class="subnav-link-item"><a href="" target="_blank"><i--%>
                                    <%--class="glyphicon glyphicon-question-sign"></i><span>Q&A</span></a></li>--%>
                            <li class="subnav-link-item"><a href="/user/logout"><i
                                    class="glyphicon glyphicon-log-out"></i><span style="color: #fff">Logout</span><span style="font-size: 12px;font-family: '微软雅黑';color: #fff">注销</span></a></li>
                        </ul>
                        </li>
                    <%--<li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>--%>
                        <%--<li ><a class="md-trigger" data-modal="modal-12" href="javascript:trackOutboundLink('', 'index_login');">Login<br><span style="font-size: 12px;font-family: '微软雅黑';">登录</span></a></li>--%>
                        <%--<em></em>--%>
                        <%--<li ><a class="md-trigger" data-modal="modal-selectType" href="javascript:trackOutboundLink('', 'index_topRightSignUp');">Sign Up<br><span style="font-size: 12px;font-family: '微软雅黑';">注册</span></a></li>--%>
                </ul>
            </div><!--/.nav-collapse -->
                </c:if>
                <c:if test="${sessionScope.loginUser == null}">
                    <ul class="nav navbar-nav nav-basic">
                        <li class="active"><a href="/">Home<br><span style="font-size: 12px;font-family: '微软雅黑';">首页</span></a></li>
                        <li><a href="/video/list">Videos<br><span style="font-size: 12px;font-family: '微软雅黑';">学校视频</span></a></li>
                        <li><a href="/admission/profile/partnerschoolList">Schools<br><span style="font-size: 12px;font-family: '微软雅黑';">院校库</span></a></li>
                        <li><a href="/specialization/list">Activities<br><span style="font-size: 12px;font-family: '微软雅黑';">活动提升</span></a></li>
                        <li><a href="../../../statics/mustRead.jsp">Must-Read<br><span style="font-size: 12px;font-family: '微软雅黑';">用户必读</span></a></li>
                        <li><a href="/statics/businessCooperation.jsp">Partnership<br><span style="font-size: 12px;font-family: '微软雅黑';">商务合作</span></a></li>
                            <%--<li class="dropdown">--%>
                            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>--%>
                            <%--<ul class="dropdown-menu">--%>
                            <%--<li><a href="#">Action</a></li>--%>
                            <%--<li><a href="#">Another action</a></li>--%>
                            <%--<li><a href="#">Something else here</a></li>--%>
                            <%--<li role="separator" class="divider"></li>--%>
                            <%--<li class="dropdown-header">Nav header</li>--%>
                            <%--<li><a href="#">Separated link</a></li>--%>
                            <%--<li><a href="#">One more separated link</a></li>--%>
                            <%--</ul>--%>
                            <%--</li>--%>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                            <%--<li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>--%>
                        <li ><a class="md-trigger" data-modal="modal-12" href="javascript:trackOutboundLink('', 'index_login');">Login<br><span style="font-size: 12px;font-family: '微软雅黑';">登录</span></a></li>
                        <em></em>
                        <li ><a class="md-trigger" data-modal="modal-selectType" href="javascript:trackOutboundLink('', 'index_topRightSignUp');">Sign Up<br><span style="font-size: 12px;font-family: '微软雅黑';">注册</span></a></li>
                    </ul>
                </c:if>
        </div><!--/.container-fluid -->
    </nav>

</div> <!-- /container -->

    <%--<!-- Static navbar -->--%>
    <%--<nav class="navbar navbar-inverse navbar-fixed-top">--%>
        <%--<div class="container-fluid">--%>
            <%--<div class="navbar-header">--%>
                <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">--%>
                    <%--<span class="sr-only">Toggle navigation</span>--%>
                    <%--<span class="icon-bar"></span>--%>
                    <%--<span class="icon-bar"></span>--%>
                    <%--<span class="icon-bar"></span>--%>
                <%--</button>--%>
                <%--<a class="navbar-brand" href="/"></a>--%>
            <%--</div>--%>
            <%--<div id="navbar1" class="navbar-collapse collapse ">--%>
                <%--<ul class="nav navbar-nav nav-basic">--%>
                    <%--<li ><a href="/">Home<br><span style="font-size: 12px;font-family: '微软雅黑';">首页</span></a></li>--%>
                    <%--<li><a href="/video/list">Videos<br><span style="font-size: 12px;font-family: '微软雅黑';">学校视频</span></a></li>--%>
                    <%--<li><a href="/admission/profile/partnerschoolList">Schools<br><span style="font-size: 12px;font-family: '微软雅黑';">院校库</span></a></li>--%>
                    <%--<li><a href="/specialization/list">Activities<br><span style="font-size: 12px;font-family: '微软雅黑';">活动提升</span></a></li>--%>
                    <%--<li><a href="../../../statics/mustRead.jsp">Must-Read<br><span style="font-size: 12px;font-family: '微软雅黑';">用户必读</span></a></li>--%>
                    <%--<li><a href="/statics/businessCooperation.jsp">Partnership<br><span style="font-size: 12px;font-family: '微软雅黑';">商务合作</span></a></li>--%>
                        <%--&lt;%&ndash;<li class="dropdown">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<ul class="dropdown-menu">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<li><a href="#">Action</a></li>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<li><a href="#">Another action</a></li>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<li><a href="#">Something else here</a></li>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<li role="separator" class="divider"></li>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<li class="dropdown-header">Nav header</li>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<li><a href="#">Separated link</a></li>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<li><a href="#">One more separated link</a></li>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                <%--</ul>--%>
                <%--<ul class="nav navbar-nav navbar-right">--%>
                        <%--&lt;%&ndash;<li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>&ndash;%&gt;--%>
                    <%--<li ><a class="md-trigger" data-modal="modal-12" href="javascript:trackOutboundLink('', 'index_login');">Login<br><span style="font-size: 12px;font-family: '微软雅黑';">登录</span></a></li>--%>
                    <%--<em></em>--%>
                    <%--<li ><a class="md-trigger" data-modal="modal-selectType" href="javascript:trackOutboundLink('', 'index_topRightSignUp');">Sign Up<br><span style="font-size: 12px;font-family: '微软雅黑';">注册</span></a></li>--%>
                <%--</ul>--%>
            <%--</div><!--/.nav-collapse -->--%>
        <%--</div><!--/.container-fluid -->--%>
    <%--</nav>--%>

    <%--</div> <!-- /container -->--%>





<%----------------------------------------------------------------弹窗开始-----------------------------------------------------------------------------------------------------------------%>
<!-- 设置 -->
<div class="md-effect-1 reveal-modal user-login" id="modal-setting">
    <div class="md-content">
        <h4 class="lead-in">Reset Password</h4>
        <label>Dear ${sessionScope.loginUser.userName}</label>
        <label>New Password</label>
        <input name="password" id="password" type="password" value="">
        <label>Confirm Password</label>
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
                  readonly="readonly">http://www.kanwokanwo.com/${sessionScope.loginUser.publicUri}</textarea>
        <a href="/${sessionScope.loginUser.publicUri}?flag=preview" target="_blank"><input type="button"
                                                                                           value="Preview Page"
                                                                                           class="reveal-button"></a>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>

<!--登录弹框-->
<div class="md-effect-1 reveal-modal user-login" id="modal-12">
    <div class="md-content">
        <h4 class="lead-in">LOG IN</h4>

        <form>
            <label>Email/Mobile<span id="tip" class="tip-error-text"></span></label>
            <input name="email" type="text" value="" id="email" required>
            <label>Password</label>
            <input name="userPwd" type="password" value="" id="loginpassword">
            <input type="button" value="Log in" class="reveal-button2" id="logIn">
            <%--<div class="login_sf">--%>
            <%--<div class="login_title">Create account with:</div>--%>
            <%--<a title="使用新浪微博帐号登录" target="_blank" class="icon_wb" href="/oauth/login?flag=sina"></a>--%>
            <%--<a title="使用腾讯QQ帐号登录" target="_blank" class="icon_qq" href="/oauth/login?flag=qq"></a>--%>
            <%--<a title="使用微信帐号登录" target="_blank" class="icon_weixin" href="/oauth/login?flag=wechat"></a>--%>
            <%--</div>--%>
            <label class="small-text">Need an account? <a class="md-trigger" data-modal="modal-selectType"
                                                          href="javascript:void(0);">Sign up</a><br><a
                    class="md-trigger" data-modal="modal-14" href="javascript:void(0);">Forgot your
                password?</a></label>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal user-login" id="modal-selectType">
    <div class="md-content">
        <h4 class="lead-in">Start Now</h4>
        It's FREE.
        <div class="text-center sign-in-model">
            <a href="javascript:clearTips();" data-modal="modal-13"
               class="reveal-button md-trigger index-option-signuptype">Student</a>
            <a href="javascript:clearTips();" data-modal="modal-15"
               class="reveal-button md-trigger index-option-signuptype">School</a>
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
        <h4 class="lead-in">Start Now</h4>

        <form>
            <label>Email<span class="tip-error-text" id="adregisterEmailTip"></span></label>
            <input name="email" type="text" id="adregisterEmail" class="regEmail" autocomplete="off">
            <label>Password (8 characters minimum)<span class="tip-error-text" id="adregisterPwdTip"></span></label>
            <input name="password" type="password" id="adregisterPwd" autocomplete="off">
            <label>Name<span class="tip-error-text" id="adregisterNameTip"></span></label>
            <input name="name" type="text" id="adregisterName" autocomplete="off">
            <label>School<span class="tip-error-text" id="adregisterCollegeTip"></span></label>
            <input name="name" type="text" id="adregisterCollege" autocomplete="off">
            <label>Country<span class="tip-error-text" id="adregisterSchoolCountrylTip"></span></label>
            <select id="adregisterSchoolCountry">
                <option value="-1">===Please Choose===</option>
                <option value="CHINA">CHINA</option>
                <option value="OTHER">OTHER</option>
            </select>

            <p>By clicking "Sign up" you agree to our <a href="/terms_of_use">terms of use</a></p>

            <input type="button" value="Sign up" class="reveal-button2 reveal-button-signStudent" id="adRegister">
            <label>Already have an account?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12"
                                                          href="javascript:void(0);">Login</a></label>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<!-- mobile register -->
<script type="text/template" id="mobile_register_tmpl">
    <div class="md-content">
        <h4 class="lead-in">Start Now</h4>
        <form>
            <label>Mobile Number<span class="tip-error-text" id="registerMobileTip"></span></label>
            <input name="mobile" type="text" id="registerMobile" autocomplete="off">

            <label>Type the characters below<span class="tip-error-text" id="registerSendVCodeTip"></span></label>
            <input style="width: 40%;" name="verificationCode" type="text" id="registerSendVCode" maxlength="4"
                   autocomplete="off">
            <a id="sendMobileVerifyCodeBtn"
               href="javascript:$('#sendMobileVerifyCodeImg').attr('src', '/sendMobileRandomCode?q=' + Math.random());">
                <img id="sendMobileVerifyCodeImg" src="/sendMobileRandomCode"/>
            </a>

            <label>SMS Verification Code<span class="tip-error-text" id="registerVCodeTip"></span></label>
            <input style="margin-bottom: 20px; width: 40%;" name="verificationCode" type="text" id="registerVCode"
                   autocomplete="off">
            <input style="font-size: 18px;" class="reveal-button2 reveal-button-signStudent" name="sendVerifCode"
                   type="button" id="sendVerifCode" value="Get verification code">

            <label>Password (8 characters minimum)<span class="tip-error-text" id="registerMobilePwdTip"></span></label>
            <input name="password" type="password" id="registerMobilePwd" autocomplete="off">

            <label>Name<span class="tip-error-text" id="registerMobileNameTip"></span></label>
            <input name="name" type="text" id="registerMobileName" autocomplete="off">

            <p>By clicking "Sign up" you agree to our <a href="/terms_of_use">terms of use</a></p>
            <input type="button" value="Sign up" class="reveal-button2 reveal-button-signStudent"
                   id="registerMobileBtn">
            <a href="javascript:;" class="swich-register-type" data-type="email">Email Signup</a>
            <label>Already have an account?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12"
                                                          href="javascript:void(0);">Login</a></label>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</script>
<script type="text/template" id="email_register_tmpl">
    <div class="md-content">
        <h4 class="lead-in">Start Now</h4>
        <form>
            <label>Email<span class="tip-error-text" id="registerEmailTip"></span></label>
            <input name="email" type="text" id="registerEmail" class="regEmail" autocomplete="off">

            <label>Password (8 characters minimum)<span class="tip-error-text" id="registerPwdTip"></span></label>
            <input name="password" type="password" id="registerPwd" autocomplete="off">
            <label>Name<span class="tip-error-text" id="registerNameTip"></span></label>
            <input name="name" type="text" id="registerName" autocomplete="off">

            <p>By clicking "Sign up" you agree to our <a href="/terms_of_use">terms of use</a></p>

            <input type="button" value="Sign up" class="reveal-button2" id="register">
            <a href="javascript:;" class="swich-register-type" data-type="mobile">Mobile Number Signup</a>
            <label>Already have an account?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12"
                                                          href="javascript:void(0);">Login</a></label>
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
        <h4 class="lead-in">Congratulations！</h4>
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
        <h4 class="lead-in">FORGOT YOUR PASSWORD?</h4>
        <h5>We'll email you instructions to reset your password.</h5>

        <form>
            <label>Email</label>
            <input name="email" type="text" id="forgotEmail">
            <input type="button" value="Go" class="reveal-button2" id="sendEmail">
            <span id="sendEmailTip"></span>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<%---------------------------------------------------------------弹窗结束------------------------------------------------------------------------------------------------------------------%>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>