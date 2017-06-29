/**
 * Created by liuruichao on 16/4/14.
 */
$(function(){
    var bindTemplate = $('#bind_template').html();
    var registerTemplate = $('#register_template').html();
    var isRegister = false;
    $('#content').html(bindTemplate);
    
    
    $('body').delegate('#showRegisterBtn', 'click', function(e){
        $('#content').html(registerTemplate);
        isRegister = true;
    });
    $('body').delegate('#showBindBtn', 'click', function(e){
        $('#content').html(bindTemplate);
        isRegister = false;
    });
    
    // bind account
    var bindFlag = false;
    $('body').delegate('#bindBtn', 'click', function(e){
        if (bindFlag) {
            return;
        }
        var loginName = $('#bindLoginName').val();
        var password = $('#bindPwd').val();
        
        var checkFlag = true;
        if (!checkLoginName(loginName, 'bindLoginNameTip')) {
            checkFlag = false;
        }
        if (!checkPassword(password, 'bindPwdTip')) {
            checkFlag = false;
        }
        if (checkFlag) {
            bindFlag = true;
            $.ajax({
                url: '/oauth/bind',
                type: 'POST',
                data: {'loginName': loginName, 'password': password},
                dataType: 'json',
                success: function(data) {
                    if (data.status == 1) {
                        location.href = '/' + data.data;
                    } else {
                        alert(data.message);
                    }
                    bindFlag = false;
                },
                error: function() {
                    alert('The system is busy, please try again later!');
                    bindFlag = false;
                }
            });
        }
    });
    
    // register
    var registerFlag = false;
    var isMobileRegister = false;
    $('body').delegate('#registerBtn', 'click', function(e){
        if (registerFlag) {
            return;
        }
        var loginName = $('#registerLoginName').val();
        var registerPwd = $('#registerOauthPwd').val();
        var registerName = $('#registerOauthName').val();
        var VCode = $('#registerCode').val();
        var checkFlag = true;
        if (!checkLoginName(loginName, 'registerLoginNameTip')) {
            checkFlag = false;
        }
        if (!checkPassword(registerPwd, 'registerOauthPwdTip')) {
            checkFlag = false;
        }
        if (!checkOauthName(registerName, 'registerOauthNameTip')) {
            checkFlag = false;
        }
        if (isMobileRegister) {
            if (!checkVerificationCode(VCode, 'registerOauthCodeTip')) {
                checkFlag = false;
            }
        }
        if (checkFlag) {
            registerFlag = true;
            var url = '';
            var data = {};
            if (isMobileRegister) {
                url = '/user/mobile-register-submit';
                data = {'mobile': loginName, 'verificationCode': VCode, 'password': registerPwd, 'userName': registerName};
            } else {
                url = '/user/register-submit';
                data = {'email': loginName, 'userPwd': registerPwd, 'userName': registerName};
            }
            $.ajax({
                url: url,
                data: data,
                dataType: 'json',
                success: function(data){
                    if (data.status == 1) {
                        bindFlag = true;
                        // send bind
                        $.ajax({
                            url: '/oauth/bind',
                            type: 'POST',
                            data: {'loginName': loginName, 'password': registerPwd},
                            dataType: 'json',
                            success: function (data) {
                                if (data.status == 1) {
                                    mobileName = data.data;
                                    if (isMobileRegister) {
                                        $('#content').css('visibility', 'hidden');
                                        $('#showInMobileEmail').click();
                                        $('body').off('click', '.md-overlay');
                                    } else {
                                        location.href = '/' + data.data;
                                    }
                                } else {
                                    alert(data.message);
                                }
                                bindFlag = false;
                            },
                            error: function () {
                                alert('The system is busy, please try again later!');
                                bindFlag = false;
                            }
                        });
                    } else {
                        alert(data.message);
                    }
                    registerFlag = false;
                },
                error: function(){
                    alert('The system is busy, please try again later!');
                    registerFlag = false;
                }
            });
        }
    });
    
    // send verification code
    var sendVerifiFlag = false;
    var intervalTime = 180; // 180s
    var currentSecond = intervalTime;
    var timer = null;
    $('body').delegate('#sendOauthVerifCode', 'click', function(e){
        if (sendVerifiFlag) {
            return;
        }
        
        var mobile = $('#registerLoginName').val();
        mobile = $.trim(mobile);
        if (mobile == '') {
            alert('Verification cannot be empty');
            return;
        }
        if (mobile.search(/^((13[0-9])|(15[^4,\D])|(18[0,5-9]))\d{8}$/) == -1) {
            alert('Invalid Mobile Number.')
            return;
        }
        
        var sendVerifyCode = $('#oauthregisterSendVCode').val();
        if ($.trim(sendVerifyCode).length != 4) {
            alert('Please input Verification Code.');
            return;
        }
        sendVerifiFlag = true;
        $.ajax({
            url: '/user/sendPhoneVerificationCode', 
            data: {'mobile': mobile, 'verifyCode': sendVerifyCode},
            type: 'POST',
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    // 发送验证码成功
                    timer = setInterval(function(){
                        if (currentSecond < 0) {
                            $('#sendOauthVerifCode').val('Get verification code');
                            window.clearInterval(timer);
                            currentSecond = 1;
                            currentSecond = intervalTime;
                            sendVerifiFlag = false;
                            return;
                        }
                        $('#sendOauthVerifCode').val(currentSecond + 's');
                        currentSecond--;
                    }, 1000);
                } else {
                    $('#oauthsendMobileVerifyCodeImg').attr('src', '/sendMobileRandomCode?q=' + Math.random())
                    sendVerifiFlag = false;
                    alert(data.message);
                }
            },
            error: function() {
                sendVerifiFlag = false;
            }
        })
    });

    var sendEmailVerfiFlag = false;
    $('body').delegate('#sendOauthEmailVerifyCode', 'click', function(e){
        if (sendEmailVerfiFlag) {
            return;
        }
        var email = $('#registerLoginName').val();

        var checkFlag = true;
        if (!checkLoginName(email, 'emailVCodeTip')) {
            checkFlag = false;
        }
        if (checkFlag) {
            sendEmailVerfiFlag = true;
            $.ajax({
                url: '/user/sendEmailVerificationCode',
                data: {'email': email},
                type: 'POST',
                dataType: 'json',
                success: function (data) {
                    if (data.status == 1) {
                        // 发送验证码成功
                        timer = setInterval(function () {
                            if (currentSecond < 0) {
                                $('#sendOauthEmailVerifyCode').val('Get verification code');
                                window.clearInterval(timer);
                                currentSecond = 1;
                                currentSecond = intervalTime;
                                sendEmailVerfiFlag = false;
                                return;
                            }
                            $('#sendOauthEmailVerifyCode').val(currentSecond + 's');
                            currentSecond--;
                        }, 1000);
                    } else {
                        sendEmailVerfiFlag = false;
                        alert(data.message);
                    }
                },
                error: function () {
                    sendEmailVerfiFlag = false;
                }
            })
        }

    })

    // validate
    $('body').delegate('#bindLoginName', 'blur', function(e){
        var item = $(this);
        checkLoginName(item.val(), 'bindLoginNameTip');
    });
    
    $('body').delegate('#bindPwd', 'blur', function(e){
        var item = $(this);
        checkPassword(item.val(), 'bindPwdTip');
    });
    
    $('body').delegate('#registerLoginName', 'blur', function(e){
        var item = $(this);
        if (checkLoginName(item.val(), 'registerLoginNameTip')) {
            if (item.val().search('@') == -1) {
                $('#mobileVerfiCode').show();
                isMobileRegister = true;
                return;
            }
        } 
        isMobileRegister = false;
        $('#registerOauthPwd').focus();
        $('#mobileVerfiCode').hide();
    });
    
    $('body').delegate('#registerOauthPwd', 'blur', function(e){
        var item = $(this);
        checkPassword(item.val(), 'registerOauthPwdTip');
    });
    
    $('body').delegate('#registerCode', 'blur', function(e){
        var item = $(this);
        checkVerificationCode(item.val(), 'registerOauthCodeTip');
    });

    $('body').delegate('#registerOauthName', 'blur', function(e){
        var item = $(this);
        checkOauthName(item.val(), 'registerOauthNameTip');
    });

    $('body').delegate('#oauthregisterSendVCode', 'blur', function(e){
        var sendVerifyCode = $('#oauthregisterSendVCode').val();
        if ($.trim(sendVerifyCode).length != 4) {
            $('#oauthregisterSendVCodeTip').html("Invalid characters")
        }else{
            $('#oauthregisterSendVCodeTip').html("<font style='color:green'>&nbsp;&nbsp;√</font>")
        }
    });
    
    function checkLoginName(loginName, tipId) {
        loginName = $.trim(loginName);
        if (loginName == '') {
            writeFailToTip(tipId, "Email Address/Mobile Number cannot be empty.");
            return false;
        }
        if (loginName.search(/^((13[0-9])|(15[^4,\D])|(18[0,5-9]))\d{8}$/) == -1 
                    && loginName.search(/^([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+\.(?:com|cn|net|org|edu)$/) == -1) {
            writeFailToTip(tipId, "Invalid Email Address/Mobile Number.");
            return false;
        }
        
        var flag = true;
        if (isRegister && loginName.search('@') != -1) {
            $.ajax({
                url: "/user/checkUserEmail",
                data: {"email": loginName},
                type: "post",
                dataType: "json",
                cache: false,
                async: false,
                success: function (result) {
                    if (result.status != 1) {
                        writeFailToTip('registerLoginNameTip', result.message);
                        flag = false;
                    }
                }
            });
        }

        if (flag) {
            writeSuccessToTip(tipId);
        }
        return flag;
    };
    
    function checkPassword(password, tipId) {
        if (password.length < 8) {
            writeFailToTip(tipId, "Password must be at least 8 characters.");
            return false;
        }
        writeSuccessToTip(tipId);
        return true;
    };
    
    function checkOauthName(name, tipId) {
        name = $.trim(name);
        if (name.length <= 0) {
            writeFailToTip(tipId, 'Name cannot be empty.');
            return false;
        }
        writeSuccessToTip(tipId);
        return true;
    };
    
    
    function checkVerificationCode(VCode, tipId) {
        if (VCode.length != 6 || isNaN(VCode)) {
            writeFailToTip(tipId, 'Invalid Verification Code.');
            return false;
        }
        writeSuccessToTip(tipId);
        return true;
    };
    
    function writeSuccessToTip(tipId) {
        $('#' + tipId).html('&nbsp;&nbsp;√');
        $('#' + tipId).removeClass('tip-error-text');
        $('#' + tipId).addClass('tip-success-text');
    };
    
    function writeFailToTip(tipId, text) {
        $('#' + tipId).html(text);
        $('#' + tipId).addClass('tip-error-text');
        $('#' + tipId).removeClass('tip-success-text');
    };
});