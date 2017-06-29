//Created by szj on 2016/4/14
App.Application = Backbone.Model.extend();
App.AdmissionDescription = App.Description.extend({
    urlRoot:'/admission/profile/description/'
});
App.AdmissionEdit =  App.Content.extend({
    setDescriptionModel:function(){
        return new App.AdmissionDescription({description: this.get('description')});
    }
});
App.AdmissionActivityEditDescription = App.Description.extend({
    urlRoot:'/admission/activity/modify',
    idAttribute:'activityId',
});
App.AdmissionActivityEdit =  App.Content.extend({
    idAttribute: "activityId",
    urlRoot:"/admission/activity/modify",
    setDescriptionModel:function(){
        return new App.AdmissionActivityEditDescription({description: this.get('description'),activityId:this.get('activityId')});
    }
});
App.AdmissionActivityEditList = Backbone.Collection.extend({model:App.AdmissionActivityEdit});
App.AdmissionActivityEditView = App.ActivityEditView.extend({
    urlRoot :"/admission/activity",
});
App.AdmissionActivityModuleEditView = App.ActivityModuleEditView.extend({
    childView: App.AdmissionActivityEditView,
    addActivity: function (e) {
        var activity = new App.AdmissionActivityEdit();
        var tagArray = new Array();
        $('.activity-item-tips li').each(function () {
            if ($(this).hasClass("on")) {
                var tag = {
                    title: $(this).val() + ''
                };
                tagArray.push(tag);
            }
        });
        var that = this;
        activity.set("title", filterXSS($('.title').val(),options));
        activity.set("startDate", $('.startDate').val());
        activity.set("endDate", $('.endDate').val());
        activity.set("activityTagList", tagArray);
        activity.save({}, {
            success: function (model, response) {
                if (response.status == 1) {
                    var activity = new App.AdmissionActivityEdit(response.data);
                    that.collection.add(activity);
                    App.vent.trigger("badge:add","activity");

                } else {
                    alert(response.message);
                }
            },
            complete: function () {
                $.scrollTo(that.$('.activity-container div:last'),500);
            },
            wait: true
        });
    },
});
App.AdmissionSchoolNameRankModuleEditView = App.BiographyModuleEditView.extend({
    template: '#schoolNameRank-template',
    events: {
        "click #updateNameBtn" : "updateNameAndRank",
    },
    updateNameAndRank: function() {
        window.profileData.biography.name = $('#schoolName').val();
        window.profileData.biography.schoolRank = $('#schoolRank').val();
        if (schoolName.length <= 0) {
            alert("Name can't be blank.");
            return;
        }
        var that = this;
        $.ajax({
            type: 'POST',
            url: '/admission/profile/biography/update',
            data: window.profileData.biography,
            dataType: 'json',
            success: function(data){
                if (data.status == 1) {
                    that.model.set("name", data.data.name);
                    that.model.set('schoolRank', data.data.schoolRank);
                    that.model.set('avatarUrl', data.data.avatarUrl);
                    that.model.set('schoolBgImg', data.data.schoolBgImg);
                    $('.edit-school-name .md-close').click();
                } else {
                    alert(data.message);
                }
            }
        })
    }
});
App.AdmissionBiographyModuleEditView = App.BiographyModuleEditView.extend({
    events: {
        "click .reveal-button2" : "saveBiography",
    },
    saveBiography : function(){
        window.profileData.biography.location = $('#schoolLocation').val();
        window.profileData.biography.webSite = $('#schoolWebSite').val();
        window.profileData.biography.phone = $('#schoolPhone').val();
        window.profileData.biography.linkEmail = $('#schoolLinkEmail').val();
        window.profileData.biography.biographyOther = $('#schoolOther').val();
        window.profileData.biography.linkFacebook = $('#linkFacebook').val();
        window.profileData.biography.linkTwitter = $('#linkTwitter').val();
        window.profileData.biography.linkInstagram = $('#linkInstagram').val();
        window.profileData.biography.area = $('#area').val();
        window.profileData.biography.province = $('#province').val();
        window.profileData.biography.city = $('#city').val();
        window.profileData.biography.schoolLevel = $('#schoolLevel').val();
        window.profileData.biography.lodge = $('#lodge').val();
        window.profileData.biography.settings = $('#settings').val();
        window.profileData.biography.schoolSex = $('#schoolSex').val();
        window.profileData.biography.schoolAcreage = $('#schoolAcreage').val();
        window.profileData.biography.newbornNum = $('#newbornNum').val();
        window.profileData.biography.teacherStudentRatio = $('#teacherStudentRatio').val();
        if (window.profileData.biography.area == '-1') {
            alert('Please select the district of school.');
            return;
        }
        if (window.profileData.biography.schoolLevel == '-1') {
            alert('Please select the level of school.');
            return;
        }
        if (window.profileData.biography.lodge == '-1') {
            alert('Please select the type of school.');
            return;
        }
        if (window.profileData.biography.settings == '-1') {
            alert('Please select the settings of school.');
            return;
        }
        if (window.profileData.biography.schoolSex == '-1') {
            alert('Please select the gender specific of school.');
            return;
        }

        var that = this;
        $.ajax({
            type: "POST",
            url: '/admission/profile/biography/update',
            data: window.profileData.biography,
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    that.model.set("location", data.data.location);
                    that.model.set("webSite", data.data.webSite);
                    that.model.set("phone", data.data.phone);
                    that.model.set("linkEmail", data.data.linkEmail);
                    that.model.set("biographyOther", data.data.biographyOther);
                    that.model.set("area", data.data.area);
                    that.model.set("province", data.data.province);
                    that.model.set("city", data.data.city);
                    that.model.set("schoolLevel", data.data.schoolLevel);
                    that.model.set("settings", data.data.settings);
                    that.model.set("schoolSex", data.data.schoolSex);
                    that.model.set("schoolAcreage", data.data.schoolAcreage);
                    that.model.set("newbornNum", data.data.newbornNum);
                    that.model.set("teacherStudentRatio", data.data.teacherStudentRatio);
                    $('#school-biography .md-close').click();
                } else {
                    alert(data.message);
                }
            }
        });
    }
});
App.AdmissionApplicationModuleEditView = App.BiographyModuleEditView.extend({
    template: '#school-application-tmpl',
    events: {
        "click .reveal-button2" : "saveApplication",
    },
    saveApplication : function(){
        window.profileData.application.ranking = $('#ranking').val();
        window.profileData.application.ED = $('#ED').val();
        window.profileData.application.issat = $('#issat').val();
        window.profileData.application.toeflscore = $('#toeflscore').val();
        window.profileData.application.ieltsScore = $('#ieltsScore').val();
        window.profileData.application.middlesatscore = $('#middlesatscore').val();
        window.profileData.application.middletoeflscore = $('#middletoeflscore').val();
        window.profileData.application.middlegpascore = $('#middlegpascore').val();
        window.profileData.application.specialty = $('#schoolSpecialty').val();
        window.profileData.application.requirement = $('#schoolRequirement').val();
        window.profileData.application.tuitionUrl = $('#schoolTuitionUrl').val();
        window.profileData.application.admissionEmail = $('#schoolAdmissionEmail').val();
        window.profileData.application.applicationUrl = $('#schoolApplicationUrl').val();
        window.profileData.application.docTitle = $('#schoolDocTitle').val();
        window.profileData.application.ourStudentUrl = $('#schoolOurStudentUrl').val();
        window.profileData.application.visitUrl = $('#schoolVisitUrl').val();
        if (!window.emailReg.test(window.profileData.application.admissionEmail) && $.trim(window.profileData.application.admissionEmail).length > 0) {
            alert('Admission office email appears invalid.');
            return;
        }
        if (window.profileData.biography.issat == '-1') {
            alert('Please select the sat need of school.');
            return;
        }
        if (window.profileData.biography.ED == '-1') {
            alert('Please select the early admission of school.');
            return;
        }

        var that = this;
        $.ajax({
            type: "POST",
            url: '/admission/profile/application/update',
            data: window.profileData.application, 
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    for (var key in data.data) {
                        that.model.set(key, data.data[key]);
                    }
                    $('#school-application .md-close').click();
                } else {
                    alert(data.message);
                }
            }
        });
    }
});
