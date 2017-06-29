<%--
  Created by IntelliJ IDEA.
  User: 1009
  Date: 2017/3/15
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>我的院校</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <meta http-equiv="Expires" CONTENT="0"/>
    <meta http-equiv="Cache-Control" CONTENT="no-cache"/>
    <meta http-equiv="Pragma" CONTENT="no-cache"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9, IE=8">
    <link rel="stylesheet" type="text/css" href="/style/public.css?201604278722121100000"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/style/searchpartnersSchool.css?20130509">
    <style>

        .pages{
            color: #000000;
            cursor: default;
            font-size: 10px;
            font-family: Tahoma, Verdana;
            padding: 3px 0px 3px 0px;
            text-align: center;
            margin-top: 15px;
        }
        .pagination-sm > li > a, .pagination-sm > li > span{
            font-size: 18px !important;
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="container">

    <iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe>
    <div class="resultsHeader">
        <span class="schoolNum">共找到${page.totalCount}所大学</span>

    </div>

    <div class="searchResults">
        <ul class="searchWrapper">
            <c:forEach items="${page.data}" var="u">

                <li class="searchWrapper_li">
                    <ul class="searchItem">
                        <li class="searchItem_li">
                            <a href="/${u.publicUri}" target="_blank">
                            <c:if test="${not empty u.biography.avatar}">
                                <c:set var="string1" value="${u.biography.avatar}"/>
                                <c:set var="string2" value="${fn:replace(string1,'focusedu.oss-cn-hangzhou.aliyuncs.com','img-cdn.kanwokanwo.com')}"/>
                                <img src="${string2}@1e_1c_0o_0l_200h_200w_80q.src">
                            </c:if>
                            <c:if test="${empty u.biography.avatar}">
                                <img src="/images/s1.png">
                            </c:if>
                            </a>
                        </li>
                        <li class="searchItem_li">
                            <h4>${u.biography.cname}</h4>
                            <h5>${u.biography.name}</h5>
                            <ul class="score">
                                <li class="searchText">托福成绩：${u.application.toeflscore}</li>
                                <li class="searchText">SAT成绩：${u.application.middlesatscore}</li>
                                <li class="searchText">雅思成绩：${u.application.ieltsScore}</li>
                            </ul>
                            <p class="searchText">每年学费：${u.application.tuition}</p>
                        </li>
                        <li class="searchItem_li clearfix">
                            <c:if test="${u.biography.lodge==0}">
                                <p>寄宿高中</p>
                            </c:if>
                            <c:if test="${u.biography.lodge==1}">
                                <p>走读高中</p>
                            </c:if>
                            <c:if test="${u.biography.lodge==2}">
                                 <p>综合公立大学</p>
                             </c:if>
                            <c:if test="${u.biography.lodge==3}">
                                <p>综合私立大学</p>
                            </c:if>
                            <c:if test="${u.biography.lodge==4}">
                                <p>文理大学</p>
                            </c:if>
                            <c:if test="${u.biography.lodge==5}">
                                <p>社区学校</p>
                            </c:if>
                            <c:if test="${not empty u.application.ranking}">
                                <p> ${u.application.ranking}名</p>
                            </c:if>
                            <a href="/${u.publicUri}"><span>查看详情</span></a>
                        </li>
                    </ul>
                </li>
            </c:forEach>
        </ul>

    </div>

</div>
</div>
<div class="row">
    <div class="clearfix search-page text-center">
        <div class="col-md-12">
            <nav>
                <div class="pages" id="divPage"></div>
                <script type="text/javascript" src="/js/splitpage.js"></script>
                <script type="text/javascript">
                    var pg = new showPages('pg');
                    $(document).ready(function() {
                        pg.argName = 'currentPage';
                        pg.pageCount = ${page.totalPage};//定义总页数(必要)
                        pg.printHtml('divPage');
                    });
                </script>
            </nav>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<%--<script src="/js/jquery-1.9.1.min.js"></script>--%>
<script src="/js/checkBoxStyle.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/video.js"></script>
<script src="/js/myVideo.js"></script>
<script src="/js/video-popup.js?20160512"></script>
<script type="text/javascript">
    // 点击加载更多选项
    $(function(){

        //学校等级回显
        var strLodge = "${strLodge}";
        if (strLodge==null){
            return;
        }else {
            var split=strLodge.split(",");
            for(var i=0;i<split.length;i++){
                $(".strLodge").each(function () {
                    if($(this).val()==split[i]){
                        $(this).prop("checked","checked");
                    }
                })
            }
        }
        //学生人数回显
        var newbornNum="${biography.newbornNum}";
        if (newbornNum ==null){
            return;
        }else {
             $(".newbornNum").each(function () {
                 if($(this).val()==newbornNum){
                     $(this).prop("checked","checked");
                 }
             })
        }
        //地域类型回显
        var settings="${biography.settings}";
        if(settings==null){
            return;
        }else{
            $(".settings").each(function () {
                if($(this).val()==settings){
                    $(this).prop("checked","checked");
                }
            })
        }
       //托福分数回显
        var tScore="${tScore}";
        if(tScore==null){
            return;
        }else{
            $(".tScore").each(function () {
                if($(this).val()==tScore){
                    $(this).prop("checked","checked");
                }
            })
        }
        //雅思分数回显
        var yScore="${yScore}";
        if(yScore==null){
            return;
        }else{
            $(".yScore").each(function () {
                if($(this).val()==yScore){
                    $(this).prop("checked","checked");
                }
            })
        }
        //biography.province回显
        var province="${biography.province}";
        if(province==null){
            return;
        }else{
            var split=province.split(",");
            for(var i=0;i<split.length;i++){
                $(".province").each(function () {
                    if($(this).val()==split[i]){
                        $(this).prop("checked","checked");
                    }
                })
            }
        }
        //男校，女校男女混校

        $("#tuofu").hide();
        $("#yasi").hide();
        $("#sat").hide();
        $("#moreOpt").click(function(){
            if($(this).html()=="更多选项"){
                $("#tuofu").show();
                $("#yasi").show();
                $("#sat").show();
                $(this).text("点击收起");
                $(this).css("background","url('/images/up.png') no-repeat 100px 15px");
            }else{
                $("#tuofu").hide();
                $("#yasi").hide();
                $("#sat").hide();
                $(this).text("更多选项");
                $(this).css("background","url('/images/down.png') no-repeat 100px 15px");
            }
        });

        $("#schoolLevel1").checkBoxStyle({
            DomIdentifyingArr : ["#tuofu","#yasi","#sat"],
            curryAttr : {"disabled":false}
        });
        $("#schoolLevel2").checkBoxStyle({
            DomIdentifyingArr : ["#tuofu","#yasi","#sat"],
            curryStyle : {"cursor":"default","background":"rgb(243,246,249)","color":"#666"},
            curryAttr : {"disabled":"disabled"}
        });
        $("#schoolLevel3").checkBoxStyle({
            DomIdentifyingArr : ["#tuofu","#yasi","#sat"],
            curryStyle : {"cursor":"default","background":"rgb(243,246,249)","color":"#666"},
            curryAttr : {"disabled":"disabled"}
        });


       //学校类型筛选
        for(var i = 1;i<=$(".schoolLevel").length;i++){
            $("#schoolLevel"+i).on("click",function (){
                $(this).show();
            });
        }


        $(document).on("click",function () {
            var e = event || window.event;      //兼容IE和非IE的event
            var aim = e.srcElement || e.target;     //兼容IE和非IE的事件源
            for(var i = 1;i<=$(".schoolLevel").length;i++){
                aim != $("#schoolLevel"+i)[0] && !$("#secondary"+i)[0].contains(aim) ? $("#secondary"+i).hide(): $("#secondary"+i).show();
                console.log($("#schoolLevel"+i)[0].contains(aim));
            }

            for(var i = 1;i<=$(".schoolLevel").length;i++){
                $("#schoolLevel"+i).attr({"index":i});
                $("#schoolLevel"+i).on("click",function (){
                    $(this).show();
                    for (var j = 1;j<=$(".schoolLevel").length;j++){
                        if (j!=$(this).attr("index")){
                            $("#secondary"+j).find("input").attr({"checked":false});
                        }
                    }
                });
            }

        });


        //表单提交事件
        $("#strLodge").click(function () {
            var text=$('#searchcontent').val();
            if(text==null || text==''){
                return false
            }else {
                $('#formid').submit();

            }
        })

        $("#btn2").click(function () {
            $("#form").submit();
            $("#form").attr("target","rfFrame");
        })

        //清空条件
        $("#clear").click(function () {
            $('input[type="checkbox"]:checked').each(function () {
                $(this).prop("checked","");
            });
            $('input[type="radio"]:checked').each(function () {
                $(this).prop("checked","");
            })
        })


    });

</script>
</body>
</html>
