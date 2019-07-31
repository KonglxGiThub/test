$(function() {

	var indexSort = {
		// 执行函数
		init : function(){
			// 菜单
			this.navMenu();
			// 右侧微信下拉
			//this.downList();
			// 职位搜索
			this.jobSearch();
			// 职位类别滑动
			this.jobSlide();
			// 登陆框
			this.loginBox();
			// banner轮播
			this.banner();
			// 广告图片轮播
			this.advSlide();
		},
		// 左侧职位列表
		navMenu : function(){
			$('#navMain').hover(function() {
				$('.posBox').hide();
				$(this).find('#boxNav').show();
			}, function() {
				$('#boxNav').hide();
				$('#navLst li').removeClass('show');
			});
			$('#navLst li').mouseover(function() {
				var navT = $('.nav').offset().top;
				var top = $(this).offset().top - navT - 47;
				$('#navLst li').removeClass('show');
				$('.posBox').hide();
				$(this).addClass('show').find('.posBox').css('top', -top).show();
			});

			$('#navLst li').each(function() {
				$(this).one('click', function() {
					var divR = $(this).find('.r');
					$(this).find('dl:odd').appendTo(divR);
				}).click();
			});
		},
		// 微信下拉
		/*
		downList : function(){
			$('#btns span').hover(function() {
				$(this).find('p').show();
			}, function() {
				$(this).find('p').hide();
			});

		},
		*/
		// 职位搜索
		jobSearch : function(){
			$('#btnJobSearch').click(function() {
				var keyword = $("#tSchJobText").val();

				var locationurl = "/ZPWZ/FindWorkByNameServlet";
				if (keyword != "" && keyword != '请输入职位名称或公司名称') {
					locationurl += "?txtKeyWord=" + encodeURIComponent(keyword);
				} else {
					locationurl = "/ZPWZ/FindAllJob";
				}
				location.href = locationurl;
				return false;
			});

			var kwdDef = $("#tSchJobText").val();
			$("#tSchJobText").focus(function() {
				if ($(this).val() == kwdDef) {
					$(this).val('');
				}
			}).blur(function() {
				if ($(this).val() == '') {
					$(this).val(kwdDef);
				}
			});
			$("#tSchJobText").keydown(function(e) {
				if (e.keyCode == 13) {
					$("#btnJobSearch").click();
				}
			});
		},
		// 职位类别滑动
		jobSlide : function(){
			var flag = true;
			$('#tradeR').click(function() {
				if(flag){
					$('#tradeSlide').stop().animate({
						left: '-=1100'
					}, 500);
					flag = false;
				} else {
					$('#tradeSlide').stop().animate({
						left: 0
					}, 500);
					flag = true;
				}
				// if (parseInt($('#tradeSlide').css('left')) == -1100) {
				// 	return;
				// };
				// $('#tradeSlide').animate({
				// 	left: '-=1100'
				// }, 500);
			});

			$('#tradeL').click(function() {
				if (parseInt($('#tradeSlide').css('left')) == -1100) {
					$('#tradeSlide').stop().animate({
						left: '0'
					}, 500);
					flag = true;
				};				
			});

		},
		// 登陆框
		loginBox : function(){
			if($.browser.msie && $.browser.version < 10.0){	
 				$('.loginBox').find('.text').each(function() {
					var defVal = $(this).val();
					if(defVal.length == 0){
						$(this).siblings('label').show();
					}
					$(this).focus(function() {
						if ($(this).val() == defVal) {
							$(this).siblings('label').hide();
						}
						$(this).addClass('focus');
					}).blur(function() {
						if ($(this).val() == '') {
							$(this).siblings('label').show();
						}
						$(this).removeClass('focus');
					});
				});

				$('.loginBox').find('label').click(function(){
					$(this).siblings('input').focus();
				});
 			}

 			$('.loginBox').find('.text').each(function() {
 				$(this).focus(function() {
						$(this).addClass('focus');
					}).blur(function() {
						$(this).removeClass('focus');
					});
 			});

			$('#imgCode').click(function(){
				$(this).attr('src','/api/web/authCode.api?key=personLogin&r='+Math.random());
				return;
			});

			$('#imgComCode').click(function(){
				$(this).attr('src','/api/web/authCode.api?key=companyLogin&r='+Math.random());
				return;
			});

			$('#perBtn').click(function(){
				var username = $('#username1').val();
				var pwd = $('#pwd1').val();
				var yzm = $('#yzm1').val();
				var perAutoLogin = $('#perAutoLogin').attr("checked");
				var tipTxt = $('#formPer').find('.tipTxt').find('span');
				if(username == ''){
					tipTxt.text('手机/邮箱/用户名不能为空！').parent().show();
					$('#username1').focus();
					return false;
				}
				if(pwd == ''){
					tipTxt.text('密码不能为空！').parent().show();
					$('#pwd1').focus();
					return false;
				}
				/*
				if(yzm == ''){
					tipTxt.text('验证码不能为空！').parent().show();
					$('#yzm1').focus();
					return false;
				}
				*/
				$.post('/api/web/person.api',{act:'login',txtUserType:1,txtAppType:1,loginType:1,txtUsername:username,txtPassword:pwd,txtAuthCode:yzm,perAutoLogin:perAutoLogin},function(data){
					if(data.status<1){
						if(data.status==-35 || data.status==-38 || data.status==-37){
							$('#perYzm').show();
							$('#imgCode').click();
						}
						tipTxt.text(data.msg).parent().show();
						return;
					}else{
						window.location.href='/';
					}
				},'json');
			});

			$('#yzm1,#pwd1').keydown(function(e){
				if(e.keyCode == 13){
					$('#perBtn').click();
				}
			});

			$('#comBtn').click(function(){
				var username = $('#username2').val();
				var pwd = $('#pwd2').val();
				var yzm = $('#yzm2').val();
				var comAutoLogin = $('#comAutoLogin').attr("checked");
				var tipTxt = $('#formCom').find('.tipTxt').find('span');
				if(username == ''){
					tipTxt.text('用户名不能为空！').parent().show();
					$('#username2').focus();
					return false;
				}
				if(pwd == ''){
					tipTxt.text('密码不能为空！').parent().show();
					$('#pwd2').focus();
					return false;
				}
				/*
				if(yzm == ''){
					tipTxt.text('验证码不能为空！').parent().show();
					$('#yzm2').focus();
					return false;
				}
				*/
				$.post('/api/web/company.api',{act:'login',txtUserType:2,txtAppType:1,loginType:1,txtUsername:username,txtPassword:pwd,txtAuthCode:yzm,comAutoLogin:comAutoLogin},function(data){
					if(data.status<1){
						if(data.status==-35 || data.status==-38 || data.status==-37){
							$('#comYzm').show();
							$('#imgCode').click();
						}
						tipTxt.text(data.msg).parent().show();
						return;
					}else{
						window.location.href='/';
					}
				},'json');				
			});

			$('#yzm2,#pwd2').keydown(function(e){
				if(e.keyCode == 13){
					$('#comBtn').click();
				}
			});

		},
		// banner轮播
		banner : function(){
			var bannerTimer;
			var num = 0;
			var len = $('#focus').find('div').length;
			$('#focus').hover(function() {
				clearInterval(bannerTimer);
			}, function() {
				bannerTimer = setInterval(function() {
					if (num < len - 1) {
						num++;
					} else {
						num = 0;
					}
					$('#focusArr li').eq(num).addClass('cu').siblings().removeClass('cu');
					$('#focus div').eq(num).fadeIn().siblings().hide();
				}, 5000);
			}).trigger('mouseout');
			$('#focusArr li').mouseover(function() {
				var idx = $(this).index();
				num = idx;
				clearInterval(bannerTimer);
				$(this).addClass('cu').siblings().removeClass('cu');
				$('#focus div').eq(idx).fadeIn().siblings().hide();
			});

			$('.loginBox').find('li').click(function() {
				var idx = $(this).index();
				$(this).addClass('cu').siblings().removeClass('cu');
				$(this).parents('#notLoginStatus').find('div').eq(idx).show().siblings('div').hide();
			});
		},
		// 广告图片轮播
		advSlide : function(){
			var slideTimer;
			var slideNum = 0;
			var slideLen = $('#advSlide').find('ul li').length;
			var slideUl = $('#advSlide').find('ul');
			$('#advSlide').hover(function() {
				clearInterval(slideTimer);
			}, function() {
				slideTimer = setInterval(function(){
					if(slideNum < slideLen -1){
						slideNum ++;
					} else {
						slideNum = 0;
					}
					$('#advSlide ol li').eq(slideNum).addClass('cu').siblings().removeClass('cu');
					slideUl.stop(true).animate({top : -135*slideNum}, 500);
				},3000);
			}).trigger('mouseout');

			$('#advSlide ol').find('li').mouseover(function(){
				var idx = $(this).index();
				slideNum = idx;
				clearInterval(slideTimer);
				$(this).addClass('cu').siblings().removeClass('cu');
				slideUl.stop(true).animate({top : -135*idx}, 500);
			});
		}

	};

	indexSort.init();	

	// $('img.lazy').lazyload({
	// 	effect : 'fadeIn',
	// 	 failure_limit:5
	// });

	// 显示城市列表
	$('#showCitys').click(function(e){
		e.preventDefault();
		$('#cityMenu').toggle();
	});

	$(document).click(function(e){
		var target = e.target;
		if($(target).closest('.changeCity').length == 0){
			$('#cityMenu').hide();
		}
	});

	$('#closeCitys').click(function(){
		$('#cityMenu').hide();
	});

	$('.top-wx').hover(function() {
		$(this).find('.wxImg').show();
	}, function() {
		$(this).find('.wxImg').hide();
	});

	$('dl.list').find('dd').children().wrap('');

	var ttLen = $('#currentCity').text().length;
	if(ttLen > 5 && ttLen <= 8){
		$('#tSchJobText').width(370);
	} else if (ttLen > 8){
		$('#tSchJobText').width(340);
	}

});

// $(window).load(function(){
// 	$('.gold').find('img').each(function(){
// 		if($(this).width() >170){
// 			$(this).parents('li').addClass('goldDbl');
// 		}
// 	});
// 	$('.gold2').find('img').each(function(){
// 		if($(this).width() >132){
// 			$(this).parents('li').addClass('gold2Dbl');
// 		}
// 	});
// });

$(window).load(function(){
	// 品牌小图标
	if($('.pinpai img').eq(0).width() < 120){
		$('.pinpai').attr('id','smPinpai');
	}
	// 金牌大图标
	if($('.gold2 img').eq(0).height() > 45){
		$('.gold2').attr('class','gold');
	}
});


// 写Cookie
function writeCookie(name, value){
	var expire = new Date();
	expire.setFullYear(expire.getFullYear() + 20);
	expire = '; expires=' + expire.toGMTString();
	document.cookie = name + '=' + escape(value) + expire;
}

// 读取Cookie
function readCookie(name){
	var cookieValue = '';
	var search = name + '=';
	if (document.cookie.length > 0){
		var offset = document.cookie.indexOf(search)
		if (offset != -1){
			offset += search.length;
			var end = document.cookie.indexOf(';', offset);
			if (end == -1) end = document.cookie.length;
			cookieValue = unescape(document.cookie.substring(offset, end));
		}
	}
	return cookieValue;
}

