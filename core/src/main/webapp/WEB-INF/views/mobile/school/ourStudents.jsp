<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Our Students</title>
<%@ include file="/WEB-INF/views/mobile/common/common_head.jsp"%>
<link rel="stylesheet" type="text/css" href="/style/mobile/ourStudents.css"/>
</head>
<body>
<%@ include file="/WEB-INF/views/mobile/common/top_mobile.jsp" %>
<section class="school_main clearfix">
  <h3 class="item_tit tac pos_r"><a class="return pos_a" href="javascript:history.go(-1);" target="_blank"><i class="icon_jiantouzuo iconfont"></i></a>our students</h3>
  <ul class="our_students" id="ourStudents">
      <c:forEach items="${requestScope.page.data}" var="student">
          <li>
              <a href="/${userPublicUri}">
                  <c:if test="${empty student.userAvatar}">
                      <img src="/images/defaultavatar.jpg">
                  </c:if>
                  <c:if test="${not empty student.userAvatar}">
                      <img src="${student.userAvatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')}@1e_1c_0o_0l_60h_60w_99q.src">
                  </c:if>
                  <p>${student.userName}</p>
              </a>
           </li>
      </c:forEach>
      <li class="pos_r"><a class="our_students_more" href="javascript:;" id="moreBtn">+More</a></li>
  </ul>

</section>


<%@ include file="/WEB-INF/views/mobile/common/bottom_mobile.jsp"%>
<script>
    $(function(){
        var currentPage = 1;
        var totalPage = ${requestScope.page.totalPage};
        var url = '/admission/profile/ourstudents/${requestScope.admissionProfile.biography.name}/{pageIndex}.json';
        var isMore = true;

        $('#moreBtn').tap(function(){
            loadOurStudents();
        });

        var tmpl = '<li>' +
              '<a href="/{userPublicUri}">' +
              '<img src="{imgurl}">' +
              '<p>{studentName}</p>' +
              '</a>' +
           '</li>';
        function loadOurStudents() {
           if (!isMore) {
               alert('No more the.');
               return;
           }
           ++currentPage;
           if (currentPage > totalPage) {
             --currentPage;
             alert('No more the.');
             isMore = false;
             return;
           }

           $.ajax({
             url: url.replace('{pageIndex}', currentPage),
             success: function(data){
               data = JSON.parse(data);
               if (data.status == 1) {
                   var page = data.data;
                   totalPage = page.totalPage;
                   var ourStudents = page.data;
                   if (ourStudents && ourStudents.length > 0) {
                       var html = '';
                       for (var i = 0; i < ourStudents.length; i++) {
                           var student = ourStudents[i];
                           var userName = student.userName;
                           var userAvatar = student.userAvatar;
                           var userPublicUri = student.userPublicUri;
                           if (userAvatar && userAvatar.length > 0) {
                               userAvatar = userAvatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com') + '@1e_1c_0o_0l_60h_60w_99q.src';
                           } else {
                               userAvatar = '/images/defaultavatar.jpg';
                           }
                           html = html + tmpl.replace('{userPublicUri}', userPublicUri).replace('{imgurl}', userAvatar).replace('{userName}', userName);
                           $('#ourStudents').append(html);
                       }
                   }
                   //bindRebox();
               } else {
                 alert(data.message);
               }
             }
          });
        }
    });
</script>
</body>
</html>