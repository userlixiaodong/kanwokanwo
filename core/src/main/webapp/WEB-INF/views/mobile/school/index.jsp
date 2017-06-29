<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Timeline</title>
<%@ include file="/WEB-INF/views/mobile/common/common_head.jsp"%>
<link rel="stylesheet" type="text/css" href="/style/mobile/index.css"/>
</head>
<body>
<%@ include file="/WEB-INF/views/mobile/common/top_mobile.jsp" %>
<section class="school_main clearfix" id="informationList">
  <h3 class="item_tit tac pos_r">information wall</h3>
</section>
<%@ include file="/WEB-INF/views/mobile/common/bottom_mobile.jsp"%>
<script type="text/template" id="informationItem-tmpl">
  <@ for (var i = 0; i < list.length; i++) {
      var information = list[i];
  @>
  <dl class="student_box clearfix">

    <dt><@=information.text@></dt>
    <dd>
      <time><@=information.createTime@></time>
    </dd>
    <@ if (information.materials && information.materials.length > 0) {
          var width = 0;
          var isClear = false;
          var imgSubStr = '1e_1c_0o_0l_296h_296w_90q.src';
          if (information.materials.length == 4 || information.materials.length == 2) {
              width = 30;
              isClear = true;
          } else if (information.materials.length == 1) {
              imgSubStr = '1e_1c_0o_0l_500h_500w_91q.src';
              width = 90;
          } else {
              width = 30;
          }
    @>
    <dd class="informationReboxImg">
      <@ for (var j = 0; j < information.materials.length; j++) {
           var material = information.materials[j];
           var imgSubStr = '1e_1c_0o_0l_296h_296w_90q.src';
      @>
        <@ if (j == 2 && isClear) {@><div class="clearfix"></div><@}@>
        <@ if (material.type == 'IMG') {@>
        <%--<a style="width: <@=width@>%;" href="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@0o_0l_800w_85q.src">--%>
            <img style="width:<@=width@>%;" src="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@<@=imgSubStr@>" />
        <%--</a>--%>
        <@ } else if(material.type == 'VIDEO') {@>
        <%--<a style="width: <@=width@>%;" href="javascript:;">--%>
            <video style="width:<@=width@>%;" preload="none" controls="controls" poster="<@=material.videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'img-cdn.kanwokanwo.com')@>@<@=imgSubStr@>" src="<@=material.materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com', 'kw-cdn.kanwokanwo.com')@>">
            </video>
        <%--</a>--%>
        <@ } @>
      <@ } @>
    </dd>
    <@ } @>
    <dd class="fr"><a class="zan" href="javascript:;" data-id="<@=information.informationId@>" data-favor="<@=information.isFavor@>">
      <i class="icon_dianzan_shi iconfont"<@ if (information.isFavor == 'false') {@> style="color:#cecdcd;"<@}@>></i>&nbsp;&nbsp;<span><@=information.favorCount@></span></a></dd>
  </dl>
  <@ } @>
</script>
<script>
  $(function(){
    _.templateSettings = {
      evaluate: /<@([\s\S]+?)@>/g,
      interpolate: /<@=([\s\S]+?)@>/g,
      escape: /<@-([\s\S]+?)@>/g
    };

    var currentPage = 0;
    var totalPage = 1;
    var url = '/user/information/list/{userId}/{pageIndex}.json';
    var isMore = true;
      $('#informationList').on('tap', '.zan', function(){
          if (!window.loginUserId) {
              alert('Please login');
              return;
          }
            var loginUserId = window.loginUserId;
        var schoolId = window.schoolId;
        var item = $(this);
        var isFavor = item.attr('data-favor');
        var favorCount = parseInt(item.find('span').html());
        var informationId = item.attr('data-id');
        if (!loginUserId) {
            alert('Please login');
            return;
        }
        if (loginUserId == schoolId) {
            return;
        }
        var url = '';
        if (isFavor == 'true') {
            url = '/user/information/unfavor';
        } else {
            url = '/user/information/favor';
        }
        $.ajax({
            type: 'POST',
            url: url,
            data: {'informationId': informationId},
            success: function(data) {
                data = JSON.parse(data);
                if (data.status == 1) {
                    if (isFavor == 'true') {
                        item.find('i').css('color', '#cecdcd');
                        item.attr('data-favor', 'false');
                        --favorCount;
                    } else {
                        item.find('i').css('color', '#1bb38c');
                        item.attr('data-favor', 'true');
                        ++favorCount;
                    }
                    item.find('span').html(favorCount);
                } else {
                    alert(data.message);
                }
            }
        });
      });
    loadInformation();
    function loadInformation() {
      if (!isMore) {
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
        url: url.replace('{userId}', '${requestScope.admissionProfile.userId}').replace('{pageIndex}', currentPage),
        success: function(data){
          data = JSON.parse(data);
          if (data.status == 1) {
            var page = data.data;
            totalPage = page.totalPage;
            var informationList = page.data;
            var html = _.template($('#informationItem-tmpl').html())({'list': informationList});
            $('#informationList').append(html);
            //bindRebox();
          } else {
            alert(data.message);
          }
        }
      });
    }
    function bindRebox() {
      $('.informationReboxImg').rebox({
          selector: 'a',
          templates: {           // define templates to create the elements you need function($item, settings)
              image: function ($item, settings, callback) {
                  var videoClass = '';
                  var materialSrc = $item.attr('materialSrc');
                  return $('<img materialSrc="' + materialSrc + '" src="' + $item.attr('href') + '" class="' + settings.theme + '-content img-change" />').load(callback);
              }
          }
      });
    }

      window.onscroll = function() {
          var sHeight = document.documentElement.scrollTop || document.body.scrollTop;//滚动高度
          var wHeight = document.documentElement.clientHeight;//window
          var dHeight = document.documentElement.offsetHeight;//整个文档高度
          if (dHeight - (sHeight + wHeight) <= 0) {
              loadInformation();
          }
      };
  });
</script>
</body>
</html>