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
    <link rel="stylesheet" href="/style/applicationActivity.css">
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="selfTitles">
    <h6 class="points">个人信息</h6>
</div>
<div class="container">
    <form action="/specialization/saveApplyInfo" id="formid" class="clearfix" method="post">
        <input type="hidden" id="itemId" name="itemId" value="${param.itemId}">
        <%--<input class="saveBtn saveBtn01" type="button" value="保存">--%>
        <div>
            <%--必填信息start--%>
            <div class="requiredInfo">
                <ul class="formList formList01">
                    <h5 class="formTitle">中文信息</h5>
                    <li>
                        <b><i>*</i>姓名</b>
                        <p><input type="text" class="name" name="name"></p>
                        <span class="errorInfo">请输入姓名</span>
                    </li>
                    <li><b><i>*</i>年级</b>
                        <p><input id="SkypeID" type="text" name="skypeId"></p><span class="errorInfo">请填写年级</span></li>
                    <li><b><i>*</i>就读学校</b>
                        <p><input id="schoolID" type="text" name="currentSchool"></p><span class="errorInfo">请填写就读学校</span></li>
                    <li><b><i>*</i>手机号</b>
                        <p><input type="text" name="phone" id="phone"></p><span class="errorInfo">请填写手机号码</span></li>
                    <li class="clearfix">
                        <b><i>*</i>活动兴趣</b>
                        <p class="interesting">
                            <span>生物化学</span>
                            <span>物理数学</span>
                            <span>环境科学</span>
                            <span>工程</span>
                            <span>计算机</span>
                            <span>经济金融</span>
                            <span>政治</span>
                            <span>国际关系</span>
                            <span>商科</span>
                            <span>心理学</span>
                            <span>社会学</span>
                            <span>人类学</span>
                            <span>戏剧音乐</span>
                            <span>艺术</span>
                            <span>外语</span>
                            <span>性别研究</span>
                            <span>语言学</span>
                            <span>历史</span>
                            <span>宗教</span>
                            <span>哲学</span>
                        </p>
                        <span class="errorInfo errorInfos">请选择活动兴趣</span>
                    </li>
                </ul>
                <ul class="formList">
                    <h5 class="formTitle">英文信息(请用英文填写)</h5>
                    <li><b>英文名</b>
                        <p><input type="text" name="firstName" id="englishFirstName" name="firstName"></p><span
                                class="errorInfo">请填写英文名</span></li>
                    <li><b>所在地</b>
                        <p><input type="text" name="mailingAddress" id="mailingAddress"></p><span
                                class="errorInfo">请填写所在地</span></li>
                    <li><b>学校</b>
                        <p><input type="text" name="englishHighSchool" id="englishHighSchool"></p><span
                                class="errorInfo">请填写学校</span></li>

                    <li><b>毕业年份</b>
                        <p class="dateboxId03"><input class="dateboxId easyui-datebox" name="highSchoolEndDate"></p><span class="errorInfo">请填写毕业年份</span>
                    </li>
                    <li><b>意向专业</b>
                        <p><input type="text" name="lastName" id="englishLastName"></p><span class="errorInfo">请填写意向专业</span>
                    </li>
            </div>
            <%--必填信息end--%>
            <%--选填信息start--%>
            <div class="optionalInfo">
                <h5 class="formTitle">成绩信息</h5>
                <%--<div>
                    <a href="javascript:void(0);">GPA</a>
                    <a href="javascript:void(0);">SAT</a>
                    <a href="javascript:void(0);">ACT</a>
                    <a href="javascript:void(0);">托福</a>
                    <a href="javascript:void(0);">雅思</a>
                    <a href="javascript:void(0);">SAT2</a>
                    <a href="javascript:void(0);">AP</a>
                </div>--%>
                <table class="listNav" style="width: 100%; text-align: center" cellpadding="0" cellspacing="0" border="1">
                    <tr>
                        <td>GPA</td>
                        <td>SAT</td>
                        <td>ACT</td>
                        <td>托福</td>
                        <td>雅思</td>
                        <td>SAT2</td>
                        <td>AP</td>
                    </tr>
                </table>
                <ul class="formList formList08">

                    <li><b>GPA</b>
                        <p><input type="text" placeholder="可以输入估计GPA" name="GPA"></p></li>
                </ul>
                <%--SAT start--%>
                <ul class="formList formList02">
                    <li><b>SAT 总分</b>
                        <p><input type="text" name="satTotalScore"></p></li>
                    <li><b>SAT 阅读</b>
                        <p><input type="text" name="CR"></p></li>
                    <li><b>SAT 数学</b>
                        <p><input type="text" name="Mathematics"></p></li>
                </ul>
                <%--SAT end--%>
                <%--ACT start--%>
                <ul class="formList formList03">
                    <li><b>ACT总分</b>
                        <p><input type="text" name="ACT"></p></li>
                    <li><b>ACT英语</b>
                        <p><input type="text" name="ACT_english"></p></li>
                    <li><b>ACT数学</b>
                        <p><input type="text" name="ACT_Math"></p></li>
                    <li><b>ACT阅读</b>
                        <p><input type="text" name="ACT_Reading"></p></li>
                    <li><b>ACT科学</b>
                        <p><input type="text" name="ACT_Science"></p></li>
                </ul>
                <%--ACT end--%>
                <%--托福 start--%>
                <ul class="formList formList04">
                    <li><b>托福 总分</b>
                        <p><input type="text" name="TOEFL"></p></li>
                    <li><b>托福 阅读</b>
                        <p><input type="text" name="TOEFL_Reading"></p></li>
                    <li><b>托福 写作</b>
                        <p><input type="text" name="TOEFL_Writing"></p></li>
                    <li><b>托福 听力</b>
                        <p><input type="text" name="TOEFL_Listening"></p></li>
                    <li><b>托福 口语</b>
                        <p><input type="text" name="TOEFL_Speaking"></p></li>
                </ul>
                <%--托福 end--%>
                <%--雅思 start--%>
                <ul class="formList formList05">
                    <li><b>雅思 总分</b>
                        <p><input type="text" name="IELTS"></p></li>
                    <li><b>雅思 阅读</b>
                        <p><input type="text" name="IELTS_Reading"></p></li>
                    <li><b>雅思 写作</b>
                        <p><input type="text" name="IELTS_Writing"></p></li>
                    <li><b>雅思 听力</b>
                        <p><input type="text" name="IELTS_Listening"></p></li>
                    <li><b>雅思 口语</b>
                        <p><input type="text" name="IELTS_Speaking"></p></li>
                </ul>
                <%--雅思 end--%>
                <%--SAT2 start--%>
                <div class="formList06Cont">
                    <ul class="formList formList06">
                        <li>
                            <b>
                                <select name="course" class="SAT2Info01">
                                    <option value="">--SAT2请选择--</option>
                                    <c:forEach var="type" items="${list1}">
                                        <option value="${type.id}">${type.courseName}</option>
                                    </c:forEach>
                                </select>
                            </b>
                            <p><input type="text" class="SAT2Choose01" name="score"></p>
                            <a href="javascript:;" class="removeBtn"></a>
                        </li>

                    </ul>
                    <div class="btn">
                        <a href="javascript:;" class="addBtn06"><img src="/images/addIcon.png" alt=""><br>+添加科目</a>
                    </div>
                </div>
                <%--SAT2 end--%>
                <%-- AP start--%>
                <div class="formList07Cont">
                    <ul class="formList formList07">
                        <li>
                            <b>
                                <select name="course" class="APInfo01">
                                    <option value="">--AP请选择--</option>
                                    <c:forEach var="type" items="${list2}">
                                        <option value="${type.id}">${type.courseName}</option>
                                    </c:forEach>

                                </select>
                            </b>
                            <p><input type="text" class="APChoose01" name="score"></p>
                            <a href="javascript:;" class="removeBtn"></a>
                        </li>
                    </ul>
                    <div class="btn">
                        <a href="javascript:;" class="addBTn07"><img src="/images/addIcon.png" alt=""><br>+添加科目</a>
                    </div>
                </div>
                <%-- AP end--%>

            </div>
            <%--活动start--%>
            <div class="formList09Cont">
                <ul class="formList formList09">
                    <h5 class="formTitle">活动信息</h5>
                    <li class="clearfix">
                        <b><input type="text" placeholder="请输入活动名称" name="activityName"></b>
                        <p><textarea rows="4" cols="20" placeholder="请输入活动详情" name="activityIntro"></textarea></p>
                        <a href="javascript:;" class="removeBtn"></a>
                    </li>
                </ul>
                <div class="btn">
                    <a href="javascript:;" class="addBtn09"><img src="/images/addIcon.png" alt=""><br>+添加活动</a>
                </div>
            </div>

            <%--活动end--%>
            <%--选填信息end--%>
        </div>

        <div class="saveBox"><input id="sub" class="saveBtn saveBtn02" type="button" value="保存"><span id="spn1" >您有未填写完整的信息</span></div>

    </form>
</div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>

<script src="/js/jquery-1.7.2-min.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">

    $(function () {

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
        /*$(".combo input").attr('placeholder', 'xxxx/xx/xx');*/

        /*3.SAT2 AP 点击添加事件*/
        function addFun(addBtn, formList, info, chooseInfo,name,score) {
            var i = 4;
            var j = 4;
            $(addBtn).on("click", function () {
                var html = $("" + formList + " li:eq(0) select").html();
                $("<li style='display: none'>" +
                        "<b><select name='"+ name+"' class='" + info + "" + i++ + "'>" + html + "</select></b>" +
                        "<p><input type='text' name='"+score+"' class='" + chooseInfo + "" + j++ + "'></p>" +
                        "<a href='javascript:;' class='removeBtn'></a>" +
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

        /*4.SAT2 AP 点击删除事件*/
        $(".container .formList06").on("click", ".removeBtn", function () {
            var num = $(this).parents(".formList").find("li").length;
            if (num > 1) {
                var removeEle = $(this);
                $(this).parents("li").slideUp(500, function () {
                    $(this).remove();
                    flushOptions({"data": {"form": "formList06"}});
                })
            } else {
                return;
            }
        });
        $(".container .formList07").on("click", ".removeBtn", function () {
            var num = $(this).parents(".formList").find("li").length;
            if (num > 1) {
                var removeEle = $(this);
                $(this).parents("li").slideUp(500, function () {
                    $(this).remove();
                    flushOptions({"data": {"form": "formList07"}});
                })
            } else {
                return;
            }
        });
        $(".container .formList09").on("click", ".removeBtn", function () {
            var num = $(this).parents(".formList").find("li").length;
            if (num > 1) {
                var removeEle = $(this);
                $(this).parents("li").slideUp(500, function () {
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
                    "<a href='javascript:;' class='removeBtn'></a>" +
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
                }else{
                    $(ele).parent("p").siblings("span").css("display", "block");
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
                }else {
                    $(num).parent("p").siblings("span").css("display", "block");
                }
            });
        }

        changeFun(".dateboxId01 .combo-text", ".dateboxId01 .dateboxId");
        changeFun(".dateboxId02 .combo-text", ".dateboxId02 .dateboxId");
        /*changeFun(".dateboxId03 .combo-text", ".dateboxId03 .dateboxId");*/


        /*03手机号码框失去焦点事件*/
        $("#phone").blur(function () {
            if (phoneCheck($("#phone").val())) {
                $("#phone").parent("p").siblings("span").css("display", "none");
            }else {
                $("#phone").parent("p").siblings("span").css("display", "block");
            }
        })

        /*04邮箱框失去焦点事件*/
        $("#mail01").blur(function () {
            if (mailCheck($("#mail01").val())) {
                $("#mail01").parent("p").siblings("span").css("display", "none");
            }else {
                $("#mail01").parent("p").siblings("span").css("display", "block");
            }
        })

        /*05身份证、护照号码框失去焦点事件*/
        $("#idCard").blur(function () {
            if (idCardCheck($("#idCard").val())) {
                $("#idCard").parent("p").siblings("span").css("display", "none");
            }else {
                $("#idCard").parent("p").siblings("span").css("display", "block");
            }
        })

        /*06性别选择框失去焦点事件*/
        $("input:radio[name=sex]").change(function () {
            sexCheck();
        });
        /*07英文信息框失去焦点事件*/
        function ENfun(ele) {
            $(ele).blur(function () {
                if (englishCheck($(ele).val())) {
                    $(ele).parent("p").siblings("span").css("display", "none");
                }else {
                    $(ele).parent("p").siblings("span").css("display", "block");
                }
            });
        }

        /*ENfun("#englishFirstName");
        ENfun("#englishLastName");*/
        /*ENfun("#englishHighSchool");*/
        /*ENfun("#mailingAddress");*/


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

            /*enInfoCheck("#englishFirstName");*/
            /*enInfoCheck("#englishLastName");*/
            enInfoCheck("#englishScchool");
            enInfoCheck("#englishAddres");
            //8.兴趣活动验证
            var num=0;
            $(".interesting span").each(function (index,ele) {
                var attr=$(this).attr("class");
                    if(attr=="active"){
                    num++
                }
            });
            if(num<1){
                $(".interesting span").parent("p").siblings("span").css("display", "block");
            }else {
                $(".interesting span").parent("p").siblings("span").css("display", "none");
            }

            //	校验是否通过
            if (!result) {
               /* alert($("#sub"))
                console.log($("#sub"));*/
                $("#spn1").css("display", "inline-block");
                return;
            } else {
                $("#spn1").css("display", "none");
                $('#formid').submit()
            }
        });

        /*四日期插件默认样式修改*/
        $(".combo").css("width","84%");
        $(".combo-text").css("width","100%");
        if($(window).width()<769){
            $(".combo").css("width","100%");
        }
        
        /*五选填信息选项卡切换效果*/
        $(".listNav td").click(function () {
            $(this).addClass("active").siblings().removeClass("active")
            var num=$(this).index();
            $(".optionalInfo .formList").hide();
            $(".optionalInfo .formList").eq(num).show();
            if(num==5){
                $(".formList06Cont .btn").show();
            }else {
                $(".formList06Cont .btn").hide();
            }
            if(num==6){
                $(".formList07Cont .btn").show();
            }else {
                $(".formList07Cont .btn").hide();
            }
        })
        /*六兴趣活动选中效果及验证没选中时提示文字*/
        $(".interesting span").click(function () {
            $(this).toggleClass("active");
            var num=0
            $(".interesting span").each(function (index,ele) {
                var attr=$(this).attr("class");
                if(attr=="active"){
                    num++
                }
            })
            if(num<1){
                $(this).parent("p").siblings("span").css("display", "block");
            }else {
                $(this).parent("p").siblings("span").css("display", "none");
            }

        })

    })


</script>
</html>
