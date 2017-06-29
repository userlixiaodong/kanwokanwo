require("../../style/jquery.ui.datepicker.css");
require("jquery_scrollTo");
require("ajaxfileupload");
require("xss");
require("jquery_ui");
window.App = App = require("stuViewProfile_module");

imgTypes = ['.jpg', '.jpeg', '.png', '.gif'];
documentTypes = ['.doc', '.docx', '.pdf', '.txt'];
videoTypes = ['.mp4', '.mov', '.mkv', '.flv', '.3gp', '.wmv', '.asf', '.webm', '.mpg', '.avi'];
App.ActivityEditDescription = App.Description.extend({
    urlRoot: '/activity/modify',
    idAttribute: 'activityId',
});
App.ActivityEdit = App.Content.extend({
    idAttribute: "activityId",
    urlRoot: "/activity/modify",
    setDescriptionModel: function () {
        return new App.ActivityEditDescription({description: this.get('description'), activityId: this.get('activityId')});
    }
});
App.ActivityEditList = Backbone.Collection.extend({model: App.ActivityEdit});

App.DescriptionEditView = App.DescriptionSimpleView.extend({
    template: '#description-edit-template',
    ui: {
        'editDescription': '.modalLink',
        'descriptionSubmitBtn': '#descriptionSubmit'
    },
    events: {
        'click @ui.editDescription': 'editDescription',
        'click @ui.descriptionSubmitBtn': 'descriptionSubmit'
    },
    modelEvents: {
        "change": "modelChanged"
    },
    modelChanged: function () {
        this.render();
    },
    descriptionSubmit: function () {
        var that = this;
        var dataModule = this.model.module.toUpperCase();
        if (dataModule != "ACTIVITY")
            this.model.id = dataModule;
        var descriptionContent = $.trim($("#descriptionContent").val());
        this.model.set({description: descriptionContent});
        this.model.save({}, {
            success: function () {
                that.triggerMethod("description:update");
            }
        });
        $(".md-close").trigger("click");
    },
    editDescription: function () {
        this.$el.append("<div class='description-dialog'></div>");
        new App.PopupDialogView({template: '#editDescription-template', el: this.$('.description-dialog')}).render();
        this.$('#descriptionContent').val(this.model.get('description'));
        var surplus = limits - $("#descriptionContent").val().length;
        $("#descriptionContent").next().children().text(surplus);
    }
});

App.MaterialEditView = App.MaterialSimpleView.extend({
    template: '#material-edit-template',
    ui: {
        controlsLayer: ".controls"
    },
    modelEvents: {
        "change": "modelChanged"
    },
    modelChanged: function () {
        this.render();
    },
    events: {
        'mouseenter': 'mouseEnter',
        'mouseleave': 'mouseLeave',
        'click .glyphicon-trash': 'deleteMaterial',
        'click .controls-edit': 'editMaterial',
        'click #materialDescriptionSubmit': 'materialDescriptionSubmit'
    },
    mouseEnter: function (e) {
        this.$el.find('.controls').animate({'opacity': '1'}, 200);
    },
    mouseLeave: function (e) {
        this.$el.find('.controls').animate({'opacity': '0'}, 200);
    },
    deleteMaterial: function (e) {
        var that = this;
        if (confirm("Are you sure you want to delete this item? This action can not be undone.")) {
            var module = this.options.module.toUpperCase();
            var div = e.target.closest('div[draggable]');
            var index = $(div).parent().children(['div[draggable]']).index(div);
            $.ajax({
                type: "POST",
                url: '/material/delete',
                data: {module: module, seq: index, activityId: this.options.activityId},
                dataType: 'json',
                success: function (data) {
                    if (data.status == 1) {
                        that.model.destroy();
                    }
                }
            });

        }
    },
    materialDescriptionSubmit: function (e) {
        var that = this;
        var title = $("#materialTitle").val();
        var div = e.target.closest('div[draggable]');
        var index = $(div).parent().children(['div[draggable]']).index(div);
        var module = this.options.module.toUpperCase();
        $.ajax({
            type: "POST",
            url: '/material/updateMaterialTitle',
            data: {title: title, index: index, module: module, activityId: this.options.activityId},
            dataType: 'json',
            success: function (data) {
                if (data.status == 1) {
                    that.model.set({title: data.data})
                }
            }
        });
        $(".md-close").trigger("click");
    },
    editMaterial: function () {
        this.$el.append("<div class='material-dialog'></div>");
        new App.PopupDialogView({template: '#updateFileTitle-template', el: this.$('.material-dialog')}).render();
        this.$('#materialTitle').val(this.model.get('title'));
        var surplus = limits - $("#materialTitle").val().length;
        $("#materialTitle").next().children().text(surplus);
    },
    onRender: function () {

    }
});
App.MaterialListEditView = App.MaterialListSimpleView.extend({
    childView: App.MaterialEditView,
    collectionEvents: {
        "add remove": "materialListChange"
    },
    materialListChange: function () {
        this.triggerMethod("materialList:update");
    },
    childViewOptions: function (model, index) {
        return {
            module: this.collection.module,
            activityId: this.collection.activityId
        }
    },
    filter: function (child, index, collection, tag) {
        return true;
    }
});

App.DescriptionMaterialEditView = App.DescriptionMaterialSimpleView.extend({
    template: "#description-material-edit-layout-template",
    initialize: function () {
        this.activityId = this.options.model.get("activityId");
        this.constructor.__super__.initialize.apply(this, arguments);
    },
    childEvents: {
        'description:update': 'isBadgeUpdate',
        'materialList:update': 'isBadgeUpdate'
    },
    isBadgeUpdate: function () {
        if (this.module == "activity")
            return;
        else if (this.module == "portfolio") {
            if (this.materialListRegion.currentView.collection.size() > 0)
                App.vent.trigger("badge:add", this.module);
            else
                App.vent.trigger("badge:remove", this.module);

        } else {
            if (this.descriptionRegion.currentView.model.get("description") != '' || this.materialListRegion.currentView.collection.size() > 0)
                App.vent.trigger("badge:add", this.module);
            else
                App.vent.trigger("badge:remove", this.module);
        }

    },
    behaviors: {
        UploadBehavior: {}
    },
    onRender: function () {
        if (this.materials) {
            this.materials.module = this.module;
            this.materials.activityId = this.activityId;
        }
        if (this.description) {
            this.description.module = this.module;
        }
        this.descriptionRegion.show(new App.DescriptionEditView({model: this.description}));
        this.materialListRegion.show(new App.MaterialListEditView({collection: this.materials}));
        this.addRegions({modalDialog: '.modal-dialog'});
    },

});

App.BiographyModuleEditView = App.BiographyModuleSimpleView.extend({
    template: '#biographyEdit-template',
    events: {
        "click .modifyBiography": "popModifyModal",
        "click .reveal-button": "saveBiography"
    },
    modelEvents: {
        "change": "modelChanged"
    },
    modelChanged: function () {
        this.render();
    },
    popModifyModal: function () {
        this.$el.append("<div class='editBiography-dialog'></div>");
        new App.PopupDialogView({template: '#biographyEditModal_template', el: this.$('.editBiography-dialog'), model: this.model}).render();
    },
    saveBiography: function () {
        var studentName = $("#studentName").val();
        var location = $("#location").val();
        var currentSchool = $("#currentSchool").val();
        var graduationYear = $("#graduationYear").val();
        var hobby = $("#hobby").val();
        if ($.trim(studentName) == "") {
            alert("please input name!");
            return false;
        }
        var that = this;
        $.ajax({
            type: "POST",
            url: '/updateBiography',
            data: {studentName: studentName, location: location, currentSchool: currentSchool, graduationYear: graduationYear, hobby: hobby},
            dataType: 'json',
            success: function (data) {
                if (data.status == 1) {
                    that.model.set("name", data.data.name);
                    that.model.set("location", data.data.location);
                    that.model.set("currentSchool", data.data.currentSchool);
                    that.model.set("graduation", data.data.graduation);
                    that.model.set("hobby", data.data.hobby);
                    //TODO 填写完成基本信息后点亮勋章
                    if ($.trim(location) != "" && $.trim(currentSchool) != "" && $.trim(graduationYear) != "" && $.trim(hobby) != ""
                        && $.trim(studentName) != "") {
                        App.vent.trigger("badge:add", "biography");
                    } else {
                        App.vent.trigger("badge:remove", "biography");
                    }
                }
            }
        });
    }

})

var UploadBehavior = Marionette.Behavior.extend({
    ui: {
        'uploadBtn': '.upload',
        'chooseTypeBtn': '.subview a',
        'uploadSubmitBtn': '#uploadVideoSave, #uploadImgSave, #uploadDocSave'
    },
    childrenEvents: {
        'click #uploadImgSave': 'uploadSubmit'
    },
    events: {
        'click @ui.uploadBtn': 'chooseTypeModalShow',
        'click @ui.chooseTypeBtn': 'chooseType',
        'click @ui.uploadSubmitBtn': 'uploadSubmit'
    },
    chooseTypeModalShow: function () {
        this.view.modalDialog.show(new App.PopupDialogView({template: '#chooseFileType-template'}));
    },
    chooseType: function (e) {
        //this.modalDialog.empty();
        this.view.modalDialog.reset();
        this.view.currentModal = $(e.target.closest(".modalLink")).attr("data-modal");
        this.view.modalDialog.show(new App.PopupDialogView({template: '#' + this.view.currentModal + '-template'}));
        $(".text-right").children().text(limits);
    },
    uploadSubmit: function (e) {
        var type = this.view.currentModal;
        var url = '/material/upload';
        var file = this.view.$el.children().eq(0).find('input');
        if (type != "VIDEO") {
            url = '/material/uploadMultiple';
            var uploadFileList = file[0].files;
            if (uploadFileList.length <= 0) {
                alert('please choose file!');
                return;
            }
        }
        var module = this.view.$el.closest(".media-item").attr("data-module");
        //this.materials.currentView.collection.add(material);
        var title = this.view.$el.children().eq(0).find('textarea').val();
        //material.save(); //调用save方法，触发post
        var that = this.view;
        uploadingCover(module, this.view.activityId)
        $.ajaxFileUpload({
            url: url,
            secureuri: false,
            fileElementId: file.attr('id'),//file标签的id
            dataType: 'json',//返回数据的类型
            data: function () {
                //一同上传的数据
                var data = {'materialType': type, 'module': module, 'title': title, 'activityId': that.activityId};
                if (that.activityId) {
                    $.extend(data, {'activityId': that.activityId});
                }
                return data;
            }(),
            async: true,
            success: function (data) {
                if (data.status == 1) {
                    if (type != "VIDEO") {
                        _.each(data.data, function (item, index) {
                            that.materialListRegion.currentView.collection.add(item);
                        });
                    } else {
                        that.materialListRegion.currentView.collection.add(data.data);
                    }

                    //var resultList = data.data;
                    //for (var i = 0; i < resultList.length; i++) {
                    //    addMaterial(module, resultList[i]);
                    //    renderMaterial(module, activityId, resultList[i]);
                    //}
                } else {
                    alert(data.message);
                }
            },
            error: function (data, status, e) {
                alert("The system is busy, please try again later!");
            },
            complete: function () {
                currentView = that.view;
                $("body").find(".coverDiv").remove();
                $.scrollTo(that.$('.sortable div:last'), 500);
            }
        });
        $(".md-close").trigger("click");
    }
});
App.Behaviors = {};
Marionette.Behaviors.behaviorsLookup = function () {
    return App.Behaviors;
}
App.Behaviors.UploadBehavior = UploadBehavior;

App.PopupDialogView = Marionette.ItemView.extend({
    events: {
        'click .md-close': 'closePopup'
    },
    closePopup: function () {
        this.destroy();
        $('.md-overlay').removeClass('md-overlay-show');
    },
    initialize: function () {

    },
    onRender: function () {
        $(".date").datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'M yy',
            showButtonPanel: true,
            onClose: function (dateText, inst) {
                $(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
            }
        });
        $('.activity-item-tips li').each(function () {
            $(this).click(function () {
                if ($(this).hasClass("on")) {
                    $(this).removeClass("on");
                } else {
                    $(this).addClass("on");
                }
            })

        })
    }
});

App.ActivityDetailEditView = App.ActivityDetailSimpleView.extend({
    template: "#activityDetail_template",
    events: {
        "click .col-xs-10 a": "editActivity",
        "click .modifyActivity": "modifyActivity",
    },
    modelEvents: {
        "change": "modelChanged"
    },
    modelChanged: function () {
        this.render();
    },
    editActivity: function (e) {
        this.$el.append("<div class='editActivity-dialog'></div>");
        new App.PopupDialogView({template: '#editActivity_template', el: this.$('.editActivity-dialog'), model: this.model}).render();
    },
    modifyActivity: function (e) {
        var tagArray = new Array();
        this.$el.find('.activity-item-tips li').each(function () {
            if ($(this).hasClass("on")) {
                var tag = {
                    title: $(this).val() + ''
                };
                tagArray.push(tag);
            }
        })
        this.model.set("title", filterXSS($('.title').val(), options));
        this.model.set("startDate", $('.startDate').val());
        this.model.set("endDate", $('.endDate').val());
        this.model.set("activityTagList", tagArray);
        this.model.save();
        $(".md-close").trigger("click");
    },
});
App.ActivityEditView = App.ActivitySimpleView.extend({
    attributes: function () {
        return {
            activityId: this.model.get('activityId')
        };
    },
    onRender: function () {
        // react to when a view has been shown
        //this.model.description.set({activityId:this.model.get('activityId')});
        var descriptionMaterialEditView = new App.DescriptionMaterialEditView({model: this.model, module: "activity"});
        delete this.options['description'];
        delete this.options['materials'];
        var activityDetailEditView = new App.ActivityDetailEditView({model: this.model});
        this.detail.show(activityDetailEditView);
        this.descriptionMaterial.show(descriptionMaterialEditView);
    },
    events: {
        "click .up": "up",
        "click .down": "down",
        "click .deleteActivity": "deleteActivity",
    },
    urlRoot: '/activity',
    up: function (e) {
        $.ajax({
            url: this.urlRoot + "/changeActivityLocation",
            data: {
                activityId: this.model.get('activityId'),
                dest: -1
            },
            dataType: "json",
            success: function (result) {
                if (result.status == 1)
                    App.exchange($(e.delegateTarget), $(e.delegateTarget).prev())
            }
        })

    },
    down: function (e) {
        $.ajax({
            url: this.urlRoot + "/changeActivityLocation",
            data: {
                activityId: this.model.get('activityId'),
                dest: 1
            },
            dataType: "json",
            success: function (result) {
                if (result.status == 1)
                    App.exchange($(e.delegateTarget).next(), $(e.delegateTarget))
            }
        })

    },
    deleteActivity: function (e) {
        if (confirm("Are you sure you want to delete this item? This action can not be undone.")) {
            this.model.destroy();
        }
    },
});

App.ActivityModuleEditView = App.ActivityModuleView.extend({
    childView: App.ActivityEditView,
    events: {
        "click .add-activity": "addActivityModal",
        "click .addActivity": "addActivity",
    },
    collectionEvents: {
        "remove": "isBadgeRemove" // equivalent to view.listenTo(view.collection, "add", view.itemAdded, view)
    },
    childViewContainer: function () {
        return ".activity-container"
    },
    addActivityModal: function (e) {
        this.$el.append("<div class='editActivity-dialog'></div>");
        new App.PopupDialogView({template: '#newActivity_template', el: this.$('.editActivity-dialog')}).render();
    },
    addActivity: function (e) {
        var activity = new App.ActivityEdit();
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
        activity.set("title", filterXSS($('.title').val(), options));
        activity.set("startDate", $('.startDate').val());
        activity.set("endDate", $('.endDate').val());
        activity.set("activityTagList", tagArray);
        activity.save({}, {
            success: function (model, response) {
                if (response.status == 1) {
                    var activity = new App.ActivityEdit(response.data);
                    that.collection.add(activity);
                    App.vent.trigger("badge:add", "activity");

                } else {
                    alert(response.message);
                }
            },
            complete: function () {
                $.scrollTo(that.$('.activity-container div:last'), 500);
            },
            wait: true
        });
    },
    isBadgeRemove: function () {
        if (this.collection.size() == 0) {
            App.vent.trigger("badge:remove", "activity");
        }
    }
});

App.BadgeView = Marionette.ItemView.extend({
    //sample [{"status":true,"title":"avator"},{"status":true,"title":"biography"},{"status":true,"title":"examRecord"},{"status":false,"title":"introductionVideo"},{"status":true,"title":"mystory"},{"status":true,"title":"honor"},{"status":true,"title":"activity"}]
    el: ".add-badges",
    events: {
        'click li': 'clickBadgeBtn'
    },
    clickBadgeBtn: function (e) {
        var module = $(e.target).parent().attr('module');
        switch (module) {
            case "biography":
                $(".modifyBiography:first").trigger("click");
                break;
            case "avatar":
                $("#myAvatarParent").trigger("click");
                break;
            case "score":
                $("#scores:first").trigger("click");
                break;
            case "introductionVideo":
                $(".add-video-description .add-video-btn").trigger("click");
                break;
            case "activity":
                $(".add-activity").trigger("click");
                break;
            default :
                var btn = "." + module + "Media .upload .r-upload";
                $(btn).trigger("click");
                break;
        }
    },
    render: function () {
        if (this.model) {
            var that = this;
            var score = 0;
            _.each(this.model, function (badge, index) {
                if (badge.status == false) {
                    $(that.$('a')[index]).addClass("badge");
                }
                if (index == 0 || index == 1 || index == 2 || index == 5) {
                    if (badge.status == true) {
                        score += 10;
                    }
                } else if (index == 3 || index == 4 || index == 6) {
                    if (badge.status == true) {
                        score += 20;
                    }
                }
            });
            $(".progress-bar").attr("aria-valuenow", score);
            $(".progress-bar").width(score + "%");
            $(".sr-only").html(score + "% complete");
            $(".progress-description").html(score + "% complete");
        }
    },
    addBadge: function (args) {
        if (this.model) {
            var that = this;
            _.each(this.model, function (badge, index) {
                if (badge.title == args) {
                    if (badge.status == false) {
                        that.badgeAlertMsg(args);
                        badge.status = true;
                        $(that.$('a')[index]).removeClass("badge");
                    }
                }
            });
            this.render();
        }
    },
    removeBadge: function (args) {
        if (this.model) {
            var that = this;
            _.each(this.model, function (badge, index) {
                if (badge.title == args) {
                    badge.status = false;
                    $(that.$('a')[index]).addClass("badge");
                }
            });
            this.render();
        }
    },
    badgeAlertMsg: function (module, msg) {
        msg = msg || "You just earned a new badge!";
        $("#badge-msg").html(msg);
        if (module == "avatar") {
            $("#badge-alert-img").attr("src", "/images/avatar.png");
        } else if (module == "biography") {
            $("#badge-alert-img").attr("src", "/images/info.png");
        } else if (module == "examRecord") {
            $("#badge-alert-img").attr("src", "/images/66.png");
        } else if (module == "introductionVideo") {
            $("#badge-alert-img").attr("src", "/images/video.png");
        } else if (module == "mystory" || module == "myschool") {
            $("#badge-alert-img").attr("src", "/images/mystory.png");
        } else if (module == "honor") {
            $("#badge-alert-img").attr("src", "/images/33.png");
        } else if (module == "activity") {
            $("#badge-alert-img").attr("src", "/images/activity.png");
        }
        $("#badge-alert-msg").addClass("md-show");
    }
});
App.exchange = function (a, b) {
    var a1 = $("<div id='a1'></div>").insertBefore(a);
    var b1 = $("<div id='b1'></div>").insertBefore(b);
    a.insertAfter(b1);
    b.insertAfter(a1);
    a1.remove();
    b1.remove();
    a1 = b1 = null;
}

window.uploadingCover = function (module, activityId) {
    var coverDiv = $('<div class="coverDiv text-center absolute-position"></div>');
    var parentDiv = null;
    if (module == "myVideo") {
        parentDiv = $(".my-video-section")[0];
    } else if (module == "ACTIVITY") {
        parentDiv = $(".activity-container").find("div[activityid=" + activityId + "]").children('.columns-info')[0];
    } else if (module == 'AVATAR') {
        parentDiv = $('#myAvatarParent')[0];
    } else {
        parentDiv = $("." + module.toLowerCase() + "Media")[0];        //创建一个父div
    }
    coverDiv.height(parentDiv.offsetHeight);
    coverDiv.width(parentDiv.offsetWidth);
    coverDiv.css({
        "background-color": "#fff",
        "z-index": 10,
        "opacity": 0.5,
        "top": 0
    });
    var picHeight = coverDiv.height() / 2;
    var picWidth = picHeight;
    var marginTop = (coverDiv.height() - picHeight) / 2;
    var loadingIMG = $('<img src="/images/loading.gif" style="width:' + picWidth + 'px; height:' + picHeight + 'px;margin-top:' + marginTop + 'px "/>');
    coverDiv.append(loadingIMG);
    $(parentDiv).append(coverDiv);
}

//模块输出
if (typeof module === "object" && module && typeof module.exports === "object") {
    module.exports = App;
}

