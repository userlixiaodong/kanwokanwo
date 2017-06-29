(function(){
	
	//1. 获取像素比
	
	var num = 1/window.devicePixelRatio;
	
	//2. 动态生成视口标签
	
	var meta = document.createElement('meta');
	
	meta.name = 'viewport';
	
	meta.content = 'width=device-width, user-scalable=no, initial-scale='+num+', maximum-scale='+num+', minimum-scale='+num;
	
	//3.将创建的标签插入页面
	
	document.body.appendChild(meta);
	
	//4. 获取页面宽度/10
	
	var width = document.documentElement.clientWidth/10;
	
	//5.设置页面1/10大小为html的字号
	
	document.getElementsByTagName('html')[0].style.fontSize = width+'px';
	
	//<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
	
})();
