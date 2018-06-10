$(function() {
	var winWidth = $(window).width();
	$('#bottomBox .close').unbind('click');
	$('#bottomBox a').unbind('click');
	$('#bottomBox .close').on('click', function(event){
		event.preventDefault();
		$('#bottomBox').stop().animate({'margin-left':winWidth}, 1000);
		$('#fix_left').stop().animate({'margin-left':winWidth-40}, 500);

	});

	$('#fix_left').hover(function(){
		$('#bottomBox').animate({'margin-left':0}, 1000);
		$(this).animate({'margin-left':winWidth}, 10)
	});
	// 椤堕儴瀵艰埅涓嬫媺鑿滃崟
	$('.siteNav .n2 .alt').gsmenu();
	// 椤堕儴鎼滅储
	if ($('.siteSearch .keyword').length > 0) {
		var __kw = $('.siteSearch .keyword');
		var __kp = $('.siteSearch .keyword').next('.placeholder');
		__kw.bind({
			focus: function() {
				$(this).css('background-color','#48ADA2');
				__kp.fadeOut(300);
			},
			blur: function() {
				if ($(this).val()) {
					__kp.fadeOut(300);
				} else {
					$(this).css('background-color','#4CB6AA');
					__kp.fadeIn(300);
				}
			}
		});
		if (__kw.val()) {
			__kw.css('background-color','#48ADA2');
			__kp.hide();
		}
	}
	// 搴曢儴浜岀淮鐮�
	$('#footer .sns .wx,#footer .sns .mob').hover(function() {
		$(this).children('.qr').show().animate({top: '-125px'},200);
	}, function() {
		$(this).children('.qr').css('top','-135px').hide();
	});

	// 椤堕儴寰俊
	$('#header .tel,#header .weixin').hover(function() {
		$(this).children('.tips').show().animate({'top': '47px'},200);
	}, function() {
		$(this).children('.tips').css('top','52px').hide();
	});
	$('.user-menu').hover(function() {
		$(this).children('.tips').show().animate({'top': '52px'},200);
	}, function() {
		$(this).children('.tips').css('top','48px').hide();
	});
    //绾夸笅鐩存挱
	$('.pointer_a').hover(function(){
        $(this).children('.tips').show().animate({'top': '43px'},200);
    },function(){
        $(this).children('.tips').css('top','34px').hide();
    })
    //涓汉涓績
    $('#siteUser .user-menu').hover(function() {
		$(this).children('.user-info').show().animate({'top': '42px'},200);
	}, function() {
		$(this).children('.user-info').css('top','32px').hide();
	});
	// 杩斿洖椤堕儴
	$(window).scroll(function() {
		var wst = $(window).scrollTop();
		if (wst >= 150) {
			/*if ($('#toAction').length > 0 && $('#toTop').length < 1) $('#toAction').append('<a href="javascript:void(0);" id="toTop">杩斿洖椤堕儴</a>');
			if ($('#toAction').length < 1) $('body').append('<div id="toAction"><a href="javascript:void(0);" id="toTop">杩斿洖椤堕儴</a></div>');*/
			$('#toTop').slideDown("slow");
			$(".right_array").css({"bottom":"55px"});
		} else {
			$('#toTop').slideUp("slow");
			$(".right_array").css({"bottom":"10px"});
		}
	});
	/*
	if ($('#toAction').length > 0 && $('#toTop').length < 1) $('#toAction').append('<span id="zhuanjiaZixun"></span><span id="toTop" title="杩斿洖椤堕儴" style="display:none"></span><div id="zhuanjia_xuanfu"><div class="top">鎵句笓瀹舵姤蹇楁効<img src="/Static/img/close.gif" class="close" /></div><div class="middle"><a target="_blank" style="color:#ff0000;" href="javascript:void(0)"><img src="/Static/img/ico_loginPhone.png" class="ico_loginPhone"/>010-52926017</a><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2927063070&site=qq&menu=yes"><img src="/Static/img/ico_loginQQ.png"/>涓撳鍜ㄨ</a></div></div>'); 
	if ($('#toAction').length < 1) $('body').append('<div id="toAction"><span id="zhuanjiaZixun"><i class="monkey_ico"></i></span><span id="qqQun">QQ缇�</span><span id="toTop" title="杩斿洖椤堕儴" style="display:none"></span><div id="qq_btn"><div class="qq_window" id="qq_window" style="display:none"><span class="close_layer"></span><span class="right_array"></span><h3><span></span>2016楂樿€冪兢</h3><ul><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=8396eba603286b23c3b6494a0f93fcd1079822053472fbd302f7edb150bd2163"><span></span>鍖椾含瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=19f0adfe9b1d976bafacf5e6e618f4030aff5c03baef099cdd59b92673f73728"><span></span>灞辫タ瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=131693910b9a1261ebe267361a5e4b134129f2f0264a92877dd76dde689fca04"><span></span>骞夸笢瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=ac5bf331f49aaadf10f164a44c00662e97f45186139ee08a577bfb147d350c56"><span></span>璐靛窞瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=85c471a474d50e2210bc54eeb8edc2ca2e027aef95429f1b3b71992a5e21edb3"><span></span>娌冲崡瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=c7541386aa520c9105b86d47fc7fd9ae8b7861f130e7f5086fedaa795c31b800"><span></span>婀栧寳瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=e911ebb2f20d404498065088dfd573e3ccb2b6be1189f2bc728146ea1a0ece18"><span></span>姹熻嫃瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=e7390341d88348b70ea9ff9668c96de2f6220185bdaa8bd9bb66a01d1f634e37"><span></span>杈藉畞瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=4a5a26b82499cd10fb85a13e900ead8f1ae4aee27f449834e13f95cbc21d9094"><span></span>灞变笢瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=7342dbf7e03c0fb7c411afd0464cad9323eebb90e9dac7e999adc75bb865bb5a"><span></span>鍥涘窛瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=3f6cb368a8e8f76fe8673ae289af4c7a10c857e245bd65f6da09a4e737e903e3"><span></span>娴欐睙瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=6e744d8cd7a433c4fe4ee9ed5358162473502e1fffc201d3842e7139de291a9c"><span></span>娌冲寳瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=a7719e84bdf8cc5312bb15c5a721016dd0d346755fcf1b0273cbc4ca70cb693d"><span></span>鍚夋灄瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=0a9097da94583f4063b6e095e3d809522e6bab46f647de38660c20268ef31707"><span></span>瀹夊窘瀹堕暱缇�</a></li><li><a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=fc7e03ed2bfcbc7b9224ef8f427d797fbb3fad9310cc48f688a34dfaa633c084"><span></span>榛戦緳姹熷闀跨兢</a></li></ul></div></div><div id="kefu"><div class="top">鍦ㄧ嚎瀹㈡湇<img src="/Static/img/close.gif" class="close" /></div><div class="middle"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3073105259&site=qq&menu=yes"><img src="/Static/img/ico_loginQQ.png"/>浠ｇ悊鍟嗗挩璇�</a><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2927063070&site=qq&menu=yes"><img src="/Static/img/ico_loginQQ.png"/>浜у搧鍜ㄨ1</a><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1444534922&site=qq&menu=yes"><img src="/Static/img/ico_loginQQ.png"/>浜у搧鍜ㄨ2</a><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3027480283&site=qq&menu=yes"><img src="/Static/img/ico_loginQQ.png"/>浜у搧鍜ㄨ3</a></div></div><div id="zhuanjia_xuanfu"><div class="top">鎵句笓瀹舵姤蹇楁効<img src="/Static/img/close.gif" class="close" /></div><div class="middle"><a target="_blank" style="color:#ff0000;" href="javascript:void(0)"><img src="/Static/img/ico_loginPhone.png" class="ico_loginPhone"/>010-52926017</a><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2927063070&site=qq&menu=yes"><img src="/Static/img/ico_loginQQ.png"/>楂樿€冩淳鐢樿€佸笀</a><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1191622652&site=qq&menu=yes"><img src="/Static/img/ico_loginQQ.png"/>楂樿€冩淳鐜嬭€佸笀</a><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3027480283&site=qq&menu=yes"><img src="/Static/img/ico_loginQQ.png"/>楂樿€冩淳鏉庤€佸笀</a></div><div class="top">浠ｇ悊鍟嗗挩璇�</div><div class="middle"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1461824865&site=qq&menu=yes"><img src="/Static/img/ico_loginQQ.png"/>楂樿€冩淳姊呰€佸笀</a></div></div></div>');
	*/
		/*鍦ㄧ嚎瀹㈡湇*/
	$('#qqTip').click(function(){
		$('#kefu').show();
	});
	$('#kefu .close').click(function(){
		$('#kefu').hide();
	});
	$('#zhuanjiaZixun').click(function(){
		$('#zhuanjia_xuanfu').show();
	});
	$('#zhuanjia_xuanfu .close').click(function(){
		$('#zhuanjia_xuanfu').hide();
	});		
		
		
	/*qq缇�*/
	$("#qqQun").on("click",function()
	{
		var l = -130;
		t = -395;
		$("#qq_window").css({"display":"block","left":l,"top":t});
		
	});
	$(".close_layer").on("click",function(e)
	{
		$(this).parent().css("display","none");
		estop(e);
	});
	//闃绘浜嬩欢鍐掓场
	function estop(e)
	{
		var e=arguments.callee.caller.arguments[0]||event;
		if (e && e.stopPropagation){
		//鍥犳瀹冩敮鎸乄3C鐨剆topPropagation()鏂规硶
		   e.stopPropagation();
		}else{
		//鍚﹀垯锛屾垜浠渶瑕佷娇鐢↖E鐨勬柟寮忔潵鍙栨秷浜嬩欢鍐掓场
		   window.event.cancelBubble = true;
		   return false;
		}
	}
	
	/*qq缇nd*/
	
	// 杩斿洖椤堕儴
	$('body').on('click','#toTop', function() {
		$('html,body').animate({scrollTop: 0}, 300);
	});

	// 搴曢儴鍥哄畾
	$(window).bind({
		load: function() {resetFooter()},
		resize: function() {resetFooter()}
	});
	
	//绗笁鏂圭櫥褰�
	$('#toLogin').gsmodel({
		title: '浼氬憳鐧诲綍',
		href: '#loginPop',
		innerWidth: 500,
		inline:true,
		
	});
	
	//璁剧疆鐧诲綍鐢ㄦ埛淇℃伅
	// var gkpUinfoCookie = $.cookie('gkp_uinfo')
	// if(gkpUinfoCookie){
	// 	var  gkpUinfo = gkpUinfoCookie.split("__|http://");
		
	// 	var siteUser = [];
	// 	siteUser.push('<a href="/Home-user.html" class="login">');
	// 	siteUser.push('<span class="name">' +  gkpUinfo[0]  + '</span>');
	// 	siteUser.push('</a>');
	// 	siteUser.push('<a href="/Home-login-logout.html" class="login">閫€鍑�</a>');
		
	// 	$('#siteUser').html(siteUser.join(''));
	// }
	
	
});
// 搴曢儴鍥哄畾
function resetFooter() {
	var win = $(window).height();
	var body = $('body').height();
	if (body < win) {
		$('#footer').css({'position':'fixed', 'width': '100%', 'bottom':'0'})
	} else {
		$('#footer').css({'position':'static ', 'width': 'auto', 'bottom':'auto'})
	}
}

//鍊惧悜鎬ф祴璇�
function investTest(){
	$.gsmodel({
		title: '蹇楁効鍊惧悜娴嬭瘯',
		href: '/Home-User-investigate.html',
		innerWidth: 600,
		innerHeight: 380,
		iframe : true
	})
}

function randomCheck(){
	var len = $(':radio').length / 2;
	for(var i = 1 ; i <= len; i++){
		var r = Math.round(Math.random()) + 1;
		$('#ans_' + i + 'id' + r).prop('checked', true);
	}
}

//鍒囨崲
function tabs(tabTit,tabCon,on){
    var _on=$(tabTit).find('.'+on);
    var _i=$(tabTit).children().index(_on[0]);
    $(tabCon).each(function(){
        $(this).children().eq(_i).show().siblings().hide();
    });
    $(tabTit).children().hover(function(){
        $(this).addClass(on).siblings().removeClass(on);
        var index = $(tabTit).children().index(this);
        $(tabCon).children().eq(index).show().siblings().hide();
    }); 
}

/*!
 * jQuery Cookie Plugin v1.3.0
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2013 Klaus Hartl
 * Released under the MIT license
 */
(function ($, document, undefined) {

	var pluses = /\+/g;

	function raw(s) {
		return s;
	}

	function decoded(s) {
		return unRfc2068(decodeURIComponent(s.replace(pluses, ' ')));
	}
	
	function unRfc2068(value) {
		if (value.indexOf('"') === 0) {
			// This is a quoted cookie as according to RFC2068, unescape
			value = value.slice(1, -1).replace('\\"', '"').replace('\\\\', '\\');
		}
		return value;
	};

	var config = $.cookie = function (key, value, options) {

		// write
		if (value !== undefined) {
			options = $.extend({}, config.defaults, options);

			if (value === null) {
				options.expires = -1;
			}

			if (typeof options.expires === 'number') {
				var days = options.expires, t = options.expires = new Date();
				t.setDate(t.getDate() + days);
			}

			value = config.json ? JSON.stringify(value) : String(value);

			return (document.cookie = [
				encodeURIComponent(key), '=', config.raw ? value : encodeURIComponent(value),
				options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
				options.path    ? '; path=' + options.path : '',
				options.domain  ? '; domain=' + options.domain : '',
				options.secure  ? '; secure' : ''
			].join(''));
		}

		// read
		var decode = config.raw ? raw : decoded;
		var cookies = document.cookie.split('; ');
		var result = key ? null : {};
		for (var i = 0, l = cookies.length; i < l; i++) {
			var parts = cookies[i].split('=');
			var name = decode(parts.shift());
			var cookie = decode(parts.join('='));
			
			if (config.json) {
				cookie = JSON.parse(cookie);
			}
			
			if (key && key === name) {
				result = cookie;
				break;
			}
			
			if (!key) {
				result[name] = cookie;
			}
		}

		return result;
	};

	config.defaults = {};

	$.removeCookie = function (key, options) {
		if ($.cookie(key) !== null) {
			$.cookie(key, null, options);
			return true;
		}
		return false;
	};

})(jQuery, document);