/**
 * Created by song on 16/3/11.
 */
//    var app = Marionette.Application.extend({
//        initialize: function(options) {
//            console.log('My container:', options.container);
//        }
//    });
//
//    var MyApp = new app({container: '#app'});

var MyApp = new Mn.Application();

// Alert the user on the 'minutePassed' event
MyApp.vent.on("minutePassed", function(someData){
    console.log("Received", someData);
});
// This will emit an event with the value of window.someData every minute
window.setInterval(function() {
    MyApp.vent.trigger("minutePassed", window.someData);
}, 1000 * 6);

MyApp.on('start',function(options){
    console.log("start");
});
MyApp.on("before:start", function(options){
    options.moreData = "Yo dawg, I heard you like options so I put some options in your options!";
    console.log(options.moreData);
    console.log("before start");
});
var options = {
    something: "some value",
    another: "#some-selector"
};

MyApp.addRegions({
    someRegion: "#some-div",
    anotherRegion: "#another-div"
});

MyApp.start(options);




MyApp.reqres.setHandler("todoList", function(type){
    this.todoLists = [];
    this.todoLists['groceries']='lala';
    return this.todoLists[type];
});

// Make the request to get the grocery list
var groceryList = MyApp.reqres.request("todoList", "groceries");
console.log(groceryList);

// The request method can also be accessed directly from the application object
var groceryList = MyApp.request("todoList", "groceries");
console.log(groceryList);




//    MyApp.start();

