
function showPages(name, page, url) {
	this.name = name;
	this.page = page;      
	this.pageCount = 1;  
	this.argName = 'page';
	this.showTimes = 1; 
	this.pageUrl = url;
}

showPages.prototype.checkPages = function(){
	if (isNaN(parseInt(this.page))) this.page = 1;
	if (isNaN(parseInt(this.pageCount))) this.pageCount = 1;
	if (this.page < 1) this.page = 1;
	if (this.pageCount < 1) this.pageCount = 1;
	if (this.page > this.pageCount) this.page = this.pageCount;
	this.page = parseInt(this.page);
	this.pageCount = parseInt(this.pageCount);
}
showPages.prototype.createHtml = function(mode){
	var strHtml = '', prevPage = this.page - 1, nextPage = this.page + 1;
	if (mode == '' || typeof(mode) == 'undefined') mode = 0;
	strHtml += '<ul class="pagination">';
	strHtml += '<li class="disabled"><a href="javascript:;">' + this.page + ' / ' + this.pageCount + '</a></li>';
	if (prevPage < 1) {
		//strHtml += '<li title="首页" class="disabled"><a href="javascript:;">首页</a></li>';
		strHtml += '<li title="上一页" class="disabled"><a href="javascript:;">Previous</a></li>';
	} else {
		//strHtml += '<li title="首页"><a href="javascript:' + this.name + '.toPage(1);">首页</a></li>';
		strHtml += '<li title="上一页"><a href="javascript:' + this.name + '.toPage(' + prevPage + ');">Previous</a></li>';
	}
	if (this.page != 1) strHtml += '<li title="1"><a href="javascript:' + this.name + '.toPage(1);">1</a></li>';
	if (this.page >= 5) strHtml += '<li  class="disabled"><a href="javascript:;">...</a></li>';
	if (this.pageCount > this.page + 2) {
		var endPage = this.page + 2;
	} else {
		var endPage = this.pageCount;
	}
	for (var i = this.page - 2; i <= endPage; i++) {
		if (i > 0) {
			if (i == this.page) {
				strHtml += '<li class="disabled" title="' + i + '"><a href="javascript:;">' + i + '</a></li>';
			} else {
				if (i != 1 && i != this.pageCount) {
					strHtml += '<li title="' + i + '"><a href="javascript:' + this.name + '.toPage(' + i + ');">' + i + '</a></li>';
				}
			}
		}
	}
	if (this.page + 3 < this.pageCount) strHtml += '<li class="disabled"><a href="javascript:;">...</a></li>';
	if (this.page != this.pageCount) strHtml += '<li title="' + this.pageCount + '"><a href="javascript:' + this.name + '.toPage(' + this.pageCount + ');">' + this.pageCount + '</a></li>';
	if (nextPage > this.pageCount) {
		strHtml += '<li class="disabled" title="Next"><a href="javascript:;">Next</a></li>';
		//strHtml += '<li class="disabled" title="尾页"><a href="javascript:;">尾页</a></li>';
	} else {
		strHtml += '<li title="'+ nextPage + '"><a href="javascript:' + this.name + '.toPage(' + nextPage + ');">Next</a></li>';
		//strHtml += '<li title="尾页"><a href="javascript:' + this.name + '.toPage(' + this.pageCount + ');">尾页</a></li>';
	}
	strHtml += '</ul><br />';
	return strHtml;
}
showPages.prototype.createUrl = function (page) {
	if (isNaN(parseInt(page))) page = 1;
	if (page < 1) page = 1;
	if (page > this.pageCount) page = this.pageCount;
	this.pageUrl = this.pageUrl.replace('{page}', page);
	return this.pageUrl;
}
showPages.prototype.toPage = function(page){
	var turnTo = 1;
	if (typeof(page) == 'object') {
		turnTo = page.options[page.selectedIndex].value;
	} else {
		turnTo = page;
	}
	self.location.href = this.createUrl(turnTo);
}
showPages.prototype.printHtml = function(divId){
	this.checkPages();
	this.showTimes += 1;
	document.getElementById(divId).innerHTML = this.createHtml(2);
}
showPages.prototype.formatInputPage = function(e){
	var ie = navigator.appName=="Microsoft Internet Explorer"?true:false;
	if(!ie) var key = e.which;
	else var key = event.keyCode;
	if (key == 8 || key == 46 || (key >= 48 && key <= 57)) return true;
	return false;
}