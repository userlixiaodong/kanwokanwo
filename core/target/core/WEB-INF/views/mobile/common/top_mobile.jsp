<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="pos_f">
  <div class="fl"> <a href="/" class="header_logo"><img class="center" src="/images/logomobile.png"></a>
    <div class="top_share pos_r"><i class="icon_fenxiang iconfont center"></i>
      <ul class="school_share pos_a">
        <%--<li><a id="shareWechat" href="javascript:;"><i class="icon_weixin iconfont"></i></a></li>--%>
        <li><a id="shareQQ" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Flocalhost%3A8080%2Fliuruichao3&title=%E6%88%91%E5%9C%A8%E2%80%9D%E7%9C%8B%E6%88%91%E7%9C%8B%E6%88%91%E2%80%9D%E4%B8%8A%E5%8F%91%E7%8E%B0%E4%BA%86%E8%BF%99%E4%B8%AA%E9%A1%B5%E9%9D%A2%EF%BC%8C%E7%95%99%E5%AD%A6%E7%94%B3%E8%AF%B7%E6%9D%90%E6%96%99%E8%BF%99%E4%B9%88%E5%81%9A%E5%A4%AA%E9%85%B7%E4%BA%86%EF%BC%8C%E5%A4%A7%E5%AE%B6%E9%83%BD%E5%9C%A8%E7%94%A8%EF%BC%8C%E4%BD%A0%E5%86%8D%E4%B8%8D%E7%94%A8%E5%B0%B1%E6%99%9A%E4%BA%86%E3%80%82&summary=%E6%AC%A2%E8%BF%8E%E4%BD%BF%E7%94%A8%E7%9C%8B%E6%88%91%E7%9C%8B%E6%88%91~"><i class="icon_qq iconfont"></i></a></li>
        <li><a id="shareSina" href="http://v.t.sina.com.cn/share/share.php?searchPic=false&url=http%3A%2F%2Flocalhost%3A8080%2Fliuruichao3&title=%E6%88%91%E5%9C%A8%E2%80%9D%E7%9C%8B%E6%88%91%E7%9C%8B%E6%88%91%E2%80%9D%E4%B8%8A%E5%8F%91%E7%8E%B0%E4%BA%86%E8%BF%99%E4%B8%AA%E9%A1%B5%E9%9D%A2%EF%BC%8C%E7%95%99%E5%AD%A6%E7%94%B3%E8%AF%B7%E6%9D%90%E6%96%99%E8%BF%99%E4%B9%88%E5%81%9A%E5%A4%AA%E9%85%B7%E4%BA%86%EF%BC%8C%E5%A4%A7%E5%AE%B6%E9%83%BD%E5%9C%A8%E7%94%A8%EF%BC%8C%E4%BD%A0%E5%86%8D%E4%B8%8D%E7%94%A8%E5%B0%B1%E6%99%9A%E4%BA%86%E3%80%82"><i class="icon_xinlang iconfont"></i></a></li>
      </ul>
    </div>
    <a class="search_btn" href="/search/users?q="><i class="icon_sousuo iconfont center"></i></a> </div>
  <div class="fr">
    <c:if test="${sessionScope.loginUser == null}">
      <a class="login_in fr tac" href="javascript:location.href='/user/mobile/login?redirectUrl=' + location.pathname;">Log in</a>
    </c:if>
    <c:if test="${sessionScope.loginUser != null}">
        <a href="/msg/messages/1" target="_blank">
          <i class="icon_duihuakuang iconfont center"></i>
          <em class="pos_a green_circle"></em>
        </a>
        <a href="/${sessionScope.loginUser.publicUri}" target="_blank">
          <i class="icon_zhuye iconfont center"></i>
        </a>
        <%--<a href="javascript:;" target="_blank">
          <i class="icon_lianjie iconfont center"></i>
        </a>--%>
        <div class="drop_down_btn pos_r"> <a class="avatar" href="javascript:;">
            <c:if test="${not empty sessionScope.loginUser.avatarUrl}">
                <img class="center" src="${sessionScope.loginUser.avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_35h_35w_100q.src"/>
            </c:if>
            <c:if test="${empty sessionScope.loginUser.avatarUrl}">
                <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
                    <img class="center" src="/images/defaultavatar.jpg"/>
                </c:if>
                <c:if test="${sessionScope.loginUser.role == 'AD_REP'}">
                    <img class="center" src="/images/defaultAdmissionAvatar.jpg"/>
                </c:if>
            </c:if>
        </a> <a href="javascript:;"><i class="icon_jiantouxia_strong iconfont center"></i></a>
          <div class="drop_down_box pos_a tal">
            <dl>
              <dt><a class="avatar" href="javascript:;">
                  <c:if test="${not empty sessionScope.loginUser.avatarUrl}">
                      <img class="center" src="${sessionScope.loginUser.avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_35h_35w_100q.src"/>
                  </c:if>
                  <c:if test="${empty sessionScope.loginUser.avatarUrl}">
                      <c:if test="${sessionScope.loginUser.role == 'STUDENT'}">
                          <img class="center" src="/images/defaultavatar.jpg"/>
                      </c:if>
                      <c:if test="${sessionScope.loginUser.role == 'AD_REP'}">
                          <img class="center" src="/images/defaultAdmissionAvatar.jpg"/>
                      </c:if>
                  </c:if>
              </a></dt>
              <%--<dd><span class="omit">xiaocaifengsunxiaocaifengsun</span><a href="javascript:;">Edit bio</a></dd>--%>
            </dl>
            <ul>
              <%--<li><a href="javascript:void(0);"><i class="icon_lianjie iconfont"></i><span>my&nbsp;link</span></a></li>--%>
              <li><a href="/${sessionScope.loginUser.publicUri}?flag=preview"><i class="icon_preview iconfont"></i><span>preview</span></a></li>
              <%--<li><a href="javascript:void(0);"><i class="icon_setting iconfont"></i><span>setting</span></a></li>--%>
              <li><a href="/tanghaidan"><i class="icon_sample iconfont"></i><span>sample</span></a></li>
              <li><a href="/msg/messages/1"><i class="icon_message iconfont"></i><span>message</span></a></li>
              <li><a href="/partners"><i class="icon_xuexiao_right iconfont"></i><span>schools</span></a></li>
              <li><a href="https://kanwo.daikeapp.com/"><i class="icon_yiwen iconfont"></i><span>Q&A</span></a></li>
              <li><a href="/user/logout"><i class="icon_logout iconfont"></i><span>logout</span></a></li>
            </ul>
          </div>
        </div>
  </c:if>
  </div>
</header>
<section class="school_top tac pos_r">
  <h2 class="omit">${requestScope.admissionProfile.biography.name}</h2>
  <h6 class="omit">${requestScope.admissionProfile.biography.schoolRank}</h6>
  <p>
      <span class="like tal">
          <a href="javascript:;" id="userFollowBtn">
              <i class="icon_xin_shi iconfont <c:if test="${requestScope.isFollow}">red</c:if>"></i>
          </a>
          &nbsp;&nbsp;Follow （<span id="followCountSpan" style="width: auto;">${requestScope.admissionProfile.followCount}</span>）
      </span>
      <span class="get_btn tar">
          <a href="/msg/chat/${admissionProfile.userId}/1" target="_blank">GET IN TOUCH</a>
      </span>
  </p>
  <a class="school_avatar pos_a">
    <c:if test="${empty requestScope.admissionProfile.biography.avatarUrl}">
      <img src="/images/defaultAdmissionAvatar.jpg" width="198" height="198">
    </c:if>
    <c:if test="${not empty requestScope.admissionProfile.biography.avatarUrl}">
        <img src="${admissionProfile.biography.avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_198h_198w_100q.src" width="198" height="198">
    </c:if>
  </a>
</section>
<script type="text/javascript" src="/js/zepto.min.js"></script>
<script type="text/javascript" src="/js/touch.js"></script>
<script type="text/javascript" src="/js/underscore-min.js"></script>
<script type="text/javascript">
      window.loginUserId = '${sessionScope.loginUser.userId}';
      window.isFollow = ${requestScope.isFollow};
      window.schoolId = ${requestScope.admissionProfile.userId};
      $('#userFollowBtn').tap(function(){
        var loginUserId = window.loginUserId;
        var schoolId = window.schoolId;
        var isFollow = window.isFollow;
        if (loginUserId == schoolId) {
            return;
        }
        if (!loginUserId) {
            alert('Please login');
            return;
        }
        var url = '';
        if (isFollow) {
            url = '/user/unfollow';
        } else {
            url = '/user/follow';
        }

        var followCount = parseInt($('#followCountSpan').html());
        $.ajax({
            url: url,
            type: 'POST',
            data: {'ownerId': schoolId},
            success: function(data) {
                data = JSON.parse(data);
                if (data.status == 1) {
                    var imgSrc = '';
                    if (isFollow) {
                        $('#userFollowBtn').find('i').css('color', '#cecdcd');
                        followCount--;
                    } else {
                        $('#userFollowBtn').find('i').css('color', 'red');
                        followCount++;
                    }
                    $('#followCountSpan').html(followCount);
                    window.isFollow = !isFollow;
                } else {
                    alert(data.message);
                }
            }
        })
      });
	    /*获取公共右侧导航高度*/
	    var a = $('.drop_down_box').height($(window).height());
	    /*公共头部右侧点击展开折叠*/
	    $('.drop_down_btn').tap(function() {
	    	$('.drop_down_box').toggle();
	    	$(this).toggleClass('active');
	    })
	    /*公共头部分享点击展开折叠*/
	    $('.top_share').tap(function() {
	    	$('.school_share').toggle();
	    });
        $('#shareWechat').tap(function(){
            console.log('share wechat');
        });
        $('#shareQQ').tap(function(){
            console.log('share qq');
        });
        $('#shareSina').tap(function(){
            console.log('share sina');
        });
</script>