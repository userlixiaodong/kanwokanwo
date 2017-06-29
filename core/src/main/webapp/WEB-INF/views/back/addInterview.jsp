<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>视频上传</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
</head>
<link rel="stylesheet" type="text/css" href="/style/public.css?20160427"/>
<style>
    #uploadForm{font-family:Microsoft YaHei;margin: 20px 0 0 20px;}
    #tip{color:red}
    input[type="text"]{height:26px;line-height:26px;background-color:#fff;border:1px solid #cccccc;transition:all 0.15s linear;-webkit-transition:all 0.15s linear;}
    input:-webkit-autofill{background-color:transparent !important;}
    input[type=text]:focus{border-color:#20bff0;box-shadow:0 0 14px rgba(50, 204, 191, 0.3);}
    input[type=button]{border: 1px solid #99D3F5;padding: 4px 12px;overflow: hidden;background: #D0EEFF;}
</style>
<script src="/js/jquery-2.2.1.min.js"></script>
<script src="/js/jquery.ajaxfileupload.js"></script>
<body>
<div id="main" >
    <form  id="uploadForm"  enctype="multipart/form-data">
        <p>学生URl:&nbsp;&nbsp;<input type="text" name="publicUrl" id="publicUrl"/></p>

        <p>面试视频 &nbsp;&nbsp;<input type="file" name="interview" id="interviewVideo" accept=".mp4,.mov,.mkv,.flv,.3gp,.wmv,.asf,.webm,.mpg,.avi"/><input type="button" value="提交" id="saveVideo"/></p>

        <p>面试写作 &nbsp;&nbsp;<input type="file" name="interview" id="interviewImage" accept=".jpg,.jpeg,.png,.gif"/><input type="button" value="提交" id="saveImage"/></p>
    </form>
    <div id="tip"></div>
</div>

<script type="text/javascript">
    $("#saveVideo").click(function () {
        var publicUrl=$('#publicUrl').val();
        var interviewVideo = $('#interviewVideo').val();
        if(!publicUrl){
            alert("Url can't be blank!");
            return;
        }
        if(!interviewVideo){
            alert("Interview Video can't be blank!");
            return;
        }
        uploadingCover()
        $.ajaxFileUpload({
            url: "/interview/upload",
            secureuri: false,
            fileElementId: "interviewVideo",//file标签的id
            dataType: 'json',//返回数据的类型
            data: {
                'materialType': "VIDEO",
                publicUrl: publicUrl
            },
            async: true,
            success: function (data) {
                if(data.status==1){
                    alert("上传成功");
                    $('#tip').html("查看密码："+data.data)
                }else{
                    alert(data.message);
                }
            },
            complete:function(){
                $("body").find(".coverDiv").remove();
            }
        });
    })
    $("#saveImage").click(function () {
        var publicUrl = $('#publicUrl').val();
        var interviewImage = $('#interviewImage').val();
        if (!publicUrl) {
            alert("Url can't be blank!");
            return;
        }
        if (!interviewImage) {
            alert("Interview Image can't be blank!");
            return;
        }
        uploadingCover()
        $.ajaxFileUpload({
            url: "/interview/upload",
            secureuri: false,
            fileElementId: "interviewImage",//file标签的id
            dataType: 'json',//返回数据的类型
            data: {'materialType': "IMG", publicUrl: publicUrl},
            async: true,
            success: function (data) {
                if (data.status == 1) {
                    alert("上传成功");
                    $('#tip').html("查看密码：" + data.data)
                } else {
                    alert(data.message);
                }
            },
            complete: function () {
                $("body").find(".coverDiv").remove();
            }
        });
    })
    function uploadingCover(){
        var coverDiv = $('<div class="coverDiv text-center absolute-position"></div>');
        var parentDiv = $("#main");
        coverDiv.height(parentDiv.height()*1.2);
        coverDiv.width(parentDiv.width());
        coverDiv.css({
            "background-color":"#fff",
            "z-index" : 10,
            "opacity" : 0.5,
            "top": 0
        });
        var picHeight = coverDiv.height();
        var picWidth = picHeight;
        var marginTop = (coverDiv.height()-picHeight)/2;
        var loadingIMG = $('<img src="/images/loading.gif" style="width:'+picWidth+'px; height:'+picHeight+'px;margin-top:'+marginTop+'px "/>');
        coverDiv.append(loadingIMG);
        $("body").append(coverDiv);
    }
</script>
</body>
</html>