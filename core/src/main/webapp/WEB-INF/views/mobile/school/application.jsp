<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Application Information</title>
<%@ include file="/WEB-INF/views/mobile/common/common_head.jsp"%>
<link rel="stylesheet" type="text/css" href="/style/mobile/application.css"/>
</head>
<body>
<%@ include file="/WEB-INF/views/mobile/common/top_mobile.jsp" %>
<section class="school_main clearfix" id="applicationMain">
  <h3 class="item_tit tac pos_r"><a class="return pos_a" href="javascript:history.go(-1);" target="_blank"><i class="icon_jiantouzuo iconfont"></i></a>application</h3>

</section>
<script type="text/template" id="application-tmpl">
    <@
        var isPreview = true;
        var isChina = false;
    @>
    <dl class="app_box">
    <dt class="omit">Type of school</dt>
    <dd class="omit"><@=createTextHtml(application.schoolType, isPreview, isChina, 'Type of school')@></dd>
  </dl>
  <dl class="app_box">
    <dt class="omit">Application requirements</dt>
    <dd class="omit"><@=createTextHtml(application.requirement, isPreview, isChina, 'Application requirements')@></dd>
  </dl>
  <dl class="app_box">
    <dt class="omit">Deadlines</dt>
    <dd class="omit"><@=createTextHtml(application.specialty, isPreview, isChina, 'Deadlines')@></dd>
  </dl>
  <dl class="app_box">
    <dt class="omit">Visit Campus</dt>
    <dd class="omit"><@=createTextHtml(application.visitUrl, isPreview, isChina, 'Visit Campus')@></dd>
  </dl>
  <dl class="app_box">
    <dt class="omit">Scholarships and tuitions</dt>
    <dd class="omit"><@=createTextHtml(application.tuitionUrl, isPreview, isChina, 'Scholarships and tuitions')@></dd>
  </dl>
  <dl class="app_box">
    <dt class="omit">Admission office email</dt>
    <dd class="omit"><@=createTextHtml(application.admissionEmail, isPreview, isChina, 'Admission office email')@></dd>
  </dl>
  <dl class="app_box">
    <dt class="omit">Admission office website</dt>
    <dd class="omit"><@=createTextHtml(application.applicationUrl, isPreview, isChina, 'Admission office website')@></dd>
  </dl>
  <dl class="app_box">
    <dt class="omit">Application essay topics</dt>
    <dd class="omit"><@=createTextHtml(application.docTitle, isPreview, isChina, 'Application essay topics')@></dd>
  </dl>
  <dl class="app_box">
    <dt class="omit">Graduate development</dt>
    <dd class="omit"><@=createTextHtml(application.ourStudentUrl, isPreview, isChina, 'Graduate development')@></dd>
  </dl>
</script>

<%@ include file="/WEB-INF/views/mobile/common/bottom_mobile.jsp"%>
<script>
    $(function(){
        _.templateSettings = {
            evaluate: /<@([\s\S]+?)@>/g,
            interpolate: /<@=([\s\S]+?)@>/g,
            escape: /<@-([\s\S]+?)@>/g
        };
        var profileData = ${requestScope.profileJson};
        var html = _.template($('#application-tmpl').html())({'application': profileData.application});
        $('#applicationMain').append(html);
    });
    function createTextHtml(text, isPreview, isChina, linkName) {
        if (text && text.length > 0 && (text.match('^http://') || text.match('^https://'))) {
            var textLink = linkName || '点此链接';
            var html = '<a class="application-a" target="_blank" href="javascript:;">' + textLink + '</a>';
            if (isPreview) {
                html = html.replace('javascript:;', text);
            }
            return html;
        } else if (text) {
            return text;
        } else {
            if (isPreview) {
                return 'N/A';
            }
            if (isChina) {
                return "请补充";
            } else {
                return "Please add";
            }
        }
    }
</script>
</body>
</html>