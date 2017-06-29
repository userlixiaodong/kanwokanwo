<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Basic Information</title>
<%@ include file="/WEB-INF/views/mobile/common/common_head.jsp"%>
<link rel="stylesheet" type="text/css" href="/style/mobile/basicInfo.css"/>
</head>
<body>
<%@ include file="/WEB-INF/views/mobile/common/top_mobile.jsp" %>
<section class="school_main clearfix">
  <h3 class="item_tit tac pos_r"><a class="return pos_a" href="javascript:history.go(-1);" target="_blank"><i class="icon_jiantouzuo iconfont"></i></a>basic information</h3>
  <ul class="basic_info">
    <li><a href="javascript:;"><i class="icon_dingwei iconfont"></i>
        <span>
            <c:if test="${not empty requestScope.admissionProfile.biography.location}">
                ${requestScope.admissionProfile.biography.location}
            </c:if>
            <c:if test="${empty requestScope.admissionProfile.biography.location}">
                N/A
            </c:if>
        </span>
    </a></li>
    <li><a href="javascript:;"><i class="icon_wangzhi iconfont"></i>
        <span>
            <c:if test="${not empty requestScope.admissionProfile.biography.webSite}">
                ${requestScope.admissionProfile.biography.webSite}
            </c:if>
            <c:if test="${empty requestScope.admissionProfile.biography.webSite}">
                N/A
            </c:if>
        </span>
    </a></li>
    <li><a href="javascript:;"><i class="icon_dianhua iconfont"></i>
        <span>
           <c:if test="${not empty requestScope.admissionProfile.biography.phone}">
                ${requestScope.admissionProfile.biography.phone}
            </c:if>
            <c:if test="${empty requestScope.admissionProfile.biography.phone}">
                N/A
            </c:if>
        </span>
    </a></li>
    <li><a href="javascript:;"><i class="icon_youxiang iconfont"></i>
        <span>
            <c:if test="${not empty requestScope.admissionProfile.biography.linkEmail}">
                ${requestScope.admissionProfile.biography.linkEmail}
            </c:if>
            <c:if test="${empty requestScope.admissionProfile.biography.linkEmail}">
                N/A
            </c:if>
        </span>
    </a></li>
    <li><a href="javascript:;"><i class="icon_dingwei iconfont"></i><span>
        <c:if test="${not empty requestScope.admissionProfile.biography.biographyOther}">
                ${requestScope.admissionProfile.biography.biographyOther}
            </c:if>
            <c:if test="${empty requestScope.admissionProfile.biography.biographyOther}">
                N/A
            </c:if>
    </span></a></li>
    <li class="basic_info_share"><a href="javascript:;">@
        <i class="icon_twitter iconfont basicSNS" data-type="twitter" data-name="${requestScope.admissionProfile.myLinks.linkTwitter}"></i>
        <i class="icon_xiangji iconfont basicSNS" data-type="insta" data-name="${requestScope.admissionProfile.myLinks.linkInstagram}"></i>
        <i class="icon_facebook iconfont basicSNS" data-type="facebook" data-name="${requestScope.admissionProfile.myLinks.linkFacebook}"></i>
    </a></li>
  </ul>
</section>

<%@ include file="/WEB-INF/views/mobile/common/bottom_mobile.jsp"%>
<script>
  $(function(){
      $('.basicSNS').tap(function(){
          var item = $(this);
          var type = item.attr('data-type');
          var name = item.attr('data-name');
          var url = '';
          if (type == 'twitter') {
              url = 'https://twitter.com/';
          } else if (type == 'insta') {
              url = 'https://www.instagram.com/';
          } else if (type == 'facebook') {
              url = 'https://www.facebook.com/';
          }
          location.href = url + name;
      });
  });
</script>
</body>
</html>