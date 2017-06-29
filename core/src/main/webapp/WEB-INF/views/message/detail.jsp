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
    <link rel="stylesheet" type="text/css" href="/style/jquery.mCustomScrollbar.min.css"/>
    <link rel="stylesheet" type="text/css" href="/style/message.css?201604211041"/>
</head>

<body class="index">
<%@include file="/WEB-INF/views/common/top.jsp" %>

<div class="main-wrapper clearfix">
  <!--=====================================left============================================-->
   <%--<aside class="sidebar-container col-lg-3 col-md-3 col-xs-12">
      <div class="row biography">

      </div>
      <div class="row examRecord">

      </div>
      <div class="row">
      <div class="col-xs-12 text-center">
        <p class="inspiration-line">Need Inspiration?</p>
        <a href="/tanghaidan" target="_blank"> <img alt="Vidya golla desktop" class="inspiration-image" src="/images/inspiration-image.png"> </a></div>
      </div>
      <div class="row">
          <div class="col-xs-12">
              <h3 class="lead-in">SHOUTOUTS</h3>
          </div>
          <ul class="friend-impression-list col-xs-12">

          </ul>
      </div>
    </aside>--%>

  <!--=====================================right============================================-->
  <div class="content-container col-lg-12 col-md-12 col-xs-12">

   <div class="message clearfix">
       <h3>MESSAGE</h3>
       <div class="col-lg-3 col-xs-12">
            <div class="message-sider">
              <div class="message-return"><a href="/msg/messages/1"><i class="glyphicon glyphicon-arrow-left"></i></a></div>
              <div class="message-info">
              <dl>
                  <c:if test="${requestScope.sender == null}">
                      <dt><img src="//img-cdn.kanwokanwo.com/images/kanwo_logo.png@1e_1c_0o_0l_160h_160w_90q.src"></dt>
                      <dd><h4 class="text-center">KANWOKANWO</h4></dd>
                  </c:if>
                  <c:if test="${requestScope.sender != null}">
                      <c:if test="${requestScope.sender.type == 'STUDENT'}">
                          <%-- 学生 --%>
                          <dt>
                              <c:if test="${not empty requestScope.studentProfile.biography.avatar}">
                                  <img src="${requestScope.studentProfile.biography.avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_160h_160w_90q.src">
                              </c:if>
                              <c:if test="${empty requestScope.studentProfile.biography.avatar}">
                                  <img src="//img-cdn.kanwokanwo.com/images/defaultStudentAvatar.jpg@1e_1c_0o_0l_160h_160w_90q.src">
                              </c:if>
                          </dt>
                          <dd><h4 class="text-center">${requestScope.studentProfile.biography.name}</h4></dd>
                          <dd>
                              <ul class="icon-list">
                                  <li>
                                      <i class="glyphicon glyphicon-map-marker"></i>
                                      <p><span>
                                          <c:if test="${not empty requestScope.studentProfile.biography.location}">
                                              ${requestScope.studentProfile.biography.location}
                                          </c:if>
                                          <c:if test="${empty requestScope.studentProfile.biography.location}">
                                              N/A
                                          </c:if>
                                      </span></p>
                                  </li>
                                  <li>
                                      <i class="glyphicon glyphicon-bed"></i>
                                      <p>
                                          <c:if test="${not empty requestScope.studentProfile.biography.currentSchool}">
                                              ${requestScope.studentProfile.biography.currentSchool}
                                          </c:if>
                                          <c:if test="${empty requestScope.studentProfile.biography.currentSchool}">
                                              N/A
                                          </c:if>
                                      </p>
                                  </li>
                                  <li>
                                      <i class="glyphicon glyphicon-education"></i>
                                      <p><span>
                                          <c:if test="${not empty requestScope.studentProfile.biography.graduation}">
                                              ${requestScope.studentProfile.biography.graduation}
                                          </c:if>
                                          <c:if test="${empty requestScope.studentProfile.biography.graduation}">
                                              N/A
                                          </c:if>
                                      </span></p>
                                  </li>
                                  <li>
                                      <i class="glyphicon glyphicon-tower"></i>
                                      <p><span>
                                          <c:if test="${not empty requestScope.studentProfile.biography.hobby}">
                                              ${requestScope.studentProfile.biography.hobby}
                                          </c:if>
                                          <c:if test="${empty requestScope.studentProfile.biography.hobby}">
                                              N/A
                                          </c:if>
                                      </span></p>
                                  </li>
                                  <c:if test="${requestScope.studentProfile.examRecordList != null}">
                                      <li>
                                          <i class="glyphicon glyphicon-tags"></i>
                                          <p>
                                              <c:forEach items="${requestScope.studentProfile.examRecordList}" var="record">
                                                  <em>${record.examType}:${record.total}</em>
                                              </c:forEach>
                                          </p>
                                      </li>
                                  </c:if>
                              </ul>
                          </dd>
                      </c:if>
                      <c:if test="${requestScope.sender.type == 'AD_REP'}">
                          <%-- 招生官 --%>
                          <dt>
                              <c:if test="${not empty requestScope.admissionProfile.biography.avatar}">
                                  <img src="${requestScope.admissionProfile.biography.avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_160h_160w_90q.src">
                              </c:if>
                              <c:if test="${empty requestScope.admissionProfile.biography.avatar}">
                                  <img src="//img-cdn.kanwokanwo.com/images/defaultAdmissionAvatar.jpg@1e_1c_0o_0l_160h_160w_90q.src">
                              </c:if>
                          </dt>
                          <dd><h4 class="text-center">${requestScope.admissionProfile.biography.name}</h4></dd>
                          <dd>
                              <ul class="icon-list">
                                  <li>
                                      <i class="glyphicon glyphicon-map-marker"></i>
                                      <p><span>
                                          <c:if test="${not empty requestScope.admissionProfile.biography.currentSchool}">
                                              ${requestScope.admissionProfile.biography.currentSchool}
                                          </c:if>
                                          <c:if test="${empty requestScope.admissionProfile.biography.currentSchool}">
                                              N/A
                                          </c:if>
                                      </span></p>
                                  </li>
                                  <li>
                                      <i class="glyphicon glyphicon-bed"></i>
                                      <p>
                                          <c:if test="${not empty requestScope.admissionProfile.biography.location}">
                                              ${requestScope.admissionProfile.biography.location}
                                          </c:if>
                                          <c:if test="${empty requestScope.admissionProfile.biography.location}">
                                              N/A
                                          </c:if>
                                      </p>
                                  </li>
                                  <li>
                                      <i class="glyphicon glyphicon-education"></i>
                                      <p><span>
                                          <c:if test="${not empty requestScope.admissionProfile.biography.position}">
                                              ${requestScope.admissionProfile.biography.position}
                                          </c:if>
                                          <c:if test="${empty requestScope.admissionProfile.biography.position}">
                                              N/A
                                          </c:if>
                                      </span></p>
                                  </li>
                                  <li>
                                      <i class="glyphicon glyphicon-tower"></i>
                                     <p><span>
                                        <c:if test="${not empty requestScope.admissionProfile.biography.webSite}">
                                              <a href="${requestScope.admissionProfile.biography.webSite}" target="_blank">WebSite</a>
                                          </c:if>
                                          <c:if test="${empty requestScope.admissionProfile.biography.webSite}">
                                              N/A
                                          </c:if>
                                     </span></p>
                                  </li>
                               </ul>
                          </dd>
                      </c:if>
                  </c:if>

                  <!---->

                </dl>
            </div>
          </div>
       </div>

       <div class="col-lg-9 col-xs-12">
                <div class="message-main">
                    <h4 class="text-center">Chat with <strong><c:if test="${sender != null}">${sender.userName}</c:if><c:if test="${sender == null}">KANWO</c:if></strong></h4>
                    <div class="message-scrollbar">
                        <p class="text-center more-message"><a href="javascript:;" class="more-message-btn">...More Message...</a></p>
                        <span id="chatMsgList"></span>
                    </div>
                    <c:if test="${sender != null}">
                        <div class="message-chat">
                            <textarea rows="3" placeholder="Write a reply..." id="replyMsgContent" maxlength="2048"></textarea>
                            <div class="col-lg-9 col-xs-12" style="visibility: hidden;">
                                <a class="message-icon message-icon1" href="javascript:;"></a>
                                <a class="message-icon message-icon2" href="javascript:;"></a>
                                <a class="message-icon message-icon3"href="javascript:;"></a>
                            </div>
                            <div class="col-lg-3 col-xs-12 text-right">
                                <a class="message-reply" href="javascript:;" id="replyMsgBtn">Reply</a>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/common/bottom.jsp"%>
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
<script type="text/template" id="message_list_template">
    <@ _.each(data, function(msg) { @>
        <@ if (msg.isShowTime) { @>
        <p class="text-center message-date relative-position">
            <span class="absolute-position"></span>
            <em class="relative-position"><@=msg.sendTime.substring(0, 16)@></em>
        </p>
        <@ } @>
        <@ if (msg.senderId == ${sessionScope.loginUser.userId}) { @>
            <dl class="message-content clearfix">

                <dt class="col-lg-2 col-xs-3 text-center">
                    <@ if (msg.senderAvatarUrl) { @>
                        <img class="chat-img" src="<@=msg.senderAvatarUrl@>">
                    <@ } else {@>
                        <@ if (msg.senderType == 'AD_REP') { @>
                            <img class="chat-img" src="//img-cdn.kanwokanwo.com/images/defaultAdmissionAvatar.jpg">
                        <@ } else { @>
                            <img class="chat-img" src="//img-cdn.kanwokanwo.com/images/defaultStudentAvatar.jpg">
                        <@ } @>
                    <@ } @>
                </dt>
                <dd class="col-lg-8 col-xs-9">
                    <span><p><@=msg.content@></p></span>
                </dd><dd class="col-lg-2"></dd>
            </dl>
        <@ } else { @>
            <dl class="message-content message-content-else clearfix">
                <dt class="col-lg-2 col-xs-3 text-center">
                    <@ if (msg.senderAvatarUrl) { @>
                        <img class="chat-img" src="<@=msg.senderAvatarUrl@>">
                    <@ } else {@>
                        <@ if (msg.senderId == 0) { @>
                            <img class="chat-img" src="//img-cdn.kanwokanwo.com/images/kanwo_logo.png@1e_1c_0o_0l_54h_54w_90q.src">
                        <@ } else { @>
                            <@ if (msg.senderType == 'AD_REP') { @>
                                <img class="chat-img" src="//img-cdn.kanwokanwo.com/images/defaultAdmissionAvatar.jpg">
                            <@ } else { @>
                                <img class="chat-img" src="//img-cdn.kanwokanwo.com/images/defaultStudentAvatar.jpg">
                            <@ }
                        }@>
                    <@ } @>
                </dt>
                <dd class="col-lg-8 col-xs-9">
                    <p><@=msg.content@></p>
                </dd>
                <dd class="col-lg-2"></dd>
            </dl>
        <@ } @>
    <@ }); @>
</script>
<script type="text/template" id="message_reply_template">
    <div class="message-chat">
        <textarea rows="3" placeholder="Write a reply..."></textarea>
        <div class="col-lg-9 col-xs-12">
            <a class="message-icon message-icon1" href="javascript:;"></a>
            <a class="message-icon message-icon2" href="javascript:;"></a>
            <a class="message-icon message-icon3"href="javascript:;"></a>
        </div>
        <div class="col-lg-3 col-xs-12 text-right">
            <a class="message-reply" href="javascript:;">Reply</a>
        </div>
    </div>
</script>
<script src="/js/classie.js"></script>
<script src="/js/cssParser.js"></script>
<script src="/js/underscore-min.js"></script>
<script src="/js/backbone-min.js"></script>
<script src="/js/backbone.marionette.min.js"></script>
<script src="/js/modalEffects_jquery.js"></script>
<script src="/js/mn_test/viewProfile.js?0329"></script>
<script src="/js/jquery-rebox.js"></script>
<script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript">
$(function(){
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

    $(".message-scrollbar").mCustomScrollbar({
        autoDraggerLength:false,
        scrollInertia:600,
    });

    // message
    var page = ${requestScope.page};
    var senderId = '${requestScope.sender.userId}';
    var senderName = '${requestScope.sender.userName}';
    var currentPage = page.currentPage;
    var totalPage = page.totalPage;
    var chatMsgListTmpl = _.template($('#message_list_template').html());
    var chatReplyTmpl = _.template($('#message_reply_template').html());


    // chatMsgList
    var msgData = [];
    renderMsgList(page.data, 'after');
    $("body").delegate(".more-message-btn","click",function(e){
        currentPage++;
        if (currentPage <= totalPage) {
            $.ajax({
                url: '/msg/chat/' + senderId + '/' + currentPage + '.json',
                data: null,
                dataType: 'json',
                success: function(data){
                    if (data.status == 1) {
                        renderMsgList(data.data.data, 'pre');
                    } else {
                        alert(data.message);
                    }
                },
                error: function() {
                    alert('The system is busy, please try again later!');
                }
            });
        } else {
            $('.more-message-btn').html('...No more message...');
            currentPage--;
        }
    });

    <c:if test="${sender != null}">
    // send message
    $('#replyMsgBtn').click(function(){
        var content = $('#replyMsgContent').val();
        if ($.trim(content).length <= 0) {
            alert('message cannot be empty');
            $('#replyMsgContent').val('');
            return;
        }
        if ($.trim(content).length > 2048) {
            alert('message content too long.');
            return;
        }
        $.ajax({
            url: '/msg/sendMsg',
            type: 'POST',
            data: {'reciverId': senderId, 'title':content, 'content':content},
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    var arr = [];
                    arr[0] = data.data;
                    renderMsgList(arr, 'after');
                    $('#replyMsgContent').val('');
                } else {
                    alert(data.message);
                }
            },
            error: function() {
                alert('The system is busy, please try again later!');
            }
        })
    });
    $("body").keydown(function(event) {
        if (event.keyCode == "13") {
            var enterDownTime = new Date();
            if (event.ctrlKey){
                return;
            }
            var activeEleId = document.activeElement.id;
            if ('replyMsgContent' == activeEleId) {
                if (window.event) {
                    window.event.returnValue = false;
                } else {
                    event.preventDefault();
                }
                $('#replyMsgBtn').click();
            }
        }
    });
    </c:if>

    // newMessage
    getNewMsg();
    function getNewMsg() {
        $.ajax({
            url: '/msg/pull',
            data: {'senderId': senderId, 'time': new Date().getTime()},
            dataType: 'json',
            timeout: 45000,
            success: function(data) {
                if (data.status == 1) {
                    renderMsgList(data.data, 'after');
                }
                getNewMsg();
            },
            error: function(){
                getNewMsg();
            }
        });
    }

    function renderMsgList(data, position) {
        if (data && data.length > 0) {
            if (position == 'after') {
                msgData = msgData.concat(data);
            } else {
                msgData = data.concat(msgData);
            }
            var showTime = strToDate(msgData[0].sendTime);
            msgData[0].isShowTime = true;
            for (var i = 1; i < msgData.length; i++) {
                var item = msgData[i];
                var curTime = strToDate(item.sendTime);
                if ((curTime.getTime() - showTime.getTime()) > (1000 * 60 * 5)) {
                    item.isShowTime = true;
                    showTime = curTime;
                } else {
                    item.isShowTime = false;
                }
            }
            $('#chatMsgList').html(chatMsgListTmpl({data: msgData}));
            // scroll
            if (position == 'after') {
                $(".message-scrollbar").mCustomScrollbar("scrollTo", ".message-content:last");
            } else {
                $(".message-scrollbar").mCustomScrollbar("scrollTo", ".more-message-btn");
            }
            setTimeout(function(){
                if (page.totalPage <= 1) {
                    $('.more-message-btn').html('...No more message...');
                }
            }, 50);
        }
    }
    function strToDate(dateStr) {
        var dateStr = dateStr.replace(/-/g,"/");
        var date = new Date(dateStr);
        return date;
    }
});
</script>
</body>
</html>
