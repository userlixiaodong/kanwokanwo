<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160322"/>
    <link rel="stylesheet" type="text/css" href="/style/index.css?201604061"/>
    <link rel="stylesheet" type="text/css" href="/style/message.css?201604261008"/>
</head>

<body class="index">
<%@include file="/WEB-INF/views/common/top.jsp" %>

<div class="main-wrapper clearfix">
  <!--=====================================left============================================-->
   <aside class="sidebar-container col-lg-3 col-md-3 col-xs-12">
      <div class="row biography">

      </div>
      <div class="row examRecord">

      </div>
      <div class="row">
          <div class="col-xs-12">
              <h3 class="lead-in">SHOUTOUTS</h3>
          </div>
          <ul class="friend-impression-list col-xs-12">

          </ul>
      </div>
    </aside>

  <!--=====================================right============================================-->
  <div class="content-container col-lg-12 col-md-12 col-xs-12">

   <div class="message clearfix">
        <h3>MESSAGE</h3>
        <div class="message-item">
            <c:if test="${requestScope.page.totalCount <= 0}">
                <div class="no-message">
                    <p class="unhappy text-center"><img src="/images/unhappy.png">You have no messages</p>
                </div>
            </c:if>
       <c:forEach items="${requestScope.page.data}" var="msg">
        <div class="message-list clearfix" data-id="<c:if test="${msg.senderId == sessionScope.loginUser.userId}">${msg.reciverId}</c:if>
           <c:if test="${msg.senderId != sessionScope.loginUser.userId}">${msg.senderId}</c:if>">
             <div class="col-lg-1 col-xs-6 text-center">
                 <c:if test="${msg.senderId != sessionScope.loginUser.userId}">
                     <c:if test="${msg.senderId == 0}"><img src="//img-cdn.kanwokanwo.com/images/kanwo_logo.png@1e_1c_0o_0l_54h_54w_90q.src"/></c:if>
                     <c:if test="${msg.senderId != 0}">
                         <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
                            <img src="${msg.senderAvatarUrl == ""?"//img-cdn.kanwokanwo.com/images/defaultAdmissionAvatar.jpg":msg.senderAvatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com').concat('@1e_1c_0o_0l_54h_54w_90q.src')}"/>
                         </c:if>
                         <c:if test="${sessionScope.loginUser.role == 'AD_REP'}">
                             <img src="${msg.senderAvatarUrl == ""?"//img-cdn.kanwokanwo.com/images/defaultStudentAvatar.jpg":msg.senderAvatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com').concat('@1e_1c_0o_0l_54h_54w_90q.src')}"/>
                         </c:if>
                     </c:if>
                 </c:if>
                 <c:if test="${msg.senderId == sessionScope.loginUser.userId}">
                     <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
                        <img src="${msg.reciverAvatarUrl == ""?"//img-cdn.kanwokanwo.com/images/defaultAdmissionAvatar.jpg":msg.reciverAvatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com').concat('@1e_1c_0o_0l_54h_54w_90q.src')}"/>
                     </c:if>
                     <c:if test="${sessionScope.loginUser.role == 'AD_REP'}">
                         <img src="${msg.reciverAvatarUrl == ""?"//img-cdn.kanwokanwo.com/images/defaultStudentAvatar.jpg":msg.reciverAvatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com').concat('@1e_1c_0o_0l_54h_54w_90q.src')}"/>
                     </c:if>
                 </c:if>
             </div>
             <div class="col-lg-1 col-xs-6 text-center"><dl><dt>
                 <strong>
                    <c:if test="${msg.senderName == null}">KANWO</c:if>
                    <c:if test="${msg.senderName != null}">
                        <c:if test="${msg.senderId == sessionScope.loginUser.userId}">${msg.reciverName}</c:if>
                        <c:if test="${msg.reciverId == sessionScope.loginUser.userId}">${msg.senderName}</c:if>
                    </c:if>
                 </strong>
             </dt><dd>${msg.ymd}<br>${msg.hm}</dd></dl></div>
             <div class="col-lg-9 col-xs-10">
                 <p <c:if test="${msg.status == 1}">class="message-already"</c:if>>
                     ${msg.content}
                 </p>
             </div>
             <div class="col-lg-1 col-xs-2 text-right">
                <a class="message-btn-down"><i class="glyphicon glyphicon-menu-down"></i></a>
                <div class="message-btn-down-content">
                    <button class="del-msg-btn" data-id="<c:if test="${msg.senderId == sessionScope.loginUser.userId}">${msg.reciverId}</c:if>
           <c:if test="${msg.senderId != sessionScope.loginUser.userId}">${msg.senderId}</c:if>">Delete</button>
                    <%--<button class="share-msg-btn" data-id="${msg.senderId}">Share</button>--%>
                    <button class="already-msg-btn" data-id="<c:if test="${msg.senderId == sessionScope.loginUser.userId}">${msg.reciverId}</c:if>
           <c:if test="${msg.senderId != sessionScope.loginUser.userId}">${msg.senderId}</c:if>">Already</button>
                </div>
             </div>
        </div>
      </c:forEach>
        </div>
   </div>
      <c:if test="${requestScope.page.totalCount > 0}">
          <div class="clearfix message-page text-center">
              <div class="col-md-12 col-lg-12 col-xs-12">
                <nav>
                    <div class="pages" id="divPage"></div>
                </nav>
              </div>
          </div>
      </c:if>
  </div>
</div>
<%@ include file="/WEB-INF/views/common/bottom.jsp"%>
<script type="text/javascript" src="/js/splitpageNew.js"></script>
<%--biography 模板--%>
<script type="text/template" id="biography-template">
    <c:if test="${sessionScope.loginUser.role == 'AD_REP'}">
        <div class="clearfix">
            <div class="col-xs-12 text-center">
                <@if(avatarUrl){@><img width="200" height="200" src="<@=avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src">
                <@}else{@><img width="200" height="200" src="/images/defaultAdmissionAvatar.jpg"><@}@>
            </div>
        </div>
        <div class="col-xs-12 text-center">
            <h2><@=name@></h2>
        </div>
        <ul class="col-xs-12 icon-list">
            <li>
                <i class="glyphicon glyphicon-education"></i>
                <p>
                    <@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@>
                </p>
            </li>
            <li>
                <i class="glyphicon glyphicon-map-marker"></i>
                <p><span>
                    <@if(location){@><@=location@><@}else{@>N/A<@}@>
                </span></p>
            <li>
                <i class="glyphicon glyphicon-user"></i>
                <p><span>
                <@if(position){@><@=position@><@}else{@>N/A<@}@>
                </span></p>
            </li>
            </li>
            <li>
                <i class="glyphicon glyphicon-link"></i>
                <p><span>
                <@if(webSite){@>
                    <a href="<@=webSite@>">Our Website</a>
                <@}else{@>
                    N/A
                <@}@>
                </span></p>
            </li>
            <li id="examRecord">
            </li>
        </ul>
    </c:if>

    <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
        <div class="clearfix">
            <div class="col-xs-12 text-center">
                <@if(avatar){@><img width="200" height="200" src="<@=avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src">
                <@}else{@><img width="200" height="200" src="/images/defaultavatar.jpg"><@}@>
            </div>
        </div>
        <div class="col-xs-12 text-center">
            <h2><@=name@></h2>
        </div>
        <ul class="col-xs-12 icon-list">
            <li>
                <i class="glyphicon glyphicon-map-marker"></i>
                <p><span>
                    <@if(location){@><@=location@><@}else{@>N/A<@}@>
                </span></p>
            </li>
            <li>
                <i class="glyphicon glyphicon-bed"></i>
                <p>
                    <@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@>
                </p>
            </li>
            <li>
                <i class="glyphicon glyphicon-education"></i>
                <p><span>
                <@if(graduation){@><@=graduation@><@}else{@>N/A<@}@>
                </span></p>
            </li>
            <li>
                <i class="glyphicon glyphicon-tower"></i>
                <p><span>
                <@if(hobby){@><@=hobby@><@}else{@>N/A<@}@>
                </span></p>
            </li>
            <li id="examRecord">
            </li>
        </ul>
    </c:if>
</script>

<script type="text/template" id="remarkList_template">
    <@ _.each(remarkMap, function(remark,title,index){ @>
    <li><@=title@>（<@=remark.length@>）
        <div class="tips text-center">
            <div class="clearfix" style=" width: 282px;">
                <div class="randomColor" style="width: auto;float: left">
                <@ _.each(remark, function(item,index){ @>
                <dl>
                    <dt><a href="/<@=item.fromPublicUri@>" target="_blank"><img src="<@=item.fromAvatar == '' ?'/images/defaultavatar.jpg':item.fromAvatar@>"></a></dt>
                    <dd><a href="/<@=item.fromPublicUri@>" target="_blank"><@=item.fromPublicUri@></a></dd>
                </dl>
                <@ }) @>
            </div>
        </div>
    </li>
    <@ }) @>
</script>
<script src="/js/classie.js"></script>
<script src="/js/cssParser.js"></script>
<script src="/js/underscore-min.js"></script>
<script src="/js/backbone-min.js"></script>
<script src="/js/backbone.marionette.min.js"></script>
<script src="/js/modalEffects_jquery.js"></script>
<script src="/js/mn_test/viewProfile.js?0329"></script>
<script src="/js/jquery-rebox.js"></script>
<script type="text/javascript">
$(function(){
    var loginUserId = ${sessionScope.loginUser.userId};
    var profileData = ${requestScope.profileJson};
    var biography = null;
    <c:if test="${sessionScope.loginUser.role == 'AD_REP'}">
        biography = profileData.biography;
    </c:if>
    <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
        biography = ${biographyJson};
    </c:if>
    new App.BiographyModuleSimpleView({model: new App.Biography(biography), el: ".biography"}).render();
    var remarkJson = ${remarkJson};
    var remarkDict = new App.RemarkDict({remarkList: remarkJson});
    new App.RemarkListView({model: remarkDict, el: ".friend-impression-list"}).render();

    <c:if test="${requestScope.page.totalCount > 0}">
        pg = new showPages('pg', ${requestScope.page.currentPage }, '/msg/messages/{page}');
        pg.pageCount = ${requestScope.page.totalPage};
        pg.printHtml("divPage");
    </c:if>

    $("body").delegate(".message-list","click",function(e){
        var item = $(this);
        var userId = item.attr('data-id');
        location.href = '/msg/chat/' + userId + '/1';
    });

    $("body").delegate(".del-msg-btn","click",function(e){
        var item = $(this);
        var senderId = item.attr('data-id');
        e.stopPropagation();
        if(confirm('Are you sure you want to delete?')) {
            $.ajax({
                url: '/msg/del',
                type: 'POST',
                data: {'senderId': senderId},
                dataType: 'json',
                success: function (data) {
                    if (data.status == 1) {
                        location.href = location.href;
                    } else {
                        alert(data.message);
                    }
                }
            });
        }
    });

    $("body").delegate(".share-msg-btn","click",function(e){
        var item = $(this);
        var senderId = item.attr('data-id');
    });

    $("body").delegate(".already-msg-btn","click",function(e) {
        var item = $(this);
        var senderId = item.attr('data-id');
        e.stopPropagation();
        $.ajax({
            url: '/msg/readMsgStatus',
            type: 'POST',
            data: {'senderId': senderId},
            dataType: 'json',
            success: function (data) {
                if (data.status == 1) {
                    location.href = location.href;
                } else {
                    alert(data.message);
                }
            }
        });
    });

    $.each($('.message-btn-down'),function(index){
	 $('.message-btn-down:eq('+index+')').click(function (e) {
	   $('.message-btn-down:eq('+index+')').attr("href","javascript:void(0);");
	   $('.message-btn-down:eq('+index+')').next('.message-btn-down-content').slideToggle();
        e.stopPropagation();
	   });
	 });
});
</script>
</body>
</html>
