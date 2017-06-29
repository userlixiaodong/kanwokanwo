/**
 * Created by liuruichao on 16/5/27.
 */
$(function(){
    
    
    $('#schoolNameAndRank').delegate('.follow', 'click', function(){
        var loginUserId = window.loginUserId;
        var schoolId = window.schoolId;
        var isFollow = window.isFollow;
        if (loginUserId == schoolId) {
            return;
        }
        if (!loginUserId) {
            alert('Please login');
            return;
        }
        var url = ''
        if (isFollow) {
            url = '/user/unfollow';
        } else {
            url = '/user/follow';
        }
        
        var followCount = parseInt($('#followCountSpan').html());
        $.ajax({
            url: url,
            type: 'POST',
            data: {'ownerId': schoolId},
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    var imgSrc = '';
                    if (isFollow) {
                        $('#followImg').css('color', 'white');
                        followCount--;
                    } else {
                        $('#followImg').css('color', 'red');
                        followCount++;
                    }
                    $('#followCountSpan').html(followCount);
                    window.isFollow = !isFollow;
                } else {
                    alert(data.message);
                }
            }
        })
    });
    $('#informationPage').delegate('.feel-good', 'click', function(){
        var loginUserId = window.loginUserId;
        var schoolId = window.schoolId;
        var item = $(this);
        var isFavor = item.attr('data-favor');
        var favorCount = parseInt(item.find('span').html());
        var informationId = item.attr('data-id');
        if (!loginUserId) {
            alert('Please login');
            return;
        }
        if (loginUserId == schoolId) {
            return;
        }
        var url = '';
        if (isFavor == 'true') {
            url = '/user/information/unfavor';
        } else {
            url = '/user/information/favor';
        }
        $.ajax({
            type: 'POST',
            url: url,
            data: {'informationId': informationId},
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    if (isFavor == 'true') {
                        item.removeAttr('style');
                        item.attr('data-favor', 'false');
                        --favorCount;
                    } else {
                        item.css('color', '#1BB38C');
                        item.attr('data-favor', 'true');
                        ++favorCount;
                    }
                    item.find('span').html(favorCount);
                } else {
                    alert(data.message);
                }
            }
        });
    });
});
App.AdmissionSchoolNameRankModuleView = App.BiographyModuleSimpleView.extend({
    template: '#schoolNameRank-template',
    events: {
        "click #updateNameBtn" : "updateNameAndRank",
    },
    updateNameAndRank: function() {
        var schoolName = $('#schoolName').val();
        var schoolRank = $('#schoolRank').val();
        if (schoolName.length <= 0) {
            alert("Name can't be blank.");
            return;
        }
        var that = this;
        $.ajax({
            type: 'POST',
            url: '/admission/profile/schoolName/update',
            data: {'name': schoolName, 'rank': schoolRank},
            dataType: 'json',
            success: function(data){
                if (data.status == 1) {
                    that.model.set("name", data.data.name);
                    that.model.set('schoolRank', data.data.schoolRank);
                    $('.edit-school-name .md-close').click();
                } else {
                    alert(data.message);
                }
            }
        })
    }
});
App.AdmissionBiographyModuleView = App.BiographyModuleSimpleView.extend({
    events: {
        "click .reveal-button2" : "saveBiography",
    },
    saveBiography : function(){
        var location = $('#schoolLocation').val();
        var webSite = $('#schoolWebSite').val();
        var phone = $('#schoolPhone').val();
        var email = $('#schoolLinkEmail').val();
        var other = $('#schoolOther').val();
        var linkFacebook = $('#linkFacebook').val();
        var linkTwitter = $('#linkTwitter').val();
        var linkInstagram = $('#linkInstagram').val();
        var that = this;
        $.ajax({
            type: "POST",
            url: '/admission/profile/biography/update',
            data: {'location': location, 'webSite': webSite, 'phone': phone, 'linkEmail': email, 'other': other, 'linkFacebook': linkFacebook, 'linkTwitter': linkTwitter, 'linkInstagram': linkInstagram},
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    that.model.set("location", data.data.location);
                    that.model.set("webSite", data.data.webSite);
                    that.model.set("phone", data.data.phone);
                    that.model.set("linkEmail", data.data.linkEmail);
                    that.model.set("biographyOther", data.data.biographyOther);
                    $('#school-biography .md-close').click();
                } else {
                    alert(data.message);
                }
            }
        });
    }
});
App.SchoolApplication = Backbone.Model.extend();
App.AdmissionApplicationModuleView = App.BiographyModuleSimpleView.extend({
    template: '#school-application-tmpl',
});