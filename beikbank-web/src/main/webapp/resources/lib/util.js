/**
 * 字符串替换[将字符串中所有符合s1的子字符都替换成s2]
 */
String.prototype.replaceAll = function(s1, s2) {
	var ss = this;
	while (ss.indexOf(s1) != -1) {
		ss = ss.replace(s1, s2);
	}
	return ss;
}

Date.prototype.format = function(format) {
	var d=new Date();
	var o = {
		"M+" : d.getMonth()+1, // month
		"d+" : d.getDate(), // day
		"h+" : d.getHours(), // hour
		"m+" : d.getMinutes(), // minute
		"s+" : d.getSeconds(), // second
		"q+" : Math.floor((d.getMonth() + 3) / 3), // quarter
		"S" : d.getMilliseconds()
	// millisecond
	}
	if (/(y+)/.test(format))
		format = format.replace(RegExp.$1, (d.getMonth()=="0"?(this.getFullYear()*1-1) + "":this.getFullYear() + "")
			.substr(4 - RegExp.$1.length));
	for ( var k in o)
		if (new RegExp("(" + k + ")").test(format))
			format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k]
					:o[k]==0?"12":  ("00" + o[k]).substr(("" + o[k]).length));
	return format;
}

function str2date(sdd, format) {
	format = format.replace("HH","hh");
	var dd=new Date(sdd).format(format);
	return dd;
}

function str2date(format) {
	format = format.replace("HH","hh");
	var dd=new Date()
	var sdd=dd.format(format);
	return sdd;
}
