/**
 * Created by song on 16/3/11.
 */

_.templateSettings = {
    evaluate: /<@([\s\S]+?)@>/g,
    interpolate: /<@=([\s\S]+?)@>/g,
    escape: /<@-([\s\S]+?)@>/g
};

var App = new Mn.Application();


//弹窗模块
App.Popup = [];
App.popup = [];
App.Popup['description'] = Marionette.ItemView.extend({
    template: "#popup_description",
    el:".reveal-modal"
});

App.popup['description'] = new App.Popup['description']();
App.popup['description'].render();
App.popup['description'].on("pop:description",function(options){
    console.log(options);
    console.log(this);
});




//Model
App.Description = Backbone.Model.extend({
    //defaults: {
    //    description: ''
    //}
});

App.Material = Backbone.Model.extend({
    //defaults: {
    //    materialSrc: '',
    //    seq:'',
    //    title: '',
    //    type: '',
    //    videoPreviewImg:''
    //}
});
App.MaterialList = Backbone.Collection.extend({
    model: App.Material
});

App.Content = Backbone.Model.extend({
    initialize: function(){
        var description = this.get('description');
        if(description){
            this.description = new App.Description({description:this.get('description')});
            this.unset("description");
        }
        var materials = this.get('materials');
        if(materials){
            this.materials = new App.MaterialList(this.get('materials'));
            this.unset("materials");
        }
    }
});

var json = {"description":"分身乏术","materials":[{"materialId":"03864956-520d-4d95-972a-eeb1b1b844bc","materialSrc":"https://kw-cdn.kanwokanwo.com/images/8364313cjw1e2jhxq0thdj2587166115062842.jpg","seq":0,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"7b760061-6599-4c70-bf95-3c84ef549d46","materialSrc":"https://kw-cdn.kanwokanwo.com/images/8364313cjw1e2jhxq0thdj2587166115062842.jpg","seq":0,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""}]};
var myStory = new App.Content(json);
var honor = new App.Content(json);
//View
//App.DescriptionView = Marionette.ItemView.extend({
//    //model: description,
//    template: '#description-template',
//    ui : {
//        'description': '.media-item-description, .add-description'
//    },
//    events: {
//        "click @ui.description" : "editDescription"
//    },
//    data:{},
//    editDescription : function(){
//        App.popup['description'].trigger("pop:description",{'data-module':this._parent.el,'data':this.model.get('description')});
//    }
//});
App.MaterialSimpleView = Marionette.ItemView.extend({
    template: '#material-template'
});
App.MaterialInteractionView = Marionette.ItemView.extend({
    template: '#material-template',
    //TODO behavior
    events: {
        "click div": "whoAmI" //is the same as "click .dog":
    },
    whoAmI: function () {
        console.log("Material")
    }
});

App.DescriptionMaterialSimpleView = Marionette.CompositeView.extend({
    template:'#description-template',
    //el:".myStoryMedia",
    childView: App.MaterialSimpleView,
    initialize: function(){
        this.el = this.options.el;
        if(this.options.model.description)
            this.model = this.options.model.description;
        if(this.options.model.materials)
            this.collection = this.options.model.materials;
    }
});

var myStorySimpleView = new App.DescriptionMaterialSimpleView({model:myStory,el:".myStoryMedia"});
var honorSimpleView = new App.DescriptionMaterialSimpleView({model:honor,el:".honorMedia"});
//var mystorySimpleSView = new App.DescriptionMaterialSimpleView(mystory);
console.log(myStorySimpleView);
myStorySimpleView.render();
honorSimpleView.render();


//App.ContentCollectionView = Marionette.CollectionView.extend({
//    getChildView: function (item) {
//        if (item instanceof App.Material) {
//            console.log("material");
//            return App.MaterialView;
//        }
//        else {
//            return App.DescriptionView;
//        }
//    }//,
    //childViewEventPrefix: "children:event",
    //childEvents: {
    //    render: function () {
    //        console.log('A child view has been rendered.');
    //    }
    //}
//});

//App.contentCollectionViewArray = [];
//App.contentCollectionViewArray['MyStoryView'] = new App.ContentCollectionView({
//    el: '.myStoryMedia',
//    collection: new Backbone.Collection()
//});
//App.contentCollectionViewArray['MyStoryView'].on("children:event:render", function () {
//    console.log("children:event:render");
//});
//
//
//// Renders a FooView
//App.contentCollectionViewArray['MyStoryView'].collection.add(description);
//App.contentCollectionViewArray['MyStoryView'].collection.add(material);
//material = new App.Material(material.toJSON());
//App.contentCollectionViewArray['MyStoryView'].collection.add(material);
//material = new App.Material(material.toJSON());
//App.contentCollectionViewArray['MyStoryView'].collection.add(material);


//App.contentCollectionViewArray['MyStoryView'].collection.each(function (item) {
//    console.log(item);
//});


//TODO 有个filter别忘了
//collectionView render 触发所有的itemView
//App.contentCollectionViewArray['MyStoryView'].render();

//module.exports = App;








//    MyApp.start();
//var Activity = Backbone.Model.extend({
//    defaults: {
//        tags: [],
//        title: '',
//        beg: '',
//        end: '',
//        description: '',
//        materialCollection: []
//    }
//});
//
//
////Activity
//var ActivityCollection = Backbone.Collection.extend({
//    model: Activity
//});
//
//activityCollection = new ActivityCollection();
//activityCollection.add(new Activity());
//activityCollection.add(new Activity());
//console.log(activityCollection.size());











