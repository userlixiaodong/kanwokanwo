<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/17
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

        .points {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            font-weight: normal;
            color: #bd0e0e;
        }

        .container {
            width: 1200px;
            margin: 30px auto;
            border: 1px solid #999;
            padding: 20px 60px;
            margin-top: 110px;
            background-color: #fff9f9;
        }

        .saveBtn {
            width: 80px;
            height: 30px;
        }

        .saveBtn01 {
            float: right;
        }

        .saveBtn02 {
            display: block;
            margin: 115px auto 17px;
        }

        .saveBtn:hover {
            color: #fff;
            background-color: #a09c9c;
        }

        .formList p {
            width: 70%;
            float: right;
        }

        .formList li b {
            /* margin-right: 40px;*/
            font-weight: normal;
            display: block;
            float: left;
            width: 25%;
            text-align: right;
            font-family: "Microsoft Yahei";
            color: #333;
        }

        .formList {
            /*width: 65%;*/
            margin: 0 auto;
            border-bottom: 1px dashed #999;
            padding: 40px 40px 15px 40px;
        }

        .formList input {
            width: 84%;
        }

        .formList input, .formList select {
            text-indent: 20px;
            font-family: "Microsoft Yahei";

        }

        .formList01 {
            padding-top: 60px;
        }

        .formList li {
            width: 77%;
            height: 40px;
            line-height: 40px;
            padding-bottom: 60px;
            margin-left: 74px;
            position: relative;
        }

        .formList h5 {
            text-align: center;
            font-size: 25px;
            font-family: "Microsoft Yahei";
            font-weight: normal;
            padding-bottom: 15px;
        }

        .formList01 .sex input {
            margin-right: 50px;
            display: block;
            float: left;
            height: 43px;
            width: auto;
        }

        .formList01 .sex label {
            margin-right: 12px;
            display: block;
            float: left;
        }

        .formList select {
            height: 40px;
            width: 45%;
        }

        .formList06, .formList07, .formList09 {
            border-bottom: none;
        }

        .formList06 select, .formList07 select {
            width: 80%;
            text-indent: 2px;
        }

        .formList06Cont .btn, .formList07Cont .btn, .formList09Cont .btn {
            width: 20%;
            margin: 0 auto 20px auto;
            padding-left: 84px;
            font-size: 17px;
        }

        .formList06Cont, .formList07Cont {
            border-bottom: 1px dashed #999;
            position: relative;
        }

        .formList06Cont li .removeBtn, .formList07Cont li .removeBtn {
            position: absolute;
            right: 0;
            font-size: 17px;
        }

        .formList09Cont li {
            height: auto;
            padding-bottom: 20px;
            position: relative;
        }

        .formList09Cont li .removeBtn {
            position: absolute;
            right: 0;
            top: 52px;
            font-size: 17px;
        }

        .formList09Cont input {
            width: 80%;
            text-indent: 3px;

        }

        .formList09Cont textarea {
            line-height: 30px;
            padding: 10px;
            width: 84%;
        }

        .errorInfo {
            position: absolute;
            right: -88px;
            font-size: 14px;
            color: #dc0c0c;
            display: block;
            width: 164px;
            font-family: "Microsoft Yahei";
            display: none;
        }
        .panel{
            margin-top: -110px;
        }

    </style>

</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="container">
    <h6 class="points">*您的信息将全部用于申请活动的评估，课程或者活动项目的匹配等活动相关事宜，不会用作其他任何用途，也不会将此信息透露给任何其他组织。</h6>
    <form action="/specialization/updateApplyInfo" id="formid" class="clearfix" method="post">
        <input type="hidden" id="itemId" name="itemId" value="${param.itemId}">
        <input class="saveBtn saveBtn01" type="button" value="保存">
        <div>
            <%--必填信息start--%>
            <div class="requiredInfo">
                <ul class="formList formList01">
                    <h5>必填信息(中文)</h5>
                    <li>
                        <b>姓名</b>
                        <p><input type="text" class="name" name="name" value="${applyActivity.name}"></p>
                        <span class="errorInfo">请输入姓名</span>
                    </li>
                    <li class="sex">
                        <b>性别</b>
                        <p>
                            <label for="boy">男</label><input type="radio" id="boy" value="1"  <c:if test="${applyActivity.sex==1}">checked="checked"</c:if> name="sex">
                            <label for="girl">女</label><input type="radio" id="girl" value="2" <c:if test="${applyActivity.sex==2}">checked="checked"</c:if> name="sex">
                            <label for="other">其他</label><input type="radio" id="other" value="0" <c:if test="${applyActivity.sex==2}">checked="checked"</c:if> name="sex">
                            <span class="errorInfo">请选择性别</span>
                        </p>
                    </li>
                    <li><b>出生日期</b>
                        <p class="dateboxId01">
                            <input class="dateboxId easyui-datebox" name="birthday" value='${strBirthday}'>
                            <%--<fmt:formatDate value='${applyActivity.birthday}' pattern='yyyy-MM-dd'/>--%>
                        </p><span class="errorInfo">请填写出生日期</span>
                    </li>
                    <li><b>就读学校</b>
                        <p><input id="schoolID" type="text" name="currentSchool" value="${applyActivity.currentSchool}">
                        </p><span class="errorInfo">请填写就读学校</span></li>
                    <li><b>入学时间</b>
                        <p class="dateboxId02"><input class="dateboxId easyui-datebox" name="highSchoolStartDate" value='${strHighSchoolStartDate}' >
                            <%--value="<fmt:formatDate value='${applyActivity.highSchoolStartDate}' pattern='yyyy-MM-dd'/>"--%>
                        </p></p><span class="errorInfo">请填写入学时间</span>
                    </li>
                    <li><b>预计毕业时间</b>
                        <p class="dateboxId03"><input class="dateboxId easyui-datebox" name="highSchoolEndDate" value='${strHighSchoolEndDate}'>
                            <%--value="<fmt:formatDate value='${applyActivity.highSchoolEndDate}' pattern='yyyy-MM-dd'/>"--%>
                        </p><span class="errorInfo">请填写毕业时间</span>
                    </li>
                    <li>
                        <b>高中课程类别</b>
                        <p>
                            <select name="schoolType">
                                <option value="1" <c:if test="${applyActivity.schoolType==1}"> selected="selected"</c:if>>AP</option>
                                <option value="2" <c:if test="${applyActivity.schoolType==2}"> selected="selected"</c:if>>A-Level</option>
                                <option value="3" <c:if test="${applyActivity.schoolType==3}"> selected="selected"</c:if>>IB</option>
                                <option value="4" <c:if test="${applyActivity.schoolType==4}"> selected="selected"</c:if>>普高</option>
                                <option value="5" <c:if test="${applyActivity.schoolType==5}"> selected="selected"</c:if>>其他</option>
                            </select>
                        </p>
                        <span class="errorInfo">请选择课程类别</span>
                    </li>
                    <li><b>手机号</b>
                        <p><input type="text" name="phone" id="phone" value="${applyActivity.phone}">
                        </p><span class="errorInfo">请填写手机号码</span></li>
                    <li><b>邮箱</b>
                        <p><input type="text" name="email" id="mail01" value="${applyActivity.email}"></p><span class="errorInfo">请填写邮箱</span></li>
                    <li><b>Skype ID</b>
                        <p><input id="SkypeID" type="text" name="skypeId" value="${applyActivity.skypeId}"></p><span class="errorInfo">请填写Skype ID</span></li>
                    <li><b>家庭住址</b>
                        <p><input id="familyAddress" type="text" name="address" value="${applyActivity.address}"></p><span class="errorInfo">请填写家庭住址</span></li>
                    <li><b>身份证号码/护照号码</b>
                        <p><input type="text" placeholder="请输入您的身份证或护照号码" name="cardID" id="idCard" value="${applyActivity.cardID}"></p><span
                                class="errorInfo">请填写身份证/护照号码</span></li>
                    <h5>必填信息(英文)</h5>
                    <li><b>First Name</b>
                        <p><input type="text" name="firstName" id="englishFirstName" name="firstName" value="${applyActivity.firstName}"></p><span
                                class="errorInfo">请填写First Name</span></li>
                    <li><b>Last Name</b>
                        <p><input type="text" name="lastName" id="englishLastName" value="${applyActivity.lastName}" ></p><span class="errorInfo" >Last Name</span>
                    </li>
                    <li><b>High school</b>
                        <p><input type="text" name="englishHighSchool" id="englishHighSchool" value="${applyActivity.englishHighSchool}"></p><span
                                class="errorInfo">请填写High school</span></li>
                    <li><b>Mailing Address</b>
                        <p><input type="text" name="mailingAddress" id="mailingAddress" value="${applyActivity.mailingAddress}"></p><span
                                class="errorInfo">请填写Mailing Address</span></li>
                </ul>
            </div>
            <%--必填信息end--%>
            <%--选填信息start--%>
            <div class="optionalInfo">
                <div class="formList08Cont">
                    <ul class="formList formList08">
                        <h5>选填信息</h5>
                        <li><b>GPA</b>
                            <p><input type="text" placeholder="可以输入估计GPA" name="GPA" value="${applyActivity.GPA}"></p></li>
                    </ul>
                </div>
                <%--SAT start--%>
                <ul class="formList formList02">
                    <li><b>SAT 总分</b>
                        <p><input type="text" name="satTotalScore" value="${applyActivity.satTotalScore}" ></p></li>
                    <li><b>SAT 阅读</b>
                        <p><input type="text" name="CR" value="${applyActivity.CR}"> </p></li>
                    <li><b>SAT 数学</b>
                        <p><input type="text" name="Mathematics" value="${applyActivity.mathematics}"></p></li>
                </ul>
                <%--SAT end--%>
                <%--ACT start--%>
                <ul class="formList formList03">
                    <li><b>ACT总分</b>
                        <p><input type="text" name="ACT" value="${applyActivity.ACT}"></p></li>
                    <li><b>ACT英语</b>
                        <p><input type="text" name="ACT_english" value="${applyActivity.ACT_english}"></p></li>
                    <li><b>ACT数学</b>
                        <p><input type="text" name="ACT_Math" value="${applyActivity.ACT_Math}"></p></li>
                    <li><b>ACT阅读</b>
                        <p><input type="text" name="ACT_Reading" value="${applyActivity.ACT_Reading}"></p></li>
                    <li><b>ACT科学</b>
                        <p><input type="text" name="ACT_Science" value="${applyActivity.ACT_Science}"></p></li>

                </ul>
                <%--ACT end--%>
                <%--托福 start--%>
                <ul class="formList formList04">
                    <li><b>托福 总分</b>
                        <p><input type="text" name="TOEFL" value="${applyActivity.TOEFL}"></p></li>
                    <li><b>托福 阅读</b>
                        <p><input type="text" name="TOEFL_Reading" value="${applyActivity.TOEFL_Reading}"></p></li>
                    <li><b>托福 写作</b>
                        <p><input type="text" name="TOEFL_Writing" value="${applyActivity.TOEFL_Writing}"></p></li>
                    <li><b>托福 听力</b>
                        <p><input type="text" name="TOEFL_Listening" value="${applyActivity.TOEFL_Listening}"></p></li>
                    <li><b>托福 口语</b>
                        <p><input type="text" name="TOEFL_Speaking" value="${applyActivity.TOEFL_Speaking}"></p></li>
                </ul>
                <%--托福 end--%>
                <%--雅思 start--%>
                <ul class="formList formList05">
                    <li><b>雅思 总分</b>
                        <p><input type="text" name="IELTS" value="${applyActivity.IELTS}"></p></li>
                    <li><b>雅思 阅读</b>
                        <p><input type="text" name="IELTS_Reading" value="${applyActivity.IELTS_Reading}"></p></li>
                    <li><b>雅思 写作</b>
                        <p><input type="text" name="IELTS_Writing" value="${applyActivity.IELTS_Writing}"></p></li>
                    <li><b>雅思 听力</b>
                        <p><input type="text" name="IELTS_Listening" value="${applyActivity.IELTS_Listening}"></p></li>
                    <li><b>雅思 口语</b>
                        <p><input type="text" name="IELTS_Speaking" value="${applyActivity.IELTS_Speaking}"></p></li>
                </ul>
                <%--雅思 end--%>
                <%--SAT2 start--%>
                <div class="formList06Cont">
                    <ul class="formList formList06">
                        <c:forEach items="${scoreListSAT}" var="userScore">
                        <li>
                            <b>
                                    <select name="course" class="SAT2Info01">
                                        <c:forEach items="${listSAT}" var="sat">
                                            <c:if test="${userScore.examID ==sat.id}">
                                                <option value="${sat.id}"  selected="selected">${sat.courseName}</option>
                                            </c:if>
                                            <c:if test="${userScore.examID !=sat.id}">
                                                <option value="${sat.id}" >${sat.courseName}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                            </b>
                            <p><input type="text" class="SAT2Choose01" name="score" value="${userScore.score}"></p>
                            <a href="javascript:;" class="removeBtn" val="${userScore.id}">删除</a>
                        </li>
                        </c:forEach>

                        <c:if test="${empty scoreListSAT}">
                            <li>
                                <b>
                                    <select name="course" class="SAT2Info01">
                                        <option value="">--SAT2请选择--</option>
                                        <c:forEach var="type" items="${listSAT}">
                                            <option value="${type.id}">${type.courseName}</option>
                                        </c:forEach>
                                    </select>
                                </b>
                                <p><input type="text" class="SAT2Choose01" name="score"></p>
                                <a href="javascript:;" class="removeBtn">删除</a>
                            </li>
                        </c:if>
                    </ul>
                    <div class="btn">
                        <a href="javascript:;" class="addBtn06">+添加</a>
                    </div>
                </div>
                <%--SAT2 end--%>
                <%-- AP start--%>
                <div class="formList07Cont">
                    <ul class="formList formList07">
                        <c:forEach var="score" items="${scoreListAP}">
                        <li>
                            <b>
                                <select name="course" class="APInfo01">
                                        <c:forEach items="${listAP}" var="ap">
                                            <c:if test="${score.examID ==ap.id}">
                                                <option value="${ap.id}"     selected="selected">${ap.courseName}</option>
                                            </c:if>
                                            <c:if test="${score.examID !=ap.id}">
                                                <option value="${ap.id}" >${ap.courseName}</option>
                                            </c:if>
                                        </c:forEach>
                                </select>
                            </b>
                            <%--<c:if test="${applyActivity.examID ==type.id }">selected</c:if>--%>
                            <p><input type="text" class="APChoose01" name="score" value="${score.score}"></p>
                            <a href="javascript:;" class="removeBtn" val="${score.id}">删除</a>
                        </li>
                        </c:forEach>
                        <c:if test="${ empty scoreListAP}">
                            <li>
                                <b>
                                    <select name="course" class="APInfo01">
                                        <option value="">--AP请选择--</option>
                                        <c:forEach var="type" items="${listAP}">
                                            <option value="${type.id}">${type.courseName}</option>
                                        </c:forEach>

                                    </select>
                                </b>
                                <p><input type="text" class="APChoose01" name="score"></p>
                                <a href="javascript:;" class="removeBtn">删除</a>
                            </li>
                        </c:if>

                    </ul>
                    <div class="btn">
                        <a href="javascript:;" class="addBTn07">+添加</a>
                    </div>
                </div>
                <%-- AP end--%>

                <%--活动start--%>
                <div class="formList09Cont">

                    <ul class="formList formList09">
                        <c:forEach items="${applyActivityList}" var="applyActivity">
                            <li class="clearfix">
                                <b><input type="text" placeholder="请输入活动名称" name="activityName" value="${applyActivity.activityName}"></b>
                                <p><textarea rows="4" cols="20" placeholder="请输入活动详情" name="activityIntro" value="${applyActivity.activityIntro}">${applyActivity.activityIntro}</textarea></p>
                                <a href="javascript:;" class="removeBtn"  val="${applyActivity.id}">删除</a>
                            </li>
                        </c:forEach>
                       <%-- <c:forEach items="${empty applyActivityList}" var="applyActivity">--%>
                        <c:if test="${empty applyActivityList}">
                            <li class="clearfix">
                                <b><input type="text" placeholder="请输入活动名称" name="activityName" value=""></b>
                                <p><textarea rows="4" cols="20" placeholder="请输入活动详情" name="activityIntro" value=""></textarea></p>
                                <a href="javascript:;" class="removeBtn"  val="">删除</a>
                            </li>
                        </c:if>
                            <%-- </c:forEach>--%>
                    </ul>

                    <div class="btn">
                        <a href="javascript:;" class="addBtn09">+添加</a>
                    </div>
                </div>

                <%--活动end--%>
            </div>
            <%--选填信息end--%>
        </div>
        <input class="saveBtn saveBtn02" type="button" value="保存">

    </form>
</div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>

<script src="/js/jquery-1.7.2-min.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">

    $(function () {

        //异步加载SAT


        //1.日期格式化
        $('.dateboxId').datebox({
            editable: false,
            formatter: function (date) {
                var getMonth = date.getMonth() > 8 ? date.getMonth() + 1 : "0" + (date.getMonth() + 1);
                var getDate = date.getDate() > 9 ? date.getDate() : "0" + (date.getDate());
                return date.getFullYear() + '/' + getMonth + '/' + getDate;
            }
        });

        /* 2.给日期表单加上格式提示*/
        $(".combo input").attr('placeholder', 'xxxx/xx/xx');

        function addFun(addBtn, formList, info, chooseInfo,name,score) {
            var i = 4;
            var j = 4;
            $(addBtn).on("click", function () {
                var html = $("" + formList + " li:eq(0) select").html();
                $("<li style='display: none'>" +
                        "<b><select name='"+ name+"' class='" + info + "" + i++ + "'>" + html + "</select></b>" +
                        "<p><input type='text' name='"+score+"' class='" + chooseInfo + "" + j++ + "'></p>" +
                        "<a href='javascript:;' class='removeBtn'>删除</a>" +
                        "</li>").appendTo($("" + formList + "")).slideDown(700);
            });
        };
        addFun(".addBtn06", ".formList06", "SAT2Info0", "SAT2Choose0","course","score");
        addFun(".addBtn07", ".formList07", "APInfo0", "APChoose0","course","score");

        function flushOptions(event) {
            console.log("invoke");
            var disabledArr = [];
            $("." + event.data.form + " select").each(function (index, ele) {
                var selectedVal = $(this).val();
                if (selectedVal != -1) {
                    disabledArr.push(selectedVal);
                }
            });
            $("." + event.data.form + " select").each(function (index, ele) {
                $(this).find("option").removeAttr("disabled");
                for (var i = 0; i < disabledArr.length; i++) {
                    var selectedVal = $(this).val();
                    //console.log("selectedVal--" + selectedVal + ";disabledArr[i]--" + disabledArr[i]);
                    if (selectedVal != disabledArr[i]) {
                        $(this).find("option[value=" + (parseInt(disabledArr[i])) + "]").attr("disabled", "disabled");
                    }
                }
            });
        }

        $("body").on('change', ".formList07 select", {"form": "formList07"}, flushOptions);
        $("body").on('change', ".formList06 select", {"form": "formList06"}, flushOptions);

        $(".container .formList06").on("click", ".removeBtn", function () {
            var num = $(this).parents(".formList").find("li").length;
            if (num > 1) {
                var removeEle = $(this);
                $(this).parents("li").slideUp(500, function () {
                    var id=$(this).find(".removeBtn").attr("val");
                    //window.location.href="/specialization/deleteActivity?id="+id;
                    $.ajax({
                        type:"POST",
                        url:"/specialization/deleteUserScore",
                        data: {id:id},
                        success:function () {
                            window.location.reload();
                        }
                    })
                    $(this).remove();
                    flushOptions({"data": {"form": "formList06"}});
                })
            } else {
                return;
            }
        });
        //AP删除
        $(".container .formList07").on("click", ".removeBtn", function () {
            var num = $(this).parents(".formList").find("li").length;
            if (num > 1) {
                var removeEle = $(this);
                $(this).parents("li").slideUp(500, function () {
                    console.log($(this));
                    var id=$(this).find(".removeBtn").attr("val");
                    $.ajax({
                        type:"POST",
                        url:"/specialization/deleteUserScore",
                        data: {id:id},
                        success:function () {
                            window.location.reload();
                        }
                    })
                    $(this).remove();
                    flushOptions({"data": {"form": "formList07"}});
                })
            } else {
                return;
            }
        });
        //活动删除
        $(".container .formList09").on("click", ".removeBtn", function () {
            var num = $(this).parents(".formList").find("li").length;
            if (num > 1) {
                var removeEle = $(this);
                $(this).parents("li").slideUp(500, function () {
                    console.log($(this));
                    var id=$(this).find(".removeBtn").attr("val");
                    //window.location.href="/specialization/deleteActivity?id="+id;
                    $.ajax({
                        type:"POST",
                        url:"/specialization/deleteActivity",
                        data: {id:id},
                        success:function () {
                            window.location.reload();
                        }
                    })

                    $(this).remove();
                })
            } else {
                return;
            }
        });

        /* 5.点击添加活动事件*/
        $(".addBtn09").on("click", function () {
            var html = $(".formList09 li:eq(0)").html();
            $("<li style='display: none' class='clearfix'>" +
                    "<b><input type='ext' placeholder='请输入活动名称' name='activityName'></b>" +
                    "<p><textarea rows='4' cols='20' placeholder='请输入活动详情' name='activityIntro'></textarea></p>" +
                    "<a href='javascript:;' class='removeBtn'>删除</a>" +
                    "</li>").appendTo($(".formList09")).slideDown(800);
        });

        /*一、表单验证事件*/
        /*01.验证表单为空为null方法*/
        function isEmpty(tmp) {
            return tmp == null || tmp == "";
        }

        /*02.判断性别是否选择*/
        function sexCheck() {
            var sexVal = $("input:radio[name=sex]:checked").val();
            if (isEmpty(sexVal)) {
                result = false;
                //	TODO 提示
                $(".sex p span").css("display", "block");
            } else {
                $(".sex p span").css("display", "none");
            }
        }

        /*04.将时间控件获取到的值赋给页面input框*/
        function dataChangeFun() {
            var text1 = $(".dateboxId01 .combo-value").val();
            var text2 = $(".dateboxId02 .combo-value").val();
            var text3 = $(".dateboxId03 .combo-value").val();
            $(".dateboxId01 .dateboxId").val(text1);
            $(".dateboxId02 .dateboxId").val(text2);
            $(".dateboxId03 .dateboxId").val(text3);
        }

        /*05.手机号正则校验*/
        function phoneCheck(phoneNum) {
            return /^1\d{10}$/.test(phoneNum);
        }

        /*06.邮箱正则校验*/
        function mailCheck(mailNum) {
            return /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/.test(mailNum);
        }

        /*07.身份证正则校验*/
        function idCardCheck(idCardNum) {
            return /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/.test(idCardNum);
        }

        /*08.护照正则校验*/
        function passportCheck(passportNum) {
            return /^1[45][0-9]{7}|G[0-9]{8}|P[0-9]{7}|S[0-9]{7,8}|D[0-9]+$/.test(passportNum);
        }

        /*09.英文正则校验*/
        function englishCheck(englishWord) {
            return /^[a-zA-Z]+$/.test(englishWord);
        }

        /*二、表单失去焦点验证*/
        /*01失去焦点非空校验方法*/
        function blurFun(ele) {
            $(ele).blur(function () {
                if (!isEmpty($(ele).val())) {
                    $(ele).parent("p").siblings("span").css("display", "none");
                }
            });
        }

        blurFun(".name");
        blurFun("#schoolID");
        blurFun("#SkypeID");
        blurFun("#familyAddress");

        /* 02时间控件框失去焦点时方法*/
        function changeFun(ele, num) {
            $(ele).blur(function () {
                dataChangeFun();
                if (!isEmpty($(num).val())) {
                    $(num).parent("p").siblings("span").css("display", "none");
                }
            });
        }

        changeFun(".combo-text", ".dateboxId01 .dateboxId");
        changeFun(".combo-text", ".dateboxId02 .dateboxId");
        changeFun(".combo-text", ".dateboxId03 .dateboxId");


        /*03手机号码框失去焦点事件*/
        $("#phone").blur(function () {
            if (phoneCheck($("#phone").val())) {
                $("#phone").parent("p").siblings("span").css("display", "none");
            }
        })

        /*04邮箱框失去焦点事件*/
        $("#mail01").blur(function () {
            if (mailCheck($("#mail01").val())) {
                $("#mail01").parent("p").siblings("span").css("display", "none");
            }
        })

        /*05身份证、护照号码框失去焦点事件*/
        $("#idCard").blur(function () {
            if (idCardCheck($("#idCard").val())) {
                $("#idCard").parent("p").siblings("span").css("display", "none");
            }
        })

        /*06性别选择框失去焦点事件*/
        $("input:radio[name=sex]").change(function () {
            sexCheck();
        })
        /*07英文信息框失去焦点事件*/
        function ENfun(ele) {
            $(ele).blur(function () {
                if (englishCheck($(ele).val())) {
                    $(ele).parent("p").siblings("span").css("display", "none");
                }
            });
        }

        ENfun("#englishFirstName");
        ENfun("#englishLastName");
        ENfun("#englishScchool");
        ENfun("#englishAddress");

        /*三、点击提交按钮表单框验证，通过后提交*/
        $(".saveBtn").click(function () {

            //	1.所有input非空检验
            var result = true;
            $(".formList01 input").each(function (index, ele) {
                var text = $(ele).val();
                if (text == null || text == "") {
                    $(this).parent("p").siblings("span").css("display", "block");
                    result = false;
                } else {
                    $(this).parent("p").siblings("span").css("display", "none");
                }
            });

            //	2.判断性别是否选择
            sexCheck();

            // 3.将时间控件获取到的值赋给页面input框
            dataChangeFun();

            //	4.手机号正则校验
            if (!phoneCheck($("#phone").val())) {
                result = false;
                //	TODO 提示
                $("#phone").parent("p").siblings("span").css("display", "block");
                /*console.log("phone check fail");*/
            }

            //	5.邮箱正则校验
            if (!(mailCheck($("#mail01").val()))) {
                result = false;
                //	TODO 提示
                $("#mail01").parent("p").siblings("span").css("display", "block");
            }

            //	6.身份证或护照校验
            if (!(idCardCheck($("#idCard").val()) || passportCheck($("#idCard").val()))) {
                result = false;
                //	TODO 提示
                $("#idCard").parent("p").siblings("span").css("display", "block");
            }

            //	7.英文信息校验
            function enInfoCheck(enNameId) {
                if (!englishCheck($(enNameId).val())) {
                    result = false;
                    //	TODO 提示
                    $(enNameId).parent("p").siblings("span").css("display", "block");
                }
            }

            enInfoCheck("#englishFirstName");
            enInfoCheck("#englishLastName");
            enInfoCheck("#englishScchool");
            enInfoCheck("#englishAddres");

            //	校验是否通过
            if (!result) {
                return;
            } else {
                $('#formid').submit()
            }
        });

    })


</script>
</html>
