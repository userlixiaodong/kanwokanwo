//window.App = App = require("schoolMyProfile_module");
//Created by szj on 2016/4/14.
require("stuMyProfile_module");
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
App.AdmissionBiographyModuleEditView = App.BiographyModuleEditView.extend({
    saveBiography : function(){
        var admissionName = $('#admissionName').val();
        if (admissionName == '') {
            alert("Name can't be blank");
            return;
        }
        var college = $('#college').val();
        if (college == '') {
            alert("College can't be blank");
            return;
        }
        var location = $('#location').val();
        var position = $('#position').val();
        var webSite = $('#webSite').val();
        var that = this;
        $.ajax({
            type: "POST",
            url: '/admission/profile/updateBiography',
            data: {'admissioName':admissionName, 'location':location, 'college':college, 'position':position, 'webSite':webSite},
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    that.model.set("name", data.data.name);
                    that.model.set("location", data.data.location);
                    that.model.set("currentSchool", data.data.currentSchool);
                    that.model.set("position", data.data.position);
                    that.model.set("webSite", data.data.webSite);
                    if($.trim(location) != "" && $.trim(college) != "" && $.trim(position) != ""  && $.trim(webSite) != ""
                        && $.trim(admissionName) != ""){
                        App.vent.trigger("badge:add","biography");
                    }else{
                        App.vent.trigger("badge:remove","biography");
                    }
                }
            }
        });
    }
})