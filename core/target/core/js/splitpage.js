/*

showPages v1.1
=================================

Infomation
----------------------
Author : Lapuasi
E-Mail : lapuasi@gmail.com
Web : http://www.lapuasi.com
Date : 2005-11-17


Example
----------------------
var pg = new showPages('pg');
pg.pageCount = 12; //������ҳ��(��Ҫ)
pg.argName = 'p';    //���������(��ѡ,ȱʡΪpage)
pg.printHtml();        //��ʾҳ��


Supported in Internet Explorer, Mozilla Firefox
*/

function showPages(name) { //��ʼ������
	this.name = name;      //�������
	this.page = 1;         //��ǰҳ��
	this.pageCount = 1;    //��ҳ��
	this.argName = 'page'; //������
	this.showTimes = 1;    //��ӡ����
}

showPages.prototype.getPage = function(){ //��url��õ�ǰҳ��,�������ظ�ֻ��ȡ���һ��
	var args = location.search;
	var reg = new RegExp('[\?&]?' + this.argName + '=([^&]*)[&$]?', 'gi');
	var chk = args.match(reg);
	if(chk == null) {
		this.page = 1;
	} else {
		this.page = RegExp.$1;
	}
}
showPages.prototype.checkPages = function(){ //���е�ǰҳ�����ҳ�����֤
	if (isNaN(parseInt(this.page))) this.page = 1;
	if (isNaN(parseInt(this.pageCount))) this.pageCount = 1;
	if (this.page < 1) this.page = 1;
	if (this.pageCount < 1) this.pageCount = 1;
	if (this.page > this.pageCount) this.page = this.pageCount;
	this.page = parseInt(this.page);
	this.pageCount = parseInt(this.pageCount);
}
showPages.prototype.createHtml = function(mode){ //���html����
	var strHtml = '', prevPage = this.page - 1, nextPage = this.page + 1;
	if (mode == '' || typeof(mode) == 'undefined') mode = 0;
	//ģʽ2 (ǰ������,ҳ��,��ҳ,ǰҳ,��ҳ,βҳ)
	//strHtml += '<span class="count">' + this.page + ' / ' + this.pageCount + '</span>';
	strHtml += '<ul class="pagination pagination-lg pagination-sm">';
	if (prevPage < 1) {
		//strHtml += '<li title="First Page">&#171;</li>';
		strHtml += '<li title="Prev Page"><span aria-hidden="true">&laquo;</span> </li>';
	} else {
		//strHtml += '<span title="First Page"><a href="javascript:' + this.name + '.toPage(1);">&#171;</a></span>';
		strHtml += '<li title="Prev Page"><a href="javascript:' + this.name + '.toPage(' + prevPage + ');"><span aria-hidden="true">&laquo;</span></a></li>';
	}
	if (this.page != 1) strHtml += '<li title="Page 1"><a href="javascript:' + this.name + '.toPage(1);">1</a></li>';
	if (this.page >= 5) strHtml += '<li></li>';
	if (this.pageCount > this.page + 2) {
		var endPage = this.page + 2;
	} else {
		var endPage = this.pageCount;
	}
	for (var i = this.page - 2; i <= endPage; i++) {
		if (i > 0) {
			if (i == this.page) {
				strHtml += '<li title="Page ' + i + '" class="active"><a href="#">' + i + '<span class="sr-only">(current)</span></a></li>';
			} else {
				if (i != 1 && i != this.pageCount) {
					strHtml += '<li title="Page ' + i + '"><a href="javascript:' + this.name + '.toPage(' + i + ');">' + i + '<span class="sr-only">(current)</span></a></li>';
				}
			}
		}
	}
	if (this.page + 3 < this.pageCount) strHtml += '<li></li>';
	if (this.page != this.pageCount) strHtml += '<li title="Page ' + this.pageCount + '"><a href="javascript:' + this.name + '.toPage(' + this.pageCount + ');">' + this.pageCount + '<span class="sr-only">(current)</span></a></li>';
	if (nextPage > this.pageCount) {
		strHtml += '<li title="Next Page"><span aria-hidden="true">&raquo;</span></li>';
		//strHtml += '<span title="Last Page">&#187;</span>';
	} else {
		strHtml += '<li title="Next Page"><a href="javascript:' + this.name + '.toPage(' + nextPage + ');"><span aria-hidden="true">&raquo;</span></a></li>';
		//strHtml += '<span title="Last Page"><a href="javascript:' + this.name + '.toPage(' + this.pageCount + ');">&#187;</a></span>';
	}
	strHtml += '</li><br />';
	return strHtml;
}
showPages.prototype.createUrl = function (page) { //���ҳ����תurl
	if (isNaN(parseInt(page))) page = 1;
	if (page < 1) page = 1;
	if (page > this.pageCount) page = this.pageCount;
	var url = location.protocol + '//' + location.host + location.pathname;
	var args = location.search;
	var reg = new RegExp('([\?&]?)' + this.argName + '=[^&]*[&$]?', 'gi');
	args = args.replace(reg,'$1');
	if (args == '' || args == null) {
		args += '?' + this.argName + '=' + page;
	} else if (args.substr(args.length - 1,1) == '?' || args.substr(args.length - 1,1) == '&') {
			args += this.argName + '=' + page;
	} else {
			args += '&' + this.argName + '=' + page;
	}
	return url + args;
}
showPages.prototype.toPage = function(page){ //ҳ����ת
	var turnTo = 1;
	if (typeof(page) == 'object') {
		turnTo = page.options[page.selectedIndex].value;
	} else {
		turnTo = page;
	}
	self.location.href = this.createUrl(turnTo);
}
showPages.prototype.printHtml = function(divId){ //��ʾhtml����
	this.getPage();
	this.checkPages();
	this.showTimes += 1;
	//document.write('<div id="pages_' + this.name + '_' + this.showTimes + '" class="pages"></div>');
	//document.getElementById('pages_' + this.name + '_' + this.showTimes).innerHTML = this.createHtml(2);
	document.getElementById(divId).innerHTML = this.createHtml(2);
}
showPages.prototype.formatInputPage = function(e){ //�޶�����ҳ���ʽ
	var ie = navigator.appName=="Microsoft Internet Explorer"?true:false;
	if(!ie) var key = e.which;
	else var key = event.keyCode;
	if (key == 8 || key == 46 || (key >= 48 && key <= 57)) return true;
	return false;
}