<%--
  Created by IntelliJ IDEA.
  User: 晓东
  Date: 2017/6/23
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta content="initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no,width=device-width" name="viewport">
    <meta name="format-detection" content="telephone=no">
    <title>关注院校</title>
    <link rel="stylesheet" type="text/css" href="/style/public.css"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css"/>
    <style>
        span{
            padding-left: 0;
        }
        .attention_box{
            width: 100%;
        }
        .attention_school{
            padding: 1.6rem 1rem 1rem;
            border-bottom: 0.1rem solid #eee;
        }
        .attention_title{
            padding: 4.5rem 0 1.4rem 0;
            text-align: center;
            font-size: 1.6rem;
            font-weight: normal;
            border-bottom: 0.1rem solid #eee;
            color: #333;
            font-family: "Microsoft Yahei";
            margin-bottom: 0;
        }
        .attention_title span{
            font-size: 1.6rem;
            font-family: "Microsoft Yahei";
            color: #0aaa82;
        }
        .attention_img{
            width: 40%;
            float: left;
            text-align: center;
        }
        .attention_img img{
            /*width: 100%;*/
        }
        .attention_describ{
            width: 60%;
            float: left;
            padding-left: 0.6rem;
        }
        .attention_describ .school_name{
            font-family: "Microsoft Yahei";
            font-size: 1.38rem;
            font-weight: normal;
            color: #222;
            margin-top: 0;
            margin-bottom: 0.5rem;
        }
        .attention_describ .school_name span{
            display: block;
            float: right;
            padding-right: 1rem;

        }
        .attention_describ .school_name i{
            font-style: normal;
        }
        .attention_describ .school_name img{
            width: 1.8rem;
            margin-top: -0.1rem;
            margin-right: 0.5rem;
        }
        .attention_describ p{
            padding-left: 0;
        }
        .attention_describ p b{
            font-weight: normal;
            font-size: 1.26rem;
            font-family: "Microsoft Yahei";
            color: #0aaa82;
            margin-top: 0.2rem;
        }
        .attention_describ p span{
            font-size: 1.14rem;
            font-family: "Microsoft Yahei";
            color: #aaa;
        }
        @media (max-width: 320px){
            .attention_describ p span{
                font-size: 1rem;
            }
            .attention_describ p b{
                font-size: 1.1rem;
            }
            .attention_describ .school_name{
                font-size: 1.24rem;
            }
            .attention_describ .school_name img{
                width: 1.6rem;
            }
        }

    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp"%>
    <div class="attention_box">
        <h5 class="attention_title">关注院校（<span>${listSize}</span>）</h5>
        <ul>
        <c:forEach items="${schools}" var="item">
            <li class="attention_school clearfix">
                <div class="attention_img">
                    <a href="/${item.publicUri}" target="_blank"><img src="${item.biography.avatarUrl}" alt=""></a>
                </div>
                <div class="attention_describ">
                    <h6 class="school_name">${item.biography.name} <span><img src="/images/storeup02.png" alt="" onclick="unCollect('${item.userId}');"><i>已收藏</i></span></h6>
                    <p>
                        <b>简介：</b><br>
                        <span>${item.biography.biographyOther}</span>
                    </p>
                </div>
            </li>
        </c:forEach>

        </ul>
    </div>
    <%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>
<script>


    //   02. 简介文字超出字数用省略号代替
    $(function () {
        var strs = "";
        for (var i = 0; i < $(".attention_describ p span").length; i++) {
            var str = $(".attention_describ p span").eq(i).html();
            var s = str.length;
            if (s > 30) {
                strs = strs + $(".attention_describ p span").eq(i).html(str.substr(0, 38) + "......");
            }
        }
    })

    function unCollect(schoolId) {
        $.ajax({
            url: '/user/unfollow',
            type: 'POST',
            data: {'ownerId': schoolId},
            dataType: 'json',
            success: function (data) {
                if(data.status==1){
                    location.reload();
                }
                else{
                    alert("取消收藏失败");
                }
            }
        });
    }

</script>
</html>
