/**
 * Created by szj on 2016/4/21.
 */
require('jquery');
require('zclip');
require("modalEffects");
window._ = require("underscore");
require("../../js/jquery.jcshare.js");
require("../../js/jquery.qrcode.min.js");
$(document).ready(function () {
    _.templateSettings = {
        evaluate: /<@([\s\S]+?)@>/g,
        interpolate: /<@=([\s\S]+?)@>/g,
        escape: /<@-([\s\S]+?)@>/g
    };

    $(".user-dropdown").mouseover(function () {
        $(this).next(".subnav-content").slideDown(300);
    });
    $(".user-dropdown-wrap").mouseleave(function () {
        $(this).children(".subnav-content").slideUp(300);
    });

    $(".subnav-content").height($(window).height() - 75);

    $(".navbar-search-input").bind("keypress", function () {
        if (event.keyCode == 13) {
            search();
            return false;
        }
    });
    $(".glyphicon-search").bind("click", function () {
        search();
    });

    //setting
    $("#modal-setting .reveal-button").bind("click", function () {
        var password = $("#password").val();
        var repassword = $("#repassword").val();
        if ($.trim(password) != "" && $.trim(repassword) != "" && ($.trim(password) == $.trim(repassword))) {
            $.ajax({
                type: "POST",
                url: '/user/resetSettingPassword',
                data: {password: password},
                dataType: 'json',
                success: function (data) {
                    if (data.status == 1) {
                        $("#modal-setting .md-close").trigger("click");
                        alert("Change password successfully");
                    }
                }
            });
        } else {
            alert("input your password");
        }
    });

    $(".copy").zclip({
        path: "/js/ZeroClipboard.swf",
        copy: function () {
            return $(this).text();
        },
        beforeCopy: function () {/* 按住鼠标时的操作 */
        },
        afterCopy: function () {/* 复制成功后的操作 */
            console.log($(this).text());
            var $copysuc = $("<div class='copy-tips'><div class='copy-tips-wrap'>Copied to clipboard.</div></div>");
            $("body").find(".copy-tips").remove().end().append($copysuc);
            $(".copy-tips").fadeOut(3000);
        }
    });
    $('.editBio').click(function () {
        $('.modifyBiography:first').trigger('click');
    })

    //$('body').off('click', '.reveal-button')
    //登录

    $("body").keydown(function () {
        if (event.keyCode == "13") {
            if ($('#modal-12').hasClass('md-show')) {
                $('#logIn').click();
            }
            if ($('#modal-13').hasClass('md-show')) {
                if (mobileFlag) {
                    $('#registerMobileBtn').click();
                } else {
                    $('#register').click();
                }
            }
        }
    });
    $('#logIn').click(function () {
        var returnUrl = '';//location.href;//没前缀的，
        //var noRedirect = ['/','parterner']
        //if(returnUrl in noRedirect)
        //    returnUrl = '';

        $.ajax({
            url: '/user/login-submit',
            data: {
                loginName: $('#email').val(),
                userPwd: $('#loginpassword').val()
            },
            type: 'post',
            dataType: 'json',
            success: function (result) {
                if (result.status == 1) {
                    window.location.href = '/' + result.data;
                } else {
                    $('#tip').html(result.message)
                }
            }
        })
    })
    //注册
    emailFlag = false;
    pwdFlag = false;
    nameFlag = false;
    collegeFlag = false;
    VCodeFlag = false;
    mobileFlag = false;
    var mobileRegisterTmpl = _.template($('#mobile_register_tmpl').html());
    var emailRegisterTmpl = _.template($('#email_register_tmpl').html());
    $('#modal-13').html(emailRegisterTmpl());
    $('body').delegate('.swich-register-type', 'click', function (e) {
        var item = $(this);
        var type = item.attr('data-type');
        if (type == 'email') {
            $('#modal-13').html(emailRegisterTmpl());
        } else if (type == 'mobile') {
            $('#modal-13').html(mobileRegisterTmpl());
        }
    });
    $("body").delegate("#register", "click", function (e) {
        emailFlag = false;
        pwdFlag = false;
        nameFlag = false;
        var name = $('#registerName').val();
        var email = $('#registerEmail').val();
        var pwd = $('#registerPwd').val();
        checkEmail(email);
        checkPassword(pwd);
        checkName(name);
        if (emailFlag && pwdFlag && nameFlag) {
            $.ajax({
                url: '/user/register-submit',
                data: {
                    email: email,
                    userPwd: pwd,
                    userName: name
                },
                type: 'post',
                dataType: 'json',
                success: function (result) {
                    if (result.status == 1) {
                        window.location.href = '/' + result.data
                    } else {
                        $('#registerEmailTip').html(result.message)
                    }
                }
            })
        }
    })

    $('#adRegister').click(function () {
        emailFlag = false;
        pwdFlag = false;
        nameFlag = false;
        collegeFlag = false;
        var name = $('#adregisterName').val();
        var email = $('#adregisterEmail').val();
        var pwd = $('#adregisterPwd').val();
        var college = $('#adregisterCollege').val();
        checkEmail(email);
        checkPassword(pwd);
        checkName(name);
        checkCollege();

        if (emailFlag && pwdFlag && nameFlag && collegeFlag) {
            $.ajax({
                url: '/user/admission/register-submit',
                data: {
                    'email': email,
                    'userPwd': pwd,
                    'userName': name,
                    'school': college
                },
                type: 'post',
                dataType: 'json',
                success: function (result) {
                    if (result.status == 1) {
                        window.location.href = '/' + result.data
                    } else {
                        $('#registerEmailTip').html(result.message)
                        $('#adregisterEmailTip').html(result.message)
                    }
                }
            })
        }
    });

    // mobile register
    var sendVerfiFlag = false;
    var intervalTime = 180; // 180s
    var currentSecond = intervalTime;
    var timer = null;
    $('body').delegate('#sendVerifCode', 'click', function (e) {
        if (sendVerfiFlag) {
            return;
        }

        var mobile = $('#registerMobile').val();
        mobile = $.trim(mobile);
        if (mobile == '') {
            alert('Verification cannot be empty');
            return;
        }
        if (mobile.search(/^((13[0-9])|(15[^4,\D])|(18[0,5-9]))\d{8}$/) == -1) {
            alert('Invalid Mobile Number.')
            return;
        }
        sendVerfiFlag = true;
        $.ajax({
            url: '/user/sendPhoneVerificationCode',
            data: {'mobile': mobile},
            type: 'POST',
            dataType: 'json',
            success: function (data) {
                if (data.status == 1) {
                    // 发送验证码成功
                    timer = setInterval(function () {
                        if (currentSecond < 0) {
                            $('#sendVerifCode').val('Get verification code');
                            window.clearInterval(timer);
                            currentSecond = 1;
                            currentSecond = intervalTime;
                            sendVerfiFlag = false;
                            return;
                        }
                        $('#sendVerifCode').val(currentSecond + 's');
                        currentSecond--;
                    }, 1000);
                } else {
                    sendVerfiFlag = false;
                    alert(data.message);
                }
            },
            error: function () {
                sendVerfiFlag = false;
            }
        })
    });
    var mobileRegisterFlag = false;
    mobileName = null;
    $("body").delegate("#registerMobileBtn", "click", function (e) {
        if (mobileRegisterFlag) {
            return;
        }
        mobileFlag = false;
        VCodeFlag = false;
        pwdFlag = false;
        nameFlag = false;
        var mobile = $('#registerMobile').val();
        var verificationCode = $('#registerVCode').val();
        var password = $('#registerMobilePwd').val();
        var name = $('#registerMobileName').val();
        checkMobile(mobile);
        checkVerificationCode(verificationCode);
        checkPassword(password);
        checkName(name);
        if (mobileFlag && VCodeFlag && pwdFlag && nameFlag) {
            $.ajax({
                url: '/user/mobile-register-submit',
                data: {'mobile': mobile, 'verificationCode': verificationCode, 'password': password, 'userName': name},
                type: 'POST',
                dataType: 'json',
                success: function (data) {
                    if (data.status == 1) {
                        mobileName = data.data;
                        // 输入邮箱
                        //location.href = '/' + data.data;
                        $('#modal-13').removeClass('md-show');
                        $('#showInMobileEmail').click();
                        clearTips();
                    } else {
                        alert(data.message);
                    }
                    mobileRegisterFlag = false;
                },
                error: function () {
                    mobileRegisterFlag = false;
                }
            })
        }
    });

    $('#skipEmailBtn').click(function () {
        location.href = '/' + mobileName;
    });

    $('#updateEmailBtn').click(function () {
        emailFlag = false;
        var email = $('#updateEmail').val();
        checkEmail(email);
        if (emailFlag) {
            $.ajax({
                url: '/user/updateEmail',
                type: 'POST',
                data: {'email': email},
                dataType: 'json',
                success: function (data) {
                    if (data.status == 1) {
                        location.href = '/' + mobileName;
                    } else {
                        alert(data.message);
                    }
                }
            })
        }
    });

    //忘记密码
    $('#sendEmail').click(function () {
        $.ajax({
            url: '/user/sendEmail',
            data: {
                email: $('#forgotEmail').val(),
            },
            type: 'post',
            dataType: 'json',
            success: function (result) {
                $('#sendEmailTip').html(result.message)
            }
        })
    })

    $('body').delegate('#registerEmail', 'blur', function (e) {
        checkEmail($(this).val())
    });
    $('body').delegate('#registerPwd', 'blur', function (e) {
        checkPassword($(this).val())
    });
    $('body').delegate('#registerName', 'blur', function (e) {
        checkName($(this).val());
    });

    $("#adregisterEmail").blur(function () {
        checkEmail($(this).val())
    });
    $("#adregisterPwd").blur(function () {
        checkPassword($(this).val())
    });
    $('#adregisterCollege').blur(function () {
        checkCollege();
    });
    $('#adregisterName').blur(function () {
        checkName($(this).val());
    });

    // mobile
    $('body').delegate('#registerMobile', 'blur', function (e) {
        checkMobile($(this).val());
    });
    $('body').delegate('#registerVCode', 'blur', function (e) {
        checkVerificationCode($(this).val());
    });
    $('body').delegate('#registerMobilePwd', 'blur', function (e) {
        checkPassword($(this).val());
    });
    $('body').delegate('#registerMobileName', 'blur', function (e) {
        checkName($(this).val());
    });
    $('#updateEmail').blur(function () {
        checkEmail($(this).val());
    });
    $(".header-share-app").click(function () {
        $(this).find('span').slideToggle('slow');
    });
    //分享
    $(document).share({
        title: "我在”看我看我”上发现了这个页面，留学申请材料这么做太酷了，大家都在用，你再不用就晚了。",
        url: location.href,
        summary: "欢迎使用看我看我~",
        img: "1"
    });

    var isDraw = false;
    $('.share_wechat').click(function () {
        if (!isDraw) {
            $(".codes").qrcode({
                render: "Canvas",
                correctLevel: 0,//纠错等级
                width: 170, // 宽度
                height: 170, // 高度
                text: location.href

                // 任意内容
            });
            isDraw = true;
        }
        $('.codeDiv').show();
    })

    $('.createbtn').click(function () {
        $($('.not-login li a')[1]).trigger("click");
    })


});
window.search = function () {
    var q = $(".navbar-search-input").val();
    if ($.trim(q) != "") {
        window.location = "/search/users?q=" + q;
    }
}
window.trackOutboundLink = function (url, data) {
    var redirectTriggered = false;
    ga('send', 'event', data, 'click', url, {
        'hitCallback': function () {
            if (url) {
                redirectTriggered = true;
                document.location = url;
            }
        }
    });
    if (url) {
        setTimeout(function () {
            if (!redirectTriggered) {
                document.location = url;
            }
        }, 1500);
    }
}
window.checkEmail = function (email) {
    if (email != "") {
        $.ajax({
            url: "/user/checkUserEmail",
            data: {"email": email},
            type: "post",
            dataType: "json",
            cache: false,
            async: false,
            success: function (result) {
                if (result.status == 1) {
                    if (email.search(/^([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+\.(?:com|cn|net)$/) != -1) {
                        $('#registerEmailTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
                        $('#adregisterEmailTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
                        $('#updateEmailTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
                        emailFlag = true;
                    }
                    else {
                        $('#registerEmailTip').html("Invalid Email address!")
                        $('#adregisterEmailTip').html("Invalid Email address!")
                        $('#updateEmailTip').html("Invalid Email address!")
                        emailFlag = false;
                    }
                }
                else {
                    $('#registerEmailTip').html(result.message)
                    $('#adregisterEmailTip').html(result.message)
                    $('#updateEmailTip').html(result.message)
                    emailFlag = false;
                }
            }
        });
    } else {
        $('#registerEmailTip').html("Email cannot be empty")
        $('#adregisterEmailTip').html("Email cannot be empty")
        $('#updateEmailTip').html("Email cannot be empty")
        emailFlag = false;
    }
}

window.checkMobile = function (mobile) {
    if (mobile != "") {
        if (mobile.search(/^((13[0-9])|(15[^4,\D])|(18[0,5-9]))\d{8}$/) == -1) {
            $('#registerMobileTip').html("Invalid Mobile Number.")
            mobileFlag = false;
            return;
        }
        $.ajax({
            url: "/user/checkMobileAvail",
            data: {'mobile': mobile},
            type: 'POST',
            dataType: 'json',
            cache: false,
            async: false,
            success: function (data) {
                if (data.status == 1) {
                    $('#registerMobileTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>");
                    mobileFlag = true;
                } else {
                    $('#registerMobileTip').html(data.message);
                    mobileFlag = false;
                }
            }
        });
    } else {
        $('#registerMobileTip').html("Email cannot be empty")
        mobileFlag = false;
    }
}

window.checkVerificationCode = function (VCode) {
    if (VCode && VCode.length == 6 && !isNaN(VCode)) {
        $('#registerVCodeTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>");
        VCodeFlag = true;
    } else {
        $('#registerVCodeTip').html('Invalid Verification Code.')
        VCodeFlag = false;
    }
}

window.checkPassword = function (password) {//检查密码
    if (!password) {
        $('#registerPwdTip').html("Password cannot be empty")
        $('#adregisterPwdTip').html("Password cannot be empty")
        $('#registerMobilePwdTip').html("Password cannot be empty")
        pwdFlag = false;
    }
    else if (password.length < 8) {
        $('#registerPwdTip').html("Password must be at least 8 characters!")
        $('#adregisterPwdTip').html("Password must be at least 8 characters!")
        $('#registerMobilePwdTip').html("Password must be at least 8 characters!")
        pwdFlag = false;
    }
    else {
        $('#registerPwdTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
        $('#adregisterPwdTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
        $('#registerMobilePwdTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
        pwdFlag = true;
    }
}

window.checkName = function (name) {//检查密码
    if (!name) {
        $('#registerNameTip').html("Name cannot be empty")
        $('#adregisterNameTip').html("Name cannot be empty")
        $('#registerMobileNameTip').html("Name cannot be empty")
        nameFlag = false;
    }
    else {
        $('#registerNameTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
        $('#adregisterNameTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
        $('#registerMobileNameTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
        nameFlag = true;
    }
}

window.checkCollege = function () {
    var college = $('#adregisterCollege').val();
    if ($.trim(college).length <= 0) {
        $('#adregisterCollegeTip').html('College cannot be empty');
        collegeFlag = false;
    } else {
        $('#adregisterCollegeTip').html('<font style="color:green;">&nbsp;&nbsp;√</font>');
        collegeFlag = true;
    }
}

window.clearTips = function () {
    $('#adregisterEmailTip').html('');
    $('#adregisterPwdTip').html('');
    $('#adregisterNameTip').html('');
    $('#adregisterCollegeTip').html('');

    $('#registerEmailTip').html('');
    $('#registerPwdTip').html('');
    $('#registerNameTip').html('');


    $('#registerMobileTip').html('');
    $('#registerVCodeTip').html('');
    $('#registerMobilePwdTip').html('');
    $('#registerMobileNameTip').html('');

    $('#updateEmailTip').html('');
}
window.hideCode = function () {
    $('.codeDiv').hide();
};