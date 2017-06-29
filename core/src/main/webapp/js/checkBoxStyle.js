(function($){
    var defaults = {
        pluginName : "checkBoxStyle",
        pluginClass : "checkBoxStyle",
        DomIdentifyingArr : [],
        curryStyle : {"cursor":"default","background":"rgb(243,246,249)","color":"#333"},
        curryAttr : {}
    };
    var methods = {
        init : function(options){
            console.log("init");
            //初始化
            $target = this;
            defaults = $.extend({},defaults,options);//初始化options
            methods.bindEvevt.call($target,defaults.DomIdentifyingArr,defaults);
        },
        show : function(){
            methods.init();
        },
        destroy : function(){
            $(this).off(".checkBoxStyle");
        },
        bindEvevt : function(arr,currStyle){
            $(this).on("click.checkBoxStyle",function(){
                $.each(arr,function(i,v){
                    methods.setCurryStyle(v,currStyle.curryStyle);
                    $(v).find("input").attr(currStyle.curryAttr);
                })
            })
        },
        error :function(method){
            //统一错误处理
            $.error('Method ' + method + ' does not exist on jQuery.checkBoxStyle(无此接口！)');
        },
        setdefaultStyle :function(v){
            //设置样式
            if(defaults.defaultStyle){
                $(v).css(defaults.defaultStyle);
            }
        },
        setCurryStyle : function(obj,curryStyle){
           $(obj).css(curryStyle);
        }
    }
    $.fn.checkBoxStyle = function(method){
        if(methods[method]){
            //如果参数是 已定义的方法，直接调用方法
            return methods[method].apply(this,Array.prototype.slice.call(arguments,1))
        }else if(typeof method ==='object' || !method){
            //如果参数是一个对象或者没有写明参数，那么调用init函数
            return methods.init.apply(this,arguments)
        }else{
            //如果无此方法或者格式不对那么调用error函数
            return methods.error.apply(this,arguments);
        }
    }
})(jQuery);
