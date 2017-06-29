var webpack = require('webpack');
var path = require("path");
var rootPath = path.resolve(__dirname, '..');//定位当前目录的上层目录";
var uglifyJsPlugin = webpack.optimize.UglifyJsPlugin;
var AssetsPlugin = require('assets-webpack-plugin');
var assetsPluginInstance = new AssetsPlugin({filename: 'assets.json', prettyPrint: true});

module.exports = {
    entry: {
        top: rootPath + "/webpack/entry/top.js",
        stuMyProfile: rootPath + "/webpack/entry/stuMyProfile.js",
        stuViewProfile: rootPath + "/webpack/entry/stuViewProfile.js",
        schoolMyProfile: rootPath + "/webpack/entry/schoolMyProfile.js",
        schoolViewProfile: rootPath + "/webpack/entry/schoolViewProfile.js"
    },
    output: {
        publicPath: "http://test.static.kanwokanwo.com/",//"http://test.static.360class.cn/", //"http://static.360class.cn/",//
        //path: "/Users/song/work/program files/apache-tomcat-6.0.29/webapps/ROOT/script",//__dirname,
        path: path.join(__dirname, "static"),
        filename: "[name]-bundle.js",
        chunkFilename: "[id]-chunk.js",
    },
    //require.resolve,解决了所在资源父文件夹内没有node_modules的问题，从webpack.config.js中所在目录返回绝对路径
    module: {
        loaders: [
            {test: /\.css$/, loader: require.resolve("style-loader") + "!" + require.resolve("css-loader")},
            {test: /\.jpe?g$|\.gif$|\.png$|\.svg$|\.woff$|\.ttf$|\.wav$|\.mp3$|\.woff2$|\.eot$/, loader: require.resolve("file-loader") + "?name=images/[hash:8].[ext]"},
            {test: /\.txt$|\.tp$/, loader: require.resolve("raw-loader") + "?name=[hash:8].[ext]"},
            //将$暴露为全局（window）下可见，正则表达式匹配jquery和jquery-x.x.js
            {test: /jquery$|jquery(-|\d|\.|min)*.js$/, loader: 'expose?jQuery!expose?$'},
            {test: /login_module.js$/, loader: 'expose?sso_operation'},
            {test: /sem_module.js$/, loader: 'expose?sem'},
        ]
    },
    resolve: {

        alias: {
            //path join 解决相对路径问题
            video: rootPath + "/js/video.js",
            video_popup: rootPath + "/js/video-popup.js",
            jquery_scrollTo: rootPath + "/js/jquery.scrollTo.js",
            jquery: rootPath + "/js/jquery-2.2.1.min.js",
            underscore: rootPath + "/js/underscore-min.js",
            modalEffects: rootPath + "/js/jquery_modalEffects.js",
            modernizr: rootPath + "/js/modernizr.custom.js",
            ajaxfileupload: rootPath + "/js/jquery.ajaxfileupload.js",
            xss: rootPath + "/js/xss.js",
            backbone: rootPath + "/js/backbone-min.js",
            marionette: rootPath + "/js/backbone.marionette.min.js",
            jquery_ui: rootPath + "/js/jquery-ui.min.js",
            jquery_sortable: rootPath + "/js/jquery.sortable.js",
            jquery_rebox: rootPath + "/js/jquery-rebox.js",
            zclip: rootPath + "/js/jquery.zclip.js",
            stuViewProfile_module: rootPath + "/js/module/stuViewProfile_module.js",
            stuMyProfile_module: rootPath + "/js/module/stuMyProfile_module.js",
            schoolMyProfile_module: rootPath + "/js/module/schoolMyProfile_module.js",

        }
    },

    plugins: [
        new webpack.ProvidePlugin({
            $: "jquery",
            jQuery: "jquery",
            _: "underscore",
            //rootPath:"/Users/song/work/workspace/focus_sat/WebRoot"
            // Backbone: "backbone"
        }),
        new webpack.optimize.DedupePlugin(),
        new webpack.optimize.OccurenceOrderPlugin(),
        //限制整体chunk的数量，如果chunk数量大于num，则不会有splitting
        new webpack.optimize.LimitChunkCountPlugin({maxChunks: 15}),
        //会合并大小小于\d b的chunk，但至少会有一个 不会合并到parent中
        new webpack.optimize.MinChunkSizePlugin({minChunkSize: 1000}),
        new webpack.optimize.CommonsChunkPlugin("commonV3.js"),
        // new webpack.optimize.CommonsChunkPlugin("subIndex",['satIndex', 'toefleIndex', 'ssatIndex']),
        assetsPluginInstance
    ]
};
