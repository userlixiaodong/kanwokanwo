/**
 * Created by liuruichao on 16/4/4.
 */
var activityTags = ["Arts", "Sports", " Community service ", "Culture", "Debate/Speech", "Communication", "Science", "Language", "Religion", "Working experience", "Others", "All"];
    var options = {whiteList:[], stripIgnoreTag: true};
    $(function(){
        //activity处理begin
        Activity = Backbone.Model.extend({
            urlRoot: "/admission/activity/modify",
            idAttribute: "activityId",
            update: function () {
                this.save();
            }
        });

        Material = Backbone.Model.extend({
        });
        ActivityList = Backbone.Collection.extend({
            model: Activity,
        });
        MaterialList = Backbone.Collection.extend({
            model: Material,
        });

        activity_template = _.template($('#activity_template').html());
        activityTagList_template = _.template($('#activityTagList_template').html());
        editActivity_template = _.template($('#editActivity_template').html());
        newActivity_template = _.template($('#newActivity_template').html());

        activityList = new ActivityList();
        // 添加数据
        for (var i in data) {
            activityList.add(new Activity(data[i]));
        }
        MaterialView = Backbone.View.extend({
            templ: _.template($('#material_template').html()),
            initialize: function () {
                this.listenTo(this.model, 'change', this.reRender);
                this.listenTo(this.model, 'destroy', this.remove);
                this.render();
            },
            events: {
                "click .activity-item-tips li": "chooseTag",
                "click .openModifyTitle": "openModifyTitle",
                "click .controls-deletes": "deleteMaterial",
            },
            openModifyTitle: function () {
                new EditMaterial({
                    model: this.model,
                    activityId: $(this.options.outel.find('.openUpload')).attr('activityid'),
                    module: $(this.options.outel.find('.openUpload')).attr('data-module')
                });
            },
            deleteMaterial: function (e) {
                if (confirm("Are you sure you want to delete this item? This action can not be undone.")) {
                    var module = "ACTIVITY";
                    var index = $(e.currentTarget.closest(".media-item")).find(".controls-deletes").index(e.currentTarget);
                    var activityId = $(this.options.outel.find('.openUpload')).attr('activityid');
                    var that = this;
                    $.ajax({
                        type: "POST",
                        url: '/material/delete',
                        data: {module: module, seq: index, activityId: activityId},
                        dataType: 'json',
                        success: function (data) {
                            if (data.status == 1) {
                                activityList.get(activityId).get('materials').splice(index,1)
                                that.model.destroy();
                            }
                        }
                    });
                }
                setTimeout(function(){
                    $('.md-overlay').removeClass('md-overlay-show');
                },0);
            },

            render: function () {
                this.reRender();
                $(this.options.outel.find('.uploadDiv')).before(this.$el);
            },

            reRender: function () {
                var html = this.templ(this.model.toJSON());
                this.$el.html(html);
            }
        })

        EditMaterial = Backbone.View.extend({
            templ: _.template($('#editMaterial_template').html()),
            initialize: function () {
                this.render();
            },
            events: {
                "click .modifyTitle": "modifyTitle",
            },
            modifyTitle: function (e) {
                var that = this;
                $.ajax({
                    type: "get",
                    url: '/material/updateMaterialTitle',
                    data: {
                        module: this.options.module,
                        title: filterXSS($('.materialTitle').val(),options),
                        index: this.model.get("seq"),
                        activityId: this.options.activityId,
                    },
                    dataType: 'json',
                    success: function (data) {
                        if (data.status == 1) {
                            that.model.set("title", data.data);
                        }
                    }
                });
                this.remove()
                $("#modal-22").removeClass("md-show");
                $('.md-overlay').removeClass('md-overlay-show');
            },

            render: function () {
                this.reRender();
                $('#modal-22').html("")
                $('#modal-22').append(this.$el);
            },

            reRender: function () {
                var html = this.templ(this.model.toJSON());
                this.$el.html(html);
            }
        })

        EditActivity = Backbone.View.extend({
            templ: _.template($('#editActivity_template').html()),
            initialize: function () {
                this.listenTo(this.model, 'destroy', this.remove);
                this.render();
            },
            events: {
                "click .modifyActivity": "updateActivity",
                "click .activity-item-tips li": "chooseTag",
            },
            updateActivity: function (e) {
                var tagArray = new Array();
                this.$el.find('.activity-item-tips li').each(function () {
                    if ($(this).hasClass("on")) {
                        var tag = {
                            title: $(this).val() + ''
                        };
                        tagArray.push(tag);
                    }
                })
                this.model.set("title",filterXSS($('.title').val(),options));
                this.model.set("startDate", $('.startDate').val());
                this.model.set("endDate", $('.endDate').val());
                this.model.set("activityTagList", tagArray);
                this.model.save();
                this.remove();
                $("#modal-4").removeClass("md-show");
                $(".md-close").trigger("click");
            },

            chooseTag: function (e) {
                if ($(e.currentTarget).hasClass("on")) {
                    $(e.currentTarget).removeClass("on");
                } else {
                    $(e.currentTarget).addClass("on");
                }
            },

            render: function () {
                this.reRender();
                $('#modal-4').html("")
                $('#modal-4').append(this.$el);
                $(".date").datepicker({
                    changeMonth: true,
                    changeYear: true,
                    dateFormat: 'M yy',
                    showButtonPanel: true,
                    onClose: function(dateText, inst) {
                        $(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
                    }
                });
            },

            reRender: function () {
                var html = this.templ(this.model.toJSON());
                this.$el.html(html);
            }
        })

        EditDescription = Backbone.View.extend({
            templ: _.template($('#editDescription_template').html()),
            initialize: function () {
                this.render();
            },
            events: {
                "click .modifyDescription": "updateDescription",
            },
            updateDescription: function (e) {
                this.model.save({description: filterXSS($('.description').val(),options)}, {wait: true});
                this.remove();
                $("#modal-20").removeClass("md-show");
                $('.md-overlay').click();
            },

            render: function () {
                this.reRender();
                $('#modal-20').html("")
                $('#modal-20').append(this.$el);
            },

            reRender: function () {
                var html = this.templ(this.model.toJSON());
                this.$el.html(html);
            }
        })

        ActivityView = Backbone.View.extend({
            className: "activity",
            templ: _.template($('#activity_template').html()),
            initialize: function () {
                this.listenTo(this.model, 'change', this.updateActivity);
                this.listenTo(this.model, 'destroy', this.remove);
                this.render();
            },
            events: {
                "click .col-xs-10 a": "editActivity",
                "click .openDescription": "editDescription",
                "click .up": "up",
                "click .down": "down",
                "click .openUpload": "upload",
                "click .deleteActivity": "deleteActivity",
            },
            editActivity: function (e) {
                 new EditActivity({
                    model: this.model,
                });
            },
            editDescription: function (e) {
                new EditDescription({
                    model: this.model,
                });
            },
            updateActivity: function (e) {
                this.reRender();
                this.renderMaterial();
            },
            up: function (e) {
                $.ajax({
                    url: "/admission/activity/changeActivityLocation",
                    data: {
                        activityId: this.model.get('activityId'),
                        dest: -1
                    },
                    dataType: "json",
                    success: function (result) {
                        if (result.status == 1)
                            exchange($(e.delegateTarget), $(e.delegateTarget).prev())
                    }
                })

            },
            down: function (e) {
                $.ajax({
                    url: "/admission/activity/changeActivityLocation",
                    data: {
                        activityId: this.model.get('activityId'),
                        dest: 1
                    },
                    dataType: "json",
                    success: function (result) {
                        if (result.status == 1)
                            exchange($(e.delegateTarget).next(), $(e.delegateTarget))
                    }
                })

            },
            upload: function (e) {
                var module = $(e.currentTarget).attr("data-module");
                var dataModal = $(e.currentTarget).attr("data-modal");
                var activityId = $(e.currentTarget).attr("activityId");
                $("#" + dataModal).attr("data-module", module);
                $("#" + dataModal).attr("activityid", activityId);
                $("#" + dataModal + " .modalLink").attr("data-module", module);
                $("#" + dataModal + " .modalLink").attr("activityid", activityId);
            },
            deleteActivity: function (e) {
                if (confirm("Are you sure you want to delete this item? This action can not be undone.")) {
                    this.model.destroy();
                    if (activityList.size() <= 0) {
                        badgesJson[4].status = false;
                        $($(".add-badges .md-trigger")[4]).addClass("badge");
                        updateComplete();
                    }
                }
            },
            renderMaterial:function(){
                var materials = this.model.get('materials');
                for (var i in materials) {
                    var material = new Material(materials[i])
                    new MaterialView({
                        model: material,
                        outel: this.$el,
                    })
                }
            },
            render: function () {
                this.reRender();
                $('#actList').append(this.$el);
                this.renderMaterial();

            },
            reRender: function () {
                var html = this.templ(this.model.toJSON());
                this.$el.html(html);
            }
        });

        for (var i = 0; i < activityList.length; i++) {
            var activity = activityList.at(i);
            new ActivityView({
                model: activity,
            });
        }

        initNewActivityModal();

        $(".activity-item li").click(function () {
            tagFilter(($(this).index()));
            $(".activity-item li").removeClass("on")
            $(this).addClass("on")
        });

        function initNewActivityModal(){
        $("#modal-21").html(newActivity_template());
        $(".date").datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'M yy',
            showButtonPanel: true,
            onClose: function(dateText, inst) {
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

        $('.addActivity').click(function () {
            var activity = new Activity();
            var tagArray = new Array();
            $('.activity-item-tips li').each(function () {
                if ($(this).hasClass("on")) {
                    var tag = {
                        title: $(this).val() + ''
                    };
                    tagArray.push(tag);
                }
            })

            activity.set("title", filterXSS($('.title').val(),options));
            activity.set("startDate", $('.startDate').val());
            activity.set("endDate", $('.endDate').val());
            activity.set("activityTagList", tagArray);
            activity.save({}, {
                success: function (model, response) {
                    if (response.status == 1) {
                        var activity = new Activity(response.data);
                        activityList.add(activity);
                        new ActivityView({
                            model: activity,
                        });
                        if(activityList.size() > 0){
                            if(badgesJson[4].status == false){
                                badgesJson[4].status = true;
                                $($(".add-badges .md-trigger")[4]).removeClass("badge");
                                badgeAlertMsg("You just earned a new badge!","activity");
                            }
                            updateComplete();
                        }
                    } else {
                        alert(response.message);
                    }
                },
                wait: true
            });
            $("#modal-21").removeClass("md-show");
            initNewActivityModal();
            $('.md-overlay').click();
        })
    }
        addSortable();
        $('.media-item').rebox({selector: '.zoom'});
    });
    function exchange(a, b) {
        var a1 = $("<div id='a1'></div>").insertBefore(a);
        var b1 = $("<div id='b1'></div>").insertBefore(b);
        a.insertAfter(b1);
        b.insertAfter(a1);
        a1.remove();
        b1.remove();
        a1 = b1 = null;
    }