/**
 * Created by liuruichao on 16/6/7.
 */
_.templateSettings = {
    evaluate: /<@([\s\S]+?)@>/g,
    interpolate: /<@=([\s\S]+?)@>/g,
    escape: /<@-([\s\S]+?)@>/g
};
var App = new Mn.Application();
options = {whiteList:[], stripIgnoreTag: true};
//------------------ContentBase Models-----------------------------------------
App.Description = Backbone.Model.extend({
    defaults:{
        description : ''
    },
    urlRoot:'/description/'
});

App.Material = Backbone.Model.extend({
});
App.MaterialList = Backbone.Collection.extend({model: App.Material});
App.Content = Backbone.Model.extend({
    initialize: function () {
        var description = this.get('description');
        var suffix = this.get('url');
        if (description || description =="") {
            //this.description = new App.Description($.extend({description: this.get('description')},{url:"/description"+suffix}));
            this.description = this.setDescriptionModel();
            this.unset('description');
        }
        var materials = this.get('materials');
        if (materials) {
            //this.materials = new App.MaterialList($.extend(this.get('materials'),{url:"/materials"+suffix}));
            this.materials = new App.MaterialList(this.get('materials'));
            this.unset('materials');
        }
    },
    setDescriptionModel:function(){
        return new App.Description({description: this.get('description')});
    }
});
App.Biography = Backbone.Model.extend();
App.ExamRecordList = Backbone.Collection.extend();
App.RemarkDict = Backbone.Model.extend({
    addRemark: function (remark) {
        var map = _.clone(this.get("remarkMap"));
        if (!(remark.title in map)) {
            var value = [];
            value.push(remark);
            map[remark.title] = value;
        } else {
            map[remark.title].push(remark);
        }
        this.set({remarkMap: map});
    },
    initialize: function () {
        var remarkList = this.get("remarkList");
        this.set({"remarkMap": {}});
        var outer = this;
        _.each(remarkList, function (remark, index) {
            outer.addRemark(remark);
        });
        this.unset("remarkList");
    },
    saveRmark: function () {
        var that = this;
        var impressionContent = $("#impression").val();
        if (currentUserStudentProfileId == "") {
            alert("please login");
            return;
        }
        if ($.trim(impressionContent) != "") {
            if ($.trim(currentUserStudentProfileId) == $.trim(targetStudentProfileId)) {
                alert("you can not fill impression for yourself");
                return;
            }
            $.ajax({
                type: "POST",
                url: '/addRemark',
                data: {"fromUser": currentUserStudentProfileId, "toUser": targetStudentProfileId, "impression": impressionContent},
                dataType: 'json',
                success: function (data) {
                    if (data.status == 1) {
                        that.addRemark(data.data);
                    }
                }
            });

        } else {
            alert("please fill impression");
        }
    }
});
//------------------ContentBase Views-----------------------------------------
App.MaterialSimpleView = Marionette.ItemView.extend({
    template: '#material-template',
    tagName:"div",
    className: "col-lg-4 col-xs-6",
    attributes:{
        draggable:"true"
    },
    initialize: function(){
        if(this.model.get("type") == "VIDEO"){
            this.$el.addClass("videoMedia");
        }
    }
});
App.MaterialListSimpleView = Marionette.CollectionView.extend({
    childView:App.MaterialSimpleView,
    className:'sortable',
    filter: function (child, index, collection, tag) {
        if(this.isMore){
            return true;
        }
        else if((this._parentLayoutView().$el.hasClass('portfolioMedia') && index < 6) || index < 4){
            return true;
        }
        return false;
    },
    isMore: false
});
App.DescriptionSimpleView = Marionette.ItemView.extend({
    template: '#description-template'
});
//Description $ material 整合CompositeView，处理Description事件
App.DescriptionMaterialSimpleView = Marionette.LayoutView.extend({
    template: '#description-material-layout-template',
    regions:{
        descriptionRegion:".description",
        materialListRegion:".materialList"
    },
    initialize: function () {
        this.materials = this.model.materials;
        if (this.model.description){
            this.description = this.model.description;
            //console.log(this.description.get('id'));
        }
        this.module = this.options.module;
        this.options = null;
    },
    onRender:function(){
        this.descriptionRegion.show(new App.DescriptionSimpleView({model:this.description}));
        this.materialListRegion.show(new App.MaterialListSimpleView({collection:this.materials}));
        this.updateMlBtnDisplay();
    },
    ui:{
        "mlBtn": ".less-more-button"
    },
    isMore: false,
    events: {
        "click @ui.mlBtn": "mlSwitch" //is the same as "click .dog":
    },
    mlSwitch: function(e){
        var materialListView = this.materialListRegion.currentView;
        materialListView.isMore = !materialListView.isMore;
        if(materialListView.isMore){
            this.$el.find(".less-more-button").html("less");
        }else{
            this.$el.find(".less-more-button").html("more");
        }
        materialListView.render();
    },
    updateMlBtnDisplay:function(){
        //portfolio 大于6个material才显示more 其他大于4个material 显示more
        if(this.$el.hasClass('portfolioMedia')){
            if(this.materials.size() > 6){
                this.$el.find(".less-more-button").show();
            }else{
                this.$el.find(".less-more-button").hide();
            }
        }else{
            if(this.materials.size() > 4){
                this.$el.find(".less-more-button").show();
            }else{
                this.$el.find(".less-more-button").hide();
            }
        }
    }
});
App.MyVideoModuleSimpleView = Marionette.ItemView.extend({template: '#myVideo-template'});
App.BiographyModuleSimpleView = Marionette.ItemView.extend({template: '#biography-template'});
App.ExamRecordModuleSimpleView = Marionette.LayoutView.extend({
    el:"#examRecord",
    template:"#examRecord-layout-template",
    regions:{
        summary:"#examRecordSummary",
        detail:"#examRecordDetail"
    },
    onRender:function(){
        this.summary.show(new App.ExamRecordSummarySimpleView({collection:this.collection}));
        this.detail.show(new App.ExamRecordDetailSimpleView({collection:this.collection}));
    }
});
App.ExamRecordSummarySimpleView = Marionette.ItemView.extend({
    template: '#examRecordSummarySimpleView-template'});
App.ExamRecordDetailSimpleView = Marionette.ItemView.extend({
    template: '#examRecordDetailSimpleView-template'});
App.RemarkListView = Marionette.ItemView.extend({
    template: '#remarkList_template',
    modelEvents: {
        "change:remarkMap": "onRemarkMapChange"
    },
    onRemarkMapChange: function () {
        this.render();
    },
    onRender: function () {
        $(".friend-impression-list li").each(function (index, element) {
            var colorCode = randomColor;
            $(element).css("background-color", colorCode);
        });

        $(".friend-impression-list li").hover(function () {
            $('.tips').hide();
            var tip = $(this).find('.tips');
            tip.find('.randomColor').css("background-color", $(this).css("background-color"));
            tip.show();
            var that = this;
            setTimeout(function(){
                $(that).click(function () {
                    $(that).find('.tips').toggle();
                });
            }, 0);
            //
            //var tip = tip.find('.randomColor');
            //console.log(tip);
            //tip.css("background-color", $(this).css("background-color"));
            //tip.toggle();
        }, function() {
            $(this).unbind('click');
        });
    }

});
//------------------Activity Models-----------------------------------------
App.activityTags = ["招生说明", "转学", "学生毕业去向", "参观学校", "历年招生数据", "学生宿舍", "校园周边环境", "常见问题", "全部"];
App.activityTagsModel = Backbone.Model.extend({
    defaults:{
        activityTags:App.activityTags,
        count:[0,0,0,0,0,0,0,0,0]
    }
});
App.Activity = App.Content.extend({
    /*idAttribute: "activityId",
    urlRoot:"/activity/modify",*/
});
App.ActivityList = Backbone.Collection.extend({model:App.Activity});
App.ActivityModule = Backbone.Model.extend({
    initialize: function(){
        this.activityTags = App.activityTags;
        var activities = this.get("activities");
        if(activities){
            this.collection = new App.ActivityList(activities);
        }
    }
});
//------------------Activity Views-----------------------------------------
App.ActivityListTagsView = Marionette.CollectionView.extend({
    initialize:function(){}
});
App.ActivityDetailSimpleView = Marionette.ItemView.extend({
    template:"#activityDetail_template"
});
App.ActivitySimpleView= Marionette.LayoutView.extend({
    template:"#activityLayout_template",
    regions: {
        detail: ".activityDetail",
        descriptionMaterial: ".activityDescriptionMaterial"
    },
    onRender: function(){
        // react to when a view has been shown
        var descriptionMaterialSimpleView = new App.DescriptionMaterialSimpleView({model:this.model});
        delete this.options['description'];
        delete this.options['materials'];
        var activityDetailSimpleView = new App.ActivityDetailSimpleView({model:this.model});
        this.detail.show(activityDetailSimpleView);
        this.descriptionMaterial.show(descriptionMaterialSimpleView);
    }
});
App.ActivityModuleView = Marionette.CompositeView.extend({
    el:"#actList ",
    model: new App.activityTagsModel(),
    template:"#activityTagList_template",
    childView: App.ActivitySimpleView,
    initialize:function(){
        var count = this.model.get("count");
        count[count.length-1] = this.collection.size();
        this.collection.each(function(activity){
            var tags = activity.get('activityTagList');
            _.each(tags, function(item, index){
                count[(item.title)]++;
            })
        });
        this.model.set({"count":count});
    },
    ui:{
        "tagButton": "li"
    },
    tag:App.activityTags.length -1,
    filter: function (child, index, collection, tag) {
        var outer = this;
        if(outer.__proto__.tag == App.activityTags.length-1){
            return true;
        }
        else{
            var flag = false;
            _.each(child.get('activityTagList'),function(item, index){
                if(parseInt(item.title) == outer.__proto__.tag){
                    flag = true;
                    return false;
                }
            });
            return flag;
        }
        return false;
    },
    events: {
        "click @ui.tagButton": "tagSwitch" //is the same as "click .dog":
    },
    tagSwitch: function(e){
        var targetLi = $(e.target).parents('li');
        if(!targetLi.hasClass("on") && targetLi.is('li')) {
            targetLi.siblings().removeClass("on");
            targetLi.addClass("on");
            var index = 0;
            if (targetLi.hasClass('col-lg-2')) {
                var text = $(targetLi).find('p').html();
                for (var i = 0; i < App.activityTags.length; i++) {
                    index = i + 1;
                    if (text == App.activityTags[i]) {
                        break;
                    }
                }
                var actListTargetLi = $('#actList .activity-item li:eq(' + (index) + ')');
                actListTargetLi.siblings().removeClass("on");
                actListTargetLi.addClass("on");
            } else {
                index = targetLi.index();
            }
            if (index == 0) {
                this.__proto__.tag = App.activityTags.length - 1;
            } else {
                this.__proto__.tag = index - 1;
            }
            this._renderChildren();
        }
    }
});

App.Information = Backbone.Model.extend();
App.InformationList = Backbone.Collection.extend({Model: App.Information});
App.SchoolInformationListModuleView = Backbone.View.extend({
    dataList: new App.InformationList(),
    informationUrl: '/user/information/list/{schoolId}/{page}.json',
    el: '#informationList',
    template: _.template($('#informationItem-template').html()),
    toPage: function(pageIndex) {
        var url = this.informationUrl.replace('{page}', pageIndex).replace('{schoolId}', window.schoolId);
        var that = this;
        $.ajax({
            url: url,
            data: null,
            dataType: 'json',
            success: function(data) {
                if (data.status == 1) {
                    that.setListData(data.data.data);
                    that.render();
                    window.pg.page = pageIndex;
                    window.pg.pageCount = data.data.totalPage;
                    window.pg.printHtml('divPage');
                    $('#informationContent').val('');
                    bindRebox();
                    bindSlideToggle();
                } else {
                    alert(data.message);
                }
            }
        });
    },
    setListData: function(data) {
        this.dataList = new App.InformationList();
        if (data && data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                this.dataList.add(new App.Information(data[i]));
            }
        }
    },
    render: function(){
        var html = this.template({'informationList': this.dataList.toJSON()});
        this.$el.html(html);
    }
});

//模块输出
if ( typeof module === "object" && module && typeof module.exports === "object" ) {
    module.exports = App;
}
var limits = 150;
function limitWordsCounts(result) {
    if (result.val().length > limits) {
        result.val(result.val().substr(0, limits))
    }
    var surplus = limits - result.val().length
    result.next().children("span").text(surplus);
}
function randomColor() {
    var colorList = ["#EA4704", "#FE7747", "#FFE337", "#6BF1CE", "#06C7B2", "#F48A94", "#83A602", "#60369C"];
    var random = parseInt(Math.random() * 8);
    return colorList[random];
}