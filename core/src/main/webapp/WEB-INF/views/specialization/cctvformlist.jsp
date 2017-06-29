<%--
  Created by IntelliJ IDEA.
  User: 1009
  Date: 2017/3/27
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="description" content="Touch enabled minimalistic slider written in vanilla JavaScript">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <%--<script src="/js/jquery-1.7.2-min.js"></script>--%>
    <%--<script src="/js/ajaxfileupload.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/bootstrap.js"></script>--%>
    <%--<script src="/js/jquery-ui.js"></script>--%>
   <%--<script src="/js/jquery-1.11.3.min.js"></script>--%>
   <%-- <script src="/js/jquery.form1.js"></script>--%>
    <%--<script src="/js/jquery-ui.min.js"></script>--%>

    <link rel="stylesheet" type="text/css" href="/style/public.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160516"/>
    <link rel="stylesheet" type="text/css" href="/style/app.css">
    <link rel="stylesheet" href="/style/cisformlist.css?20170331">
</head>

<body style="background-color: #f0f5f8">

<div class="container_box">
    <%@include file="/WEB-INF/views/common/top.jsp" %>

    <div id="applyForm">

        <div class="application_box application1" id="page01">
            <form id="form1">
                <h4 class="title">中央电视台媒体实习项目申请</h4>
                <ul>
                    <li><span>01</span>基本信息</li>
                    <li><span>02</span>获取申请表</li>
                    <li><span>03</span>提交申请</li>
                    <li><span>04</span>支付</li>
                </ul>
                <div class="line">
                    <i class="line_speed"></i>
                </div>
                <p class="text"><i></i>请输入真实有效个人信息，便于我们告知您申请结果</p>

                <div class="self_info">
                    <p><span><i></i>用户姓名：</span><input type="text" id="name" name=""> <b id="error01">请输入正确姓名</b></p>
                    <p><span><i></i>联系电话：</span><input type="text" id="phone" name="" ><b id="error02">请输入正确电话号码</b><span id="span1"></span></p>
                    <p><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人邮箱：</span><input type="text" id="emails" name=""><b id="error03">请输入正确邮箱</b></p>
                </div>
                <input class="btn_down btn" type="button" id="page01NextStep" value="下一步" />
                <%--<form action="user.do" method="post">
                    请输入<input name="msg" type="text" />
                    <input type="submit" value="提交">
                </form>--%>
            </form>
        </div>

        <!--step-01结束-->

        <!--step-02开始-->
        <div class="application_box application2" id="page02">
            <h4 class="title">中央电视台媒体实习项目申请</h4>
            <ul>
                <li><span>01</span>基本信息</li>
                <li><span>02</span>获取申请表</li>
                <li><span>03</span>提交申请</li>
                <li><span>04</span>支付</li>
            </ul>
            <div class="line">
                <i class="line_speed"></i>
            </div>
            <p class="text"><i></i>请下载下方申请表格，用英文把申请表格填写完整，以便对您做出更准确的评估（非英文填写不予受理）</p>
            <div class="cis_word">
                <img src="/images/wordIcon-1.png" alt="" />
                <a href="http://focusedu.oss-cn-hangzhou.aliyuncs.com/activities/files/kanwoform.docx">点击下载申请表>></a>

            </div>
            <div class="step_box">
                <a href="javascript:void(0);" class="btn" id="page02PreStep">上一步</a>
                <a href="javascript:void(0);" class="btn" id="page02NextStep">下一步</a>
            </div>
        </div>

        <!--step03开始-->
        <%----%>
        <div class="application_box application3" id="page03">
            <form id="fileForm" name="form2" enctype="multipart/form-data">
                <h4 class="title">中央电视台媒体实习项目申请</h4>
                <ul>
                    <li><span>01</span>基本信息</li>
                    <li><span>02</span>获取申请表</li>
                    <li><span>03</span>提交申请</li>
                    <li><span>04</span>支付</li>
                </ul>
                <div class="line">
                    <i class="line_speed"></i>
                </div>
                <p class="text"><i></i>请确认您的信息填写无误、文件没有损坏，再点击上传</p>
                <div class="cis_word">
                    <img src="/images/wordIcon-1.png" alt="" />
                    <span class="fileText"></span>
                    <a href="javascript:void(0);" id="uploadApplyTable">点击上传申请表>></a>
                    <span class="fileUp"  style="margin-left: 44px;">请上传文件</span>
                    <input type="file" id="file" name="file" class="fileUpload" style="display: none;"/>
                    <input type="button" id="btn3" value="上传" style="opacity: 0">
                </div>

                <div class="step_box">
                    <a href="javascript:void(0);" class="btn" id="page03PreStep">上一步</a>
                    <a href="javascript:void(0);" class="btn" id="page03NextStep">下一步</a>
                </div>
            </form>
        </div>
        <%----%>
        <!--step04开始-->
        <div class="application_box application4" id="page04">
            <h4 class="title">中央电视台媒体实习项目申请</h4>
            <ul>
                <li><span>01</span>基本信息</li>
                <li><span>02</span>获取申请表</li>
                <li><span>03</span>提交申请</li>
                <li><span>04</span>支付</li>
            </ul>
            <div class="line">
                <i class="line_speed"></i>
            </div>
            <p class="text">
                <span style="font-weight:bold;font-size:22px;color:#f90;display:block;width: 100%;height:20px;">
                    <i></i>此项目无需线上付款。
                </span>

            </p>
            <div class="step_box">
                <a href="javascript:void(0);" class="btn" id="page04PreStep">返回</a>
                <a href="javascript:void(0);" class="btn" id="page04submit">提交</a>
            </div>
        </div>

    </div>
    <%@include file="/WEB-INF/views/common/bottom.jsp" %>
</div>

<%--弹窗效果--%>
<div class="popup_box">
    <span class="popup_close"></span>
    <img src="/images/cisformIcon.png"/>
    <p>恭喜您提交成功！我们会在5个工作日内对您做出评估，<br />
        并由我们的老师联系您。</p>
    <a href="javascript:;" class="popup_btn">确定</a>

</div>
<%--弹窗蒙版--%>
<div class="fe_window_mask"></div>

</body>

<script type="text/javascript">
    $(function() {

        $("#btn3").click(function () {
            $("#fileForm").ajaxSubmit({
                type:'post',
                url : "/userItem/upload",
                contentType : "application/x-www-form-urlencoded; charset=utf-8",
                data:{
                    userName: $('#name').val(),
                    moblie: $('#phone').val(),
                    email: $('#emails').val(),
                    itemId: "10"
                },
                success: function(data) {
                    //接受到的data还只是一个字符串，需要转成json对象
                    var obj = JSON.parse(data);
                    if(obj.flag==true){
                        /*alert("上传成功");*/
                    }else{
                        alert("error");
                    }
                },
                error: function (data)//服务器响应失败处理函数
                {
                   /* alert("上传成功");*/
                }

            })
        })
        //	工具方法
        function isEmpty(tmp) {
            return tmp == null || tmp == "";
        }

        //	事件绑定
        $("#page01NextStep").on("click", page01NextStepFun);
        $("#page02PreStep").on("click", page02PreStepFun);
        $("#page02NextStep").on("click", page02NextStepFun);
        $("#uploadApplyTable").on("click", uploadApplyTableFun);
        $("#page03PreStep").on("click", page03PreStepFun);
        $("#page03NextStep").on("click", page03NextStepFun);
        $("#page04PreStep").on("click", page04PreStepFun);
        $("#page04submit").on("click", page04submitFun);

        // 1. 默认显示第一个页面
        $("#applyForm > div").hide();
        $("#page01").show();
        $(".application3 .cis_word >img").hide();

        //第一页焦点事件
        $("#name").blur(function () {
            var name = $("#name").val();
            if(isEmpty(name)) {
                $("#error01").show();
                //	提示

                return false;
            }else {
                $("#error01").hide()
            }
        });
        $("#phone").blur(function () {
            var phone = $("#phone").val();
            var phoneReg = /^[1-9]{1}[0-9]{10}$/;
            if(isEmpty(phone) || !phoneReg.test(phone)) {
                //	提示
                $("#error02").show();
                return false;
            }else {
                $("#error02").hide()
            }
        });

        $("#emails").blur(function () {
            var emails = $("#emails").val();
            var mailReg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;

            if(!isEmpty(emails) && !mailReg.test(emails)) {
                //	提示
                $("#error03").show();
                return false;
            }else {
                $("#error03").hide();
            }
        });

        //	第一页下一步点击事件
        function page01NextStepFun() {
            //	姓名非空校验
            var name = $("#name").val();
            if(isEmpty(name)) {
                $("#error01").show();
                //	提示

                return false;
            }

         $("#form1").ajaxSubmit({
                url: '/userItem/checkMobileAvail',
                data: {
                    userName: $('#name').val(),
                    moblie: $('#phone').val(),
                    email: $('#emails').val(),
                    itemId: "10"
                },
                contentType : "application/x-www-form-urlencoded; charset=utf-8",
                type: 'post',
                dataType: 'json',
                success: function (result) {
                    if (result.status == 1) {
                        //	手机号校验
                        var phone = $("#phone").val();
                        var phoneReg = /^[1-9]{1}[0-9]{10}$/;
                        if(isEmpty(phone) || !phoneReg.test(phone)) {
                            //	提示
                            $("#error02").show()
                            return false;
                        }

                        //	邮箱校验
                        var emails = $("#emails").val();
                        var mailReg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;

                        if(!isEmpty(emails) && !mailReg.test(emails)) {
                            //	提示
                            $("#error03").show()
                            return false;
                        }
                        //	校验通过，进入下一页
                        $("#applyForm>div").hide();
                        $("#page02").show();
                    } else {
                        $("#span1").siblings("b").html("该手机号已被使用").css("display","block");
                    }
                }
            })



        }

        //	第二页上一步点击事件
        function page02PreStepFun() {
            $("#applyForm > div").hide();
            $("#page01").show();
        }

        //	第二页下一步点击事件
        function page02NextStepFun() {
            $("#applyForm > div").hide();
            $("#page03").show();
        }

        //	第三页点击上传按钮事件
        function uploadApplyTableFun() {
            $(".fileUpload").click();
            $(".fileUpload").change(function () {
                var fileText=$(this).val();
                var fileArr=fileText.split("\\");
                if( $(".fileUpload").val() != null && $(".fileUpload").val() != ""){
                    $(".cis_word .fileUp").hide();
                    $(".cis_word > img").show();
                    $(".fileText").html(fileArr[fileArr.length-1])
                }else {
                    $(".cis_word .fileUp").show();
                    $(".cis_word > img").hide();
                    $(".fileText").html("")
                }
                $("#btn3").click();
            });
        }

        //	第三页上一步点击事件
        function page03PreStepFun() {
            $("#applyForm > div").hide();
            $("#page02").show();
        }

        //	第三页下一步点击事件
        function page03NextStepFun() {
            //	校验用户是否上传了申请表
            var isUpload = $(".fileUpload").val() != null && $(".fileUpload").val() != "";
            if(!isUpload) {
                $(".cis_word .fileUp").show();
                return false;
            }else {
                /*$(".btn3").click();*/
                $(".cis_word .fileUp").hide();
            }
            $("#applyForm > div").hide();

            $("#page04").show();

            // $("#fileForm").submit();
        }

        //	第四页上一步点击事件
        function page04PreStepFun() {
            $("#applyForm > div").hide();
            $("#page03").show();
        }

        //弹窗事件
        $(".popup_close").click(function(){
            window.location.href='/reservation/myReservation'/*跳转链接*/
        });

        $(".popup_btn").click(function(){
            window.location.href='/reservation/myReservation'/*跳转链接*/
        });

        //	第四步提交事件
        function page04submitFun() {
            $(".popup_box").show();
            $(".fe_window_mask").show();
            var scrollH=$(window).scrollTop();
            $(window).scroll(function(){
                $ (this).scrollTop (scrollH)
            });
        }

    });

</script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/jquery.form1.js"></script>
</html>