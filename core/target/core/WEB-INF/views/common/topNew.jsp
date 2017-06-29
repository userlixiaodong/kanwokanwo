<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
    .line{margin-bottom:20px;}
    /* 复制提示 */
    .copy-tips{position:fixed;z-index:99999;bottom:50%;left:50%;margin:0 0 -20px -80px;background-color:rgba(0, 0, 0, 0.2);filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr=#30000000, endColorstr=#30000000);padding:6px;}
    .copy-tips-wrap{padding:10px 20px;text-align:center;border:1px solid #F4D9A6;background-color:#FFFDEE;font-size:14px;}
</style>
<div class="md-overlay"></div>
<div class="fixed-top fixed-top-bar">
    <nav class="navbar"><a class="navbar-brand" href="javascript:trackOutboundLink('//www.kanwokanwo.com', 'index_toIndex');"></a>
        <%--移动端--%>
        <div class="header-share-app icon_lists">
            <em><i class="icon iconfont icon-fenxiang"></i></em>
       <span>
      <a href="javascript:void(0);" class="share_wechat"><i class="icon iconfont icon-weixin "></i>
      </a>
           <div class='codeDiv text-center' style='line-height: normal;position: absolute;top:2%;left:100%;background-color: white;padding: 10px;border: 1px solid black;display: none;z-index:99999'>
               <b>分享到微信朋友圈</b><a href='javascript:hideCode()' style="float:right;"><b>x</b></a>
               <div class="codes" style="margin: 10px;text-align: center;"></div>
               <div style="font-size:12px;">打开微信，点击底部的“发现”，<br/>使用“扫一扫”即可将网页分享至朋友圈。</div>
           </div>

       <a href="javascript:void(0);" class="shares share_qq"><i class="icon iconfont icon-qq"></i></a>
       <a href="javascript:void(0);" class="shares share_sina"><i class="icon iconfont icon-xinlang"></i></a>
       </span></div>
        <ul class="left-side navbar-section">
            <li> <span> <i class="glyphicon glyphicon-search"></i>
        <input type="text" value="${q}" class="navbar-search-input" style="width: 289px;">
        </span></li>
        </ul>
        <c:if test="${sessionScope.loginUser != null}">
            <ul class="right-side navbar-section">
                <li><a href="/${sessionScope.loginUser.publicUri}"> <i class="glyphicon glyphicon-home"></i>  <span class="show-for-large-menu">My Home</span>
                </a></li>
                <li></li>
                <li><a href="javascript:void(0);" class="md-trigger" data-modal="modal-yourlink"> <i class="glyphicon glyphicon glyphicon-link"></i> <span class="show-for-large-menu">My link</span>
                </a></li>
                <li></li>
                <li class="user-dropdown-wrap"><div class="subnav-avatar-down user-dropdown">
                    <div class="subnav-avatar">
                        <c:if test="${not empty sessionScope.loginUser.avatarUrl}">
                            <img class="avatar-img" src="${sessionScope.loginUser.avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_35h_35w_100q.src"/>
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
                    <i class="glyphicon glyphicon-menu-down"></i> </div>
                    <ul class="subnav-content">
                        <div class="subnav-content-box clearfix">
                            <div class="subnav-avatar fl">
                                <c:if test="${not empty sessionScope.loginUser.avatarUrl}">
                                    <img class="avatar-img" src="${sessionScope.loginUser.avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_35h_35w_100q.src"/>
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
                                            href="javascript:void(0);" data-modal="modal-6"
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
                        <li class="subnav-link-item"><a href="javascript:void(0);" class="md-trigger" data-modal="modal-yourlink"><i class="glyphicon glyphicon-check"></i><span>My link</span></a>
                        </li>
                        <li class="subnav-link-item"><a href="/${sessionScope.loginUser.publicUri}?flag=preview" target="_blank"><i class="glyphicon glyphicon-eye-open"></i><span>Preview</span></a>
                        </li>
                        <li class="subnav-link-item"><a href="javascript:void(0);" class="md-trigger" data-modal="modal-setting"><i class="glyphicon glyphicon-cog"></i><span>Setting</span></a>
                        </li>
                        <li class="subnav-link-item"><a href="/tanghaidan"><i
                                class="glyphicon glyphicon-th-large"></i><span>Sample</span></a></li>
                        <li class="subnav-link-item"></li>
                        <li class="subnav-link-item"><a href="https://kanwo.daikeapp.com" target="_blank"><i
                                class="glyphicon glyphicon-question-sign"></i><span>Q&A</span></a></li>
                        <li class="subnav-link-item"><a href="/user/logout"><i
                                class="glyphicon glyphicon-log-out"></i><span>Logout</span></a></li>
                    </ul>
                </li>
            </ul>

        </c:if>
        <c:if test="${sessionScope.loginUser == null}">
            <ul class="not-login clearfix fr">
                <li><a class="md-trigger" data-modal="modal-12" href="javascript:trackOutboundLink('', 'index_login');">Log in</a></li>
                <em></em>
                <li><a class="md-trigger" data-modal="modal-selectType" href="javascript:trackOutboundLink('', 'index_topRightSignUp');">Sign up</a></li>
            </ul>
        </c:if>
        <%-- PC--%>
        <div class="header-share icon_lists fr">
            <c:if test="${sessionScope.loginUser == null}">
            <a class="createbtn" href="javascript:void(0);">Create Your Own Page for Free</a>
            </c:if>
       <span>Share：
       <a href="javascript:void(0);" class="share_wechat"><i class="icon iconfont icon-weixin "></i></a>
            <div class='codeDiv text-center' style='line-height: normal;position: absolute;top:82%;right:18%;background-color: white;padding: 10px;border: 1px solid black;display: none;z-index:99999'>
                <b>分享到微信朋友圈</b><a href='javascript:hideCode()' style="float:right;"><b>x</b></a>
                <div class="codes" style="margin: 10px auto;width:170px;"></div>
                <div style="font-size:12px;">打开微信，点击底部的“发现”，<br/>使用“扫一扫”即可将网页分享至朋友圈。</div>
            </div>
       <a href="javascript:void(0);" class="shares share_qq"><i class="icon iconfont icon-qq"></i></a>
       <a href="javascript:void(0);" class="shares share_sina"><i class="icon iconfont icon-xinlang"></i></a>
       </span></div>
    </nav>
</div>
<!-- 设置 -->
<div class="md-effect-1 reveal-modal user-login" id="modal-setting">
    <div class="md-content">
        <h4 class="lead-in">Reset Password</h4>
            <label>Dear ${sessionScope.loginUser.userName}</label>
            <label>New Password</label>
            <input name="password" id="password" type="password" value="">
            <label>Confirm Password</label>
            <input name="repassword" id="repassword" type="password" value="">
            <input type="submit" value="Submit" class="reveal-button">
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal" id="modal-yourlink">
    <div class="md-content">
        <h4 class="lead-in">GET SEEN</h4>
        <label>Copy and paste your kanwokanwo link into any application.</label>
        <textarea class="copy" style="min-height: 50px;padding-top: 10px;padding-left: 5px;" readonly="readonly">https://www.kanwokanwo.com/${sessionScope.loginUser.publicUri}</textarea>
        <a href="/${sessionScope.loginUser.publicUri}?flag=preview" target="_blank"><input type="button" value="Preview Page" class="reveal-button"></a>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<%--<div class="md-effect-1 reveal-modal edit-user-info" id="modal-6">
    <div class="md-content">
        <h4 class="lead-in">EDIT BIO</h4>
            <label>Name</label>
            <input type="text" value="${studentProfile.biography.name}" id="studentName">
            <div class="clearfix">
                <dl class="fl"><dt><i class="glyphicon glyphicon-map-marker"></i>Location</dt><dd><input type="text" id="location" value="${studentProfile.biography.location}"></dd></dl>
                <dl class="fr"><dt><i class="glyphicon glyphicon-bed"></i>Current School</dt><dd><input type="text" id="currentSchool" value="${studentProfile.biography.currentSchool}"></dd></dl>
            </div>
            <div class="clearfix">
                <dl class="fl"><dt><i class="glyphicon glyphicon-education"></i>Graduation Year</dt><dd><input type="text" id="graduationYear" value="${studentProfile.biography.graduation}"></dd></dl>
                <dl class="fr"><dt><i class="glyphicon glyphicon-tower"></i>Major of Interest</dt><dd><input type="text" id="hobby" value="${studentProfile.biography.hobby}"></dd></dl>
            </div>
            <input type="submit" value="Save" class="reveal-button" onclick="checkBiography();" />
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>--%>

<!--登录弹框-->
<div class="md-effect-1 reveal-modal user-login" id="modal-12">
    <div class="md-content">
        <h4 class="lead-in">LOG IN</h4>

        <form>
            <label>Email/Mobile<span id="tip" class="tip-error-text"></span></label>
            <input name="email" type="text" value="" id="email" required>
            <label>Password</label>
            <input name="userPwd" type="password" value="" id="loginpassword">
            <input type="button" value="Log in" class="reveal-button" id="logIn">
            <label class="small-text">Need an account? <a class="md-trigger" data-modal="modal-selectType" href="javascript:void(0);">Sign up</a><br><a class="md-trigger" data-modal="modal-14" href="javascript:void(0);">Forgot your password?</a></label>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<div class="md-effect-1 reveal-modal user-login" id="modal-selectType">
    <div class="md-content">
        <h4 class="lead-in">Start Now</h4>
        It's FREE.
        <div class="text-center">
            <a href="javascript:clearTips();" data-modal="modal-13" class="md-trigger index-option-signuptype">Student</a>
            <a href="javascript:clearTips();" data-modal="modal-15" class="md-trigger index-option-signuptype">School</a>
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
            <input name="email" type="text" id="adregisterEmail">
            <label>Password (8 characters minimum)<span class="tip-error-text" id="adregisterPwdTip"></span></label>
            <input name="password" type="password" id="adregisterPwd" >
            <label>Name<span class="tip-error-text" id="adregisterNameTip"></span></label>
            <input name="name" type="text" id="adregisterName">
            <label>College<span class="tip-error-text" id="adregisterCollegeTip"></span></label>
            <input name="name" type="text" id="adregisterCollege">
            <input type="button" value="Sign up" class="reveal-button" id="adRegister">
            <label>Already have an account?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12" href="javascript:void(0);">Login</a></label>
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
            <input name="mobile" type="text" id="registerMobile">

            <label>SMS Verification Code<span class="tip-error-text" id="registerVCodeTip"></span></label>
            <input style="width: 40%;" name="verificationCode" type="text" id="registerVCode">
            <input style="width: 40%;" class="reveal-button2" name="sendVerifCode" type="button" id="sendVerifCode" value="Get verification code">

            <label>Password (8 characters minimum)<span class="tip-error-text" id="registerMobilePwdTip"></span></label>
            <input name="password" type="password" id="registerMobilePwd" >

            <label>Name<span class="tip-error-text" id="registerMobileNameTip"></span></label>
            <input name="name" type="text" id="registerMobileName">

            <input type="button" value="Sign up" class="reveal-button" id="registerMobileBtn">
            <a href="javascript:;" class="swich-register-type" data-type="email">Email Signup</a>
            <label>Already have an account?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12" href="javascript:void(0);">Login</a></label>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</script>
<script type="text/template" id="email_register_tmpl">
    <div class="md-content">
        <h4 class="lead-in">Start Now</h4>
        <form>
            <label>Email<span class="tip-error-text" id="registerEmailTip"></span></label>
            <input name="email" type="text" id="registerEmail">
            <label>Password (8 characters minimum)<span class="tip-error-text" id="registerPwdTip"></span></label>
            <input name="password" type="password" id="registerPwd" >
            <label>Name<span class="tip-error-text" id="registerNameTip"></span></label>
            <input name="name" type="text" id="registerName">
            <input type="button" value="Sign up" class="reveal-button" id="register">
            <a href="javascript:;" class="swich-register-type" data-type="mobile">Mobile Number Signup</a>
            <label>Already have an account?&nbsp;&nbsp;<a class="md-trigger" data-modal="modal-12" href="javascript:void(0);">Login</a></label>
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
        <div class="width100 text-center">
            <div>
                <p>E-mail subscriptions to receive the latest news of schools and colleges.</p>
                Emai:&nbsp;&nbsp;&nbsp;&nbsp;<input style="width: 60%;" type="text" value="" id="updateEmail">
                <br/><span style="color:red;" id="updateEmailTip"></span>
            </div>
            <br/>
            <input type="button" value="SKIP" class="reveal-button2" id="skipEmailBtn">
            <input type="button" value="CONTINUE" class="reveal-button2" id="updateEmailBtn">
        </div>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
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
            <input type="button" value="Go" class="reveal-button" id="sendEmail">
            <span id="sendEmailTip"></span>
        </form>
        <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
    </div>
</div>
<script type="text/javascript" src="http://test.static.kanwokanwo.com/commonV3.js"></script>
<script type="text/javascript" src="http://test.static.kanwokanwo.com/top-bundle.js"></script>
