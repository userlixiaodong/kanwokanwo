if(!isIE()){
	initFont();
	window.onresize=function(){
		initFont(); //初始字体占百分比
	};
	var evt = "onorientationchange" in window ? "orientationchange" : "resize";
	window.addEventListener(evt, function() {
	    window.location.reload();
	}, false);
}else{
	document.write('错误');
}

//wap页面随着屏幕变化而改变大小
function initFont(){
	var initW=document.getElementById("initRem").getAttribute("init");
	var widX=document.documentElement.clientWidth,fontX=0;
	if(widX>=initW){
		fontX=625;
	}else if(widX<320){
		fontX=(625*320)/initW;
	}else{
		fontX=(625*widX)/initW;
	}
	document.getElementsByTagName("html")[0].style.fontSize=fontX+"%";
}
function isIE() { //判断是否是ie  
	
	console.log(navigator.appVersion)
	var ieReg=/MSIE [7|8|6]./i;

    if(navigator.appVersion.search(ieReg)<=-1){
		return false;
	}else{
		return true;
	}
}  