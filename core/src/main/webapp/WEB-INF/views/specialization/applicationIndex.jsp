<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/17
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>申请列表</title>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link rel="stylesheet" type="text/css" href="/style/easyui.css">
    <link rel="stylesheet" type="text/css" href="/style/easyuiIcon.css">

    <style>
        * {
            padding: 0;
            margin: 0;
            /* box-sizing: border-box;*/
        }

        .saveBtn {
            width: 60px;
            height: 30px;
            float: right;
            margin: 10px;
            background-color: #009688;
            font-size: 14px;
            line-height: 30px;
            text-align: center;
            color: #fbf7f7;
            border-radius: 3px;
        }
        .saveBtn:hover{
            background-color: #09b9a9;
        }

        .container {
            width: 1200px;
            margin: 30px auto;
            border: 1px solid #999;
            padding: 20px 0;
            margin-top: 75px;
        }
        .leftSide{
            width: 303px;
            float: left;
            border:1px solid #999999;
            position: fixed;
            top: 50%;
            margin: -223px 0 0 40px;
            height: 451px;
            /*background-color: rgba(0,0,0,0.2);*/
            background-color:#f0f6fd;
        }
        .rightSide{
            width: 755px;
            float: right;
            border: 1px solid #999;
            margin: 0 60px 0 0;
            /* background-color: #fbfdff;*/
        }

        .formList p {
            width: 55%;
            float: right;
            font-family: "Microsoft Yahei";
            color: #29692b;
        }

        .formList li b {
            /* margin-right: 40px;*/
            font-weight: normal;
            display: block;
            float: left;
            width: 40%;
            text-align: right;
            font-family: "Microsoft Yahei";
            color: #333;
        }

        .formList {
            /*width: 65%;*/
            margin: 0 auto;
            border-bottom: 1px dashed #999;
            padding: 40px 0 15px 0px;
        }

        .formList01 {
            padding-top: 30px;
        }

        .formList li {
            width: 77%;
            height: 40px;
            line-height: 40px;
            padding-bottom: 60px;
            position: relative;
        }

        .formList09Cont li {
            height: auto;
            padding-bottom: 20px;
            position: relative;
        }

        /*中英文信息切换样式*/
        .leftSide .infoChange{
            border-bottom: 1px solid #999;
            height: 40px;
        }
        .infoChange a{
            width: 50%;
            height: 40px;
            display:block;
            float: left;
            /* background-color:#ccc;*/
            font-size: 16px;
            line-height: 40px;
            text-align: center;
            color: #0a0a0a;
        }
        .leftSide .infoChange a:hover{

        }
        .leftSide .infoChange a:nth-child(1){
            border-right: 1px solid #999;

        }
        .leftSide .infoProgress{
            height: 50px;
            border-bottom: 1px solid #999;
        }
        .leftSide .infoProgress i{
            display: block;
            float: right;
            margin-right: 15px;
            font-style: normal;
            color: #0a0a0a;
            font-family:"Microsoft Yahei";
        }
        .infoProgress p{
            width: 288px;
            margin: 0 auto;
            height: 12px;
            border: 1px solid #999;
            padding: 0;
            margin-top: 5px;
        }
        .infoProgress p b{
            display: block;
            width:32px ;
            height: 10px;
            background-color: #0aaa82;
        }
        .infoList li{
            height: 40px;
            cursor: pointer;
            line-height: 40px;
            text-align: center;
            border-bottom: 1px solid #999;
            font-family: "Microsoft Yahei";
        }
        .infoList li:hover,.infoChange a:hover{
            background-color: #86f9de;
            color: #fff;
        }
        .leftSide .infoActive{
            background-color: #449c87;
            color: #fff;
        }

    </style>

</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="container clearfix">
    <div class="leftSide">
        <div class="infoChange">
            <a href="javascript:;"  class="infoActive infoCH">中文信息</a>
            <a href="javascript:;" class="infoEN">英文信息</a>
        </div>
        <div class="infoProgress">
            <span>信息完整度：<i class="infoLength">60%</i></span>
            <p><b class="infoRange"></b></p>
        </div>
        <ul class="infoList">
            <li class="infoActive">基本信息</li>
            <%--<li><spring:message code="screen.right.hello"></spring:message></li>--%>
            <li>GPA</li>
            <li>SAT</li>
            <li>ACT</li>
            <li>托福</li>
            <li>雅思</li>
            <li>SAT2</li>
            <li>AP</li>
            <li>活动经历</li>
        </ul>
    </div>

    <div class="rightSide">
        <form action="" id="formid" class="clearfix">
            <%--<a href="/specialization/editApplyInfo"><input class="saveBtn saveBtn01" type="button" value="编辑"> </a>--%>
                <input type="hidden" id="itemId" value="${param.itemId}">
            <a class="saveBtn saveBtn01" href="/specialization/editApplyInfo?itemId=${param.itemId}">编辑</a>
                <c:if test="${param.itemId!=null}">
                    <a class="saveBtn saveBtn01" href="javascript:order();" >提交订单</a>
                </c:if>

            <div>
                <%--必填信息start--%>
                <div class="requiredInfo">
                    <ul class="formList formList01">
                        <li>
                            <b>姓名</b>
                            <p>${applyActivity.name}</p>
                        </li>
                        <li class="sex">
                            <b>性别</b>
                            <c:if test="${applyActivity.sex==1}">
                               <p>男</p>
                            </c:if>
                            <c:if test="${applyActivity.sex==2}">
                                <p>女</p>
                            </c:if>
                            <c:if test="${applyActivity.sex==0}">
                                <p>其他</p>
                            </c:if>
                        </li>
                        <li><b>出生日期</b>
                            <p class="dateboxId01"> ${applyActivity.birthday}</p>
                            <%--<fmt:formatDate value='${applyActivity.birthday}' pattern='yyyy-MM-dd'/>--%>

                        </li>
                        <li><b>就读学校</b>
                            <p>${applyActivity.currentSchool}</p></li>
                        <li><b>入学时间</b>
                            <p class="dateboxId02">${applyActivity.highSchoolStartDate}</p>
                           <%-- <fmt:formatDate value='' pattern='yyyy-MM-dd'/>--%>

                        </li>
                        <li><b>预计毕业时间</b>
                            <p class="dateboxId03">${applyActivity.highSchoolEndDate} </p>
                           <%-- <fmt:formatDate value='' pattern='yyyy-MM-dd'/>--%>

                        </li>
                        <li>
                            <b>高中课程类别</b>
                            <p>
                                <c:if test="${applyActivity.schoolType==1}">
                                    AP
                                </c:if>
                                <c:if test="${applyActivity.schoolType==2}">
                                    A-level
                                </c:if>
                                <c:if test="${applyActivity.schoolType==3}">
                                    IB
                                </c:if>
                                <c:if test="${applyActivity.schoolType==4}">
                                    普通高中
                                </c:if>
                                <c:if test="${applyActivity.schoolType==5}">
                                    其他
                                </c:if>
                            </p>
                        </li>
                        <li><b>手机号</b>
                            <p> ${applyActivity.phone}</p></li>
                        <li><b>邮箱</b>
                            <p> ${applyActivity.email}</p></li>
                        <li><b>Skype ID</b>
                            <p> ${applyActivity.skypeId}</p></li>
                        <li><b>家庭住址</b>
                            <p> ${applyActivity.address}</p></li>
                        <li><b>身份证号码/护照号码</b>
                            <p> ${applyActivity.cardID}</p></li>
                    </ul>
                </div>
                <%--必填信息end--%>
                <%--选填信息start--%>
                <div class="optionalInfo">
                    <ul class="formList formList08">
                        <li><b>GPA</b>
                            <p>${applyActivity.GPA}</p></li>
                    </ul>
                    <%--SAT start--%>
                    <ul class="formList formList02">
                        <li><b>SAT 总分</b>
                            <p>${applyActivity.satTotalScore}</p></li>
                        <li><b>SAT 阅读</b>
                            <p>${applyActivity.CR}</p></li>
                        <li><b>SAT 数学</b>
                            <p>${applyActivity.mathematics}</p></li>
                       <%-- --%>
                    </ul>
                    <%--SAT end--%>
                    <%--ACT start--%>
                    <ul class="formList formList03">
                        <li><b>ACT总分</b>
                            <p>${applyActivity.ACT}</p></li>
                        <li><b>ACT英语</b>
                            <p>${applyActivity.ACT_english}</p></li>
                        <li><b>ACT数学</b>
                            <p>${applyActivity.ACT_Math}</p></li>
                        <li><b>ACT阅读</b>
                            <p>${applyActivity.ACT_Reading}</p></li>
                        <li><b>ACT科学</b>
                            <p>${applyActivity.ACT_Science}</p></li>
                    </ul>
                    <%--ACT end--%>
                    <%--托福 start--%>
                    <ul class="formList formList04">
                        <li><b>托福 总分</b>
                            <p>${applyActivity.TOEFL}</p></li>
                        <li><b>托福 阅读</b>
                            <p>${applyActivity.TOEFL_Reading}</p></li>
                        <li><b>托福 写作</b>
                            <p>${applyActivity.TOEFL_Writing}</p></li>
                        <li><b>托福 听力</b>
                            <p>${applyActivity.TOEFL_Listening}</p></li>
                        <li><b>托福 口语</b>
                            <p>${applyActivity.TOEFL_Speaking}</p></li>
                    </ul>
                    <%--托福 end--%>
                    <%--雅思 start--%>
                    <ul class="formList formList05">
                        <li><b>雅思 总分</b>
                            <p>${applyActivity.IELTS}</p></li>
                        <li><b>雅思 阅读</b>
                            <p>${applyActivity.IELTS_Reading}</p></li>
                        <li><b>雅思 写作</b>
                            <p>${applyActivity.IELTS_Writing}</p></li>
                        <li><b>雅思 听力</b>
                            <p>${applyActivity.IELTS_Listening}</p></li>
                        <li><b>雅思 口语</b>
                            <p>${applyActivity.IELTS_Speaking}</p></li>
                    </ul>
                    <%--雅思 end--%>
                    <%--SAT2 start--%>
                    <div class="formList06Cont">
                        <ul class="formList formList06">
                            <c:forEach items="${scoreListSAT}" var="userScore">
                                <li>
                                    <b>${userScore.examName}</b>
                                    <p>${userScore.score}</p>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <%--SAT2 end--%>
                    <%-- AP start--%>
                    <div class="formList07Cont">
                        <ul class="formList formList07">
                                <c:forEach items="${scoreListAP}" var="userScore">
                                    <li>
                                        <b>${userScore.examName}</b>
                                        <p>${userScore.score}</p>
                                    </li>
                                </c:forEach>
                        </ul>
                    </div>
                    <%-- AP end--%>
                    <%--活动start--%>
                    <div class="formList09Cont">
                        <ul class="formList formList09">
                            <c:forEach items="${applyActivityList}" var="applyActivity">
                                <li class="clearfix">
                                    <b>${applyActivity.activityName}</b>
                                    <p>${applyActivity.activityIntro}</p>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                    <%--活动end--%>
                </div>
                <%--选填信息end--%>
            </div>
        </form>
    </div>

</div>

<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>

<script type="text/javascript">
    function order() {
        location.href="/order/enroll/"+$("#itemId").val();
    }
    $(function () {
        /* 一.中英文切换选中方法*/
        var CHlanguge=[];
        var ENlangug=["name","sex","birthday","school","Time of Enrollment","Expected Completion Date","Senior high school curriculum","cell-phone number","email","Skype ID","Home address","ID card / Passport No.","GPA","SAT total score ","SAT reading","SAT mathematics","ACT total score ","ACT English","ACT mathematics","ACT reading","ACT Science",
            "TOEFL score","TOEFL Reading","TOEFL Writing","TOEFL Listening","TOEFL Speaking","IELTS score","IELTS Reading","IELTS Writing","IELTS Listening","IELTS speaking","SAT2 Spanish","AP English language and composition"]
        $(".formList li b").each(function (index,ele) {
            CHlanguge.push($(this).text());
        });

        var CHstr=["基本信息","GPA","SAT","ACT","托福","雅思","SAT2","AP","活动经历"];
        var ENstr=["Essential information","GPA","SAT","ACT","TOEFL","IELTS","SAT2","AP","Activity experience"];

        function langugueChange(infoEle,str,languge) {
            $(infoEle).on("click",function () {
                $(this).addClass("infoActive").siblings().removeClass("infoActive");
                $(".infoList li").each(function (index,ele) {
                    $(ele).html(""+str[index]+"")
                })
                $(".formList li b").each(function (index,ele) {
                    $(ele).html(""+languge[index]+"")
                })

            });
            $()
        };
        langugueChange(".infoCH",CHstr,CHlanguge);
        langugueChange(".infoEN",ENstr,ENlangug);

        /*右侧中英文切换*/



        /*二、获取右边页面所有formList距离浏览器顶部高度*/
        var arrTop=[];
        $(".formList").each(function (index,ele) {
            arrTop.push($(ele).offset().top-80)
        });
        console.log(arrTop)
        /* 三.选项切换选中方法*/
        $(".infoList li").on("click",function () {
            $(this).addClass("infoActive").siblings().removeClass("infoActive");
            var num=$(this).index();
            if(num>0){
                $(window).scrollTop(arrTop[num])
            }else {
                $(window).scrollTop(0)
            }
        });



        $(window).scroll(function () {
            var scrollTop = $(window).scrollTop();
            //console.log(scrollTop);
            for (var i = 0; i < arrTop.length; i++) {
                if (scrollTop > arrTop[i] && scrollTop < arrTop[i + 1]) {
                    $(".infoList li").eq(i).addClass("infoActive").siblings().removeClass("infoActive");
                }
            }
        });

        /*用户填写信息为空时隐藏元素*/
        $(".formList li p").each(function (index,ele) {
            if($(ele).html()==""||$(ele).html()==null){
                $(this).parents("li").css("display","none");

            }
        });

        var re = /^\s+$/;
        $(".formList").each(function (index,ele) {
            var str=$(ele).text();
            if((re.exec(str))||$(ele).text()==""||$(ele).text()==null){
                $(this).css({
                    "padding":"0",
                    "border":"none"
                });
                $(this).removeClass("formList")
            }
        });
        /*隐藏最后元素下的边*/
        var Formlenght=$(".formList").length-1;
        console.log(Formlenght)
        $(".formList").eq(Formlenght).css("borderBottom","none")

        /*信息填写百分比*/
        var infoNum=$(".formList").length;
        $(".infoLength").html(11*infoNum+"%")
        $(".infoRange").css("width",""+32*infoNum+"px")
        if(11*infoNum>=99){
            $(".infoLength").html(100+"%")
        };

    })


</script>
</html>
