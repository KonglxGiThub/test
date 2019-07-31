
/*
*/
$(document).ready(function() {
	$("a").click(function(){
		var href=$(this).attr("href");
		if (href.indexOf('/company/')==0){
			personLogin();
		};
		if (href.indexOf('/person/')==0){

		};
	});
});


$.focusblur = function(focusid){
	var focusblurId = $(focusid);
	var defval = focusblurId.val();
	focusblurId.focus(function(){
		var thisval = $(this).val();
		//$(this).addClass('focus').removeClass('textGray');
		$(this).siblings('label.txtLabel').css({'display':'none'});
		$(this).addClass('focus');
		/*			if(thisval==defval){
			$(this).val("");
		}*/
	});
	focusblurId.blur(function(){
		var thisval = $(this).val();
		if(thisval==""){
			/*				$(this).val(defval);*/
			//$(this).addClass('textGray');
			$(this).siblings('label.txtLabel').css({'display':'block'});
		}
		$(this).removeClass('focus');
	});
};

$.focusColor = function(focusid){
	var focusElemId = $(focusid);
	focusElemId.focus(function(){
		$(this).addClass('focus');
	}).blur(function(){
		$(this).removeClass('focus');
	});
};

//获取最高的一个zindex，提供给dialog和control调用，
$.fn.bgIframe = $.fn.bgiframe = function(s)
{
	//因发现ie7也出现这个问题，所以不管什么浏览器都加上
	//if ($.browser.msie && /6.0/.test(navigator.userAgent))
	try
	{
		s = $.extend({ top: 'auto', left: 'auto', width: 'auto', height: 'auto', opacity: true, src: 'javascript:void(0);'
		}, s || {});

		var prop = function(n)
		{
			return n && n.constructor == Number ? n + 'px' : n;
		};
		var width = this.outerWidth(true);
		var height = this.outerHeight(true);
		var html = this.find('.bgiframe');
		if (html.length > 0)
		{
			html.remove();
		}
		html = '<iframe class="bgiframe" frameborder="0" tabindex="-1" src="about:blank"' + 'style="display:block;position:absolute;z-index:-1;' + (s.opacity !== false ? 'filter:Alpha(Opacity=\'0\');' : '') + 'top:' + (s.top == 'auto' ? '0px' : prop(s.top)) + ';' + 'left:' + (s.left == 'auto' ? '0px' : prop(s.left)) + ';' + 'width:' + prop(width) + ';' + 'height:' + prop(height) + ';' + ' overflow:hidden;"/>';
		this.prepend(html);
	} catch (e) { }
	return this;
};

function preventBSK() {
	var a = false;
	var b = window.event;
	if (typeof(b) != 'undefined') {
		a = b && b.altKey && (b.keyCode == 8 || b.keyCode == 37 || b.keyCode == 39);
		if (b.keyCode == 8) {
			var c = b.srcElement.tagName.toUpperCase();
			if (c == "TEXTAREA" || c == "INPUT") a = b.srcElement.readOnly;
			else a = true
		}
		b.cancelBubble = a;
		b.returnValue = !a
	}
}

/*
 * 计算文本长度
 */

(function($)
{
	var Listener = function(el, opt)
	{
		//默认值
		var _default = {
			max: 4000,
			objTotal: $(el).closest('div').next().find('.content'),
			objLeft: $(el).next('.textareaTxt').find('i'),
			duration: 200,
			objTotalStyle: 'green',
			flag:false
		};
		//初始化参数
		var options = $.extend({}, _default, opt);
		var start = function()
		{
			//统计函数
			var _length, _oldLen, _lastRn;
			_oldLen = _length = 0;
			this.time = setInterval(function()
			{
				_length = el.val().length;
				if (el == null || typeof el == "undefined")
				{   
					this.time = null;
					return;
				}
				if(!options.flag)
				{
					if (_length == _oldLen)	 //防止计时器做无用的计算
					{   
						return;
					}
				}
				if (_length > options.max)
				{
					//避免ie最后两个字符为"\r\n",导致崩溃
					_lastRN = (el.val().substr(options.max - 1, 2) == "\r\n");
					el.val(el.val().substr(0, (_lastRN ? options.max - 1 : options.max)));
				}
				_oldLen = _length = el.val().length;
				//显示已输入字符
				if (options.objTotal.length>0)
				{
					options.objTotal.html(_length).addClass(options.objTotalStyle);
				};
				//显示剩余的输入字符
				if (options.objLeft.length>0)
				{
					options.objLeft.html((options.max - _length) < 0 ? 0 : (options.max - _length)).addClass(options.objTotalStyle);
				}
			}, options.duration);
		};

		var stop = function()
		{
			this.time = null;
		};
		if (options.objLeft != null)
		{
			try
			{
				var defaultLength = options.max - $(el).val().length;
				options.objLeft.html(defaultLength).addClass(options.objTotalStyle);
			}
			catch (e) { }
		};
		el.bind('focus', start);
		el.bind('blur', stop);
	};

	$.fn.setListen = function(opt)
	{
		var l = new Listener(this, opt || {});
		this.data('listener', l);
	};
	
	
	$.fn.focusblur = function(){}

	$.focusblur = function(focusid){
		var focusblurId = $(focusid);
		var defval = focusblurId.val();
		focusblurId.focus(function(){
			var thisval = $(this).val();
			//$(this).addClass('focus').removeClass('textGray');
			$(this).siblings('label.txtLabel').css({'display':'none'});
			$(this).addClass('focus');
	/*			if(thisval==defval){
				$(this).val("");
			}*/
		});
		focusblurId.blur(function(){
			var thisval = $(this).val();
			if(thisval==""){
	/*				$(this).val(defval);*/
				//$(this).addClass('textGray');
				$(this).siblings('label.txtLabel').css({'display':'block'});
			}
			$(this).removeClass('focus');
		});
	};
	
	jQuery.extend({
		// 设置index
	  setIndex: function(className) { 
	  	var zIndex = 1000;
		$('.'+className).each(function() {
			$(this).css('z-index',zIndex--);
		});
	  },
	  // 设置选项卡
	  tab:function(tId,cId){ 
			$(tId).find('li').click(function(){
				if($(this).hasClass('cu')){
					return false;//do something
				}else{
					var thisIndex = $(this).index();
					$(this).addClass('cu').siblings('li').removeClass('cu');
					$(cId).find('.tabCon').eq(thisIndex).css({'display':'block'}).siblings('.tabCon').css({'display':'none'});
				}
			});
		}
		//调用$.tab('#tabT','#tabC');
	});	
	//给文本框加水印
	$.fn.watermark = function(txt)
	{
		var getVal = function(el)
		{
			if (el.length == 0) return '';
			if (el[0].type.toLowerCase() == 'a' || el[0].type.toLowerCase() == 'span')
			{
				return el.html();
			} else
			{
				return el.val();
			}
		};

		this.attr('watermark', txt);
		if (getVal(this) == '')
		{
			this.val(txt);
			this.addClass('textGray');
		}
		this.focus(function()
		{
			var el = $(this);
			if (getVal(el) == el.attr('watermark'))
			{
				el.removeClass('textGray');
				el.val('');
			}
		});
		this.blur(function()
		{
			refreshStatus();
		});
		var self = this;
		var refreshStatus = function()
		{
			var el = self; //$(this);
			var val = getVal(el);
			var watermark = el.attr('watermark');
			if (val == '' || val == watermark)
			{
				el.val(watermark);
				el.addClass('textGray');
			} else
			{
				el.removeClass('textGray');
			}
		}
		refreshStatus();
	};


	//用于在form提交前清空水印
	$.fn.clearWatermark = function()
	{
		var inputs=$(this).find('input[watermark]');
		for(var i=inputs.length-1;i>=0;i--)
		{
			
			var el = $(inputs[i]);
			if (el.val() == el.attr('watermark'))
			{
				el.val('');
			}	
		}
	};	
})(jQuery);

$('body').keydown(function() {
	preventBSK();
});


Array.prototype.contains = function(obj) { 
var i = this.length; 
while (i>=0) { 
	if (this[i] === obj) { 
		return true; 
	}
	i--; 
} 
return false; 
};

/*  
*　方法:Array.remove(v)  
*　功能:删除JavaScript数组元素.  
*　参数:值  
*　返回:在原JavaScript数组上修改JavaScript数组  
*/  
Array.prototype.remove=function(v)  {  
for(var i=0;i<this.length;i++)  {  
	if(this[i] == v) {   
	   while(i<this.length){
		  if(i==this.length-1) {
			  this.length-=1;
			  break;
		  }
		  this[i] = this[i+1]
		  i++; 
	   }  
	   break;
	}  
} 
}; 


function scroller(a, b,top) {
	$("#" + a).ScrollTo(b,top);
	return false;
}
function Dec_Pos(x, y,w) {
	//获取浏览器的宽度
	var wnd=$(window);
	var scrollLeft = (wnd.width()+wnd.scrollLeft()-1000)/2+w;
	
	if ($(document).scrollTop() > y) {
		$(x).css({
			position: "fixed",
			top: 0,
			left:scrollLeft
		});
		if ($.browser.msie && $.browser.version == '6.0') {
			$(x).css({
				position: "absolute",
				top: $(document).scrollTop(),
				left:scrollLeft
			})
		}
	} else {
		$(x).css({
			position: "absolute",
			top: y,
			left:scrollLeft
		})
	}
}
function Fixed_Box(a, b,w) {
	b = b || "";
	var c = 0;
	if (!b) {
		c = $(a).offset().top;
	} else {
		c = b;
	}
	Dec_Pos(a, c,w);
	$(window).scroll(function() {
		Dec_Pos(a, c,w);
	})
}
jQuery.getPos = function(e) {
	var l = 0;
	var t = 0;
	var w = jQuery.intval(jQuery.css(e, 'width'));
	var h = jQuery.intval(jQuery.css(e, 'height'));
	var a = e.offsetWidth;
	var b = e.offsetHeight;
	while (e.offsetParent) {
		l += e.offsetLeft + (e.currentStyle ? jQuery.intval(e.currentStyle.borderLeftWidth) : 0);
		t += e.offsetTop + (e.currentStyle ? jQuery.intval(e.currentStyle.borderTopWidth) : 0);
		e = e.offsetParent;
	}
	l += e.offsetLeft + (e.currentStyle ? jQuery.intval(e.currentStyle.borderLeftWidth) : 0);
	t += e.offsetTop + (e.currentStyle ? jQuery.intval(e.currentStyle.borderTopWidth) : 0);
	return {
		x: l,
		y: t,
		w: w,
		h: h,
		wb: a,
		hb: b
	}
};
jQuery.getClient = function(e) {
	if (e) {
		w = e.clientWidth;
		h = e.clientHeight;
	} else {
		w = (window.innerWidth) ? window.innerWidth: (document.documentElement && document.documentElement.clientWidth) ? document.documentElement.clientWidth: document.body.offsetWidth;
		h = (window.innerHeight) ? window.innerHeight: (document.documentElement && document.documentElement.clientHeight) ? document.documentElement.clientHeight: document.body.offsetHeight;
	}
	return {
		w: w,
		h: h
	}
};
jQuery.getScroll = function(e) {
	var t, l, w, h;
	if (e) {
		t = e.scrollTop;
		l = e.scrollLeft;
		w = e.scrollWidth;
		h = e.scrollHeight;
	} else {
		if (document.documentElement && document.documentElement.scrollTop) {
			t = document.documentElement.scrollTop;
			l = document.documentElement.scrollLeft;
			w = document.documentElement.scrollWidth;
			h = document.documentElement.scrollHeight
		} else if (document.body) {
			t = document.body.scrollTop;
			l = document.body.scrollLeft;
			w = document.body.scrollWidth;
			h = document.body.scrollHeight;
		}
	}
	return {
		t: t,
		l: l,
		w: w,
		h: h
	}
};
jQuery.intval = function(v) {
	v = parseInt(v);
	return isNaN(v) ? 0 : v
};
jQuery.fn.ScrollTo = function(s,top) {
	o = jQuery.speed(s);
	return this.each(function() {
		new jQuery.fx.ScrollTo(this, o,top);
	})
};
jQuery.fx.ScrollTo = function(e, o,top) {
	var z = this;
	z.o = o;
	z.e = e;
	z.p = jQuery.getPos(e);
	//在滚动到目的锚点时，上面保留多少像素距离
	if(typeof top =='number'){
		z.p.y = z.p.y-top;
	}
	z.s = jQuery.getScroll();
	z.clear = function() {
		clearInterval(z.timer);
		z.timer = null
	};
	z.t = (new Date).getTime();
	z.step = function() {
		var t = (new Date).getTime();
		var p = (t - z.t) / z.o.duration;
		if (t >= z.o.duration + z.t) {
			z.clear();
			setTimeout(function() {
				z.scroll(z.p.y, z.p.x);
			},
			13)
		} else {
			st = (( - Math.cos(p * Math.PI) / 2) + 0.5) * (z.p.y - z.s.t) + z.s.t;
			sl = (( - Math.cos(p * Math.PI) / 2) + 0.5) * (z.p.x - z.s.l) + z.s.l;
			z.scroll(st, sl);
		}
	};
	z.scroll = function(t, l) {
		window.scrollTo(l, t);
	};
	z.timer = setInterval(function() {
		z.step();
	},
	13)
};

$.fn.delConfirm = function() {
	var a = $(this).offset().left - 200;
	var b = $(this).offset().top + 20;
	
	//var c = $(this).parent().parent(".infoview");
	var d = $("#delconfirm");
	//c.addClass('onbc2');
	d.css({
		left: a,
		top: b
	}).show();
	$("#delyesbtn").unbind("click");
	$("#delnobtn").unbind("click");
	var e = $(this).attr("targetCall");
	var f = $(this).attr("targetName");
	if (typeof(f) != 'undefined' && f.length > 0) {
		$("#delMessage").html(f);
	} else {
		$("#delMessage").html("信息");
	}
	$("#delyesbtn").click(function() {
		d.css({
			left: "auto",
			top: "auto"
		}).hide();
		//c.removeClass('onbc2');
		eval(e);
	});
	$("#delnobtn").click(function() {
		d.css({
			left: "auto",
			top: "auto"
		}).hide();
		//c.removeClass('onbc2');
	})
};


(function($) {
	var f = document;
	var g = [],
	readyBound = false;
	var h = f.createElement('script'),
	fn,
	node;
	fn = h.readyState ?
	function(b, c) {
		b.onreadystatechange = function() {
			var a = b.readyState;
			if (a === 'loaded' || a === 'complete') {
				b.onreadystatechange = null;
				c.call(this)
			}
		}
	}: function(a, b) {
		a.onload = b
	};
	function dequeue(a, b, c) {
		if ((a == undefined) || (a && a.type)) {
			var d = g.shift();
			if (d) {
				function plugins() {
					d.callback();
					dequeue()
				}
				dequeue(d.url, plugins, d.charset)
			}
		} else {
			var e = f.getElementsByTagName('head')[0] || f.documentElement,
			node = f.createElement('script');
			node.src = a;
			if (c) node.charset = c;
			if ($.isFunction(b)) {
				fn(node, b)
			}
			e.appendChild(node)
		}
	}
	function enqueue(a, b, c) {
		g.push({
			'url': a,
			'callback': b,
			'charset': c
		});
		domReady()
	}
	function domReady() {
		if (document.readyState === "complete") {
			return dequeue()
		}
		if (document.addEventListener) {
			document.addEventListener("DOMContentLoaded", dequeue, false);
			window.addEventListener("load", dequeue, false)
		} else if (document.attachEvent) {
			document.attachEvent("onreadystatechange", dequeue);
			window.attachEvent("onload", dequeue);
			var a = false;
			try {
				a = window.frameElement == null
			} catch(e) {}
			if (document.documentElement.doScroll && a) {
				try {
					document.documentElement.doScroll("left")
				} catch(error) {
					setTimeout(arguments.callee, 10);
					return
				}
				dequeue()
			}
		}
	}
	$.loader = {
		getScript: function(a, b, c, d) {
			if (!c) {
				dequeue(a, b, d)
			} else {
				enqueue(a, b, d)
			}
		},
		_globalEval: function() {}
	}
})(jQuery);

var LoaderRegiter = (function() {
	var f = "?v=20130422";
	var g = "http://static.58.com/n/js/jianli/";
	var h = function(b, c) {
		this._flag = c;
		this._index = b;
		this.setFlag = function(a) {
			this._flag = a
		};
		this.getFlag = function() {
			return this._flag
		};
		this.getIndex = function() {
			return this._index
		}
	};
	var j = [new h("Skill", false), new h("Language", false), new h("Project", false), new h("Cert", false), new h("SchoolInfo", false)];
	return {
		load: function(a) {
			for (var i = 0; i < j.length; i++) {
				var b = j[i];
				if (b.getIndex() == a) {
					if (b.getFlag() == true) {
						return
					}
					var c = g + a + ".js" + f;
					var d = a + ".init()";
					var e = function() {
						eval(d)
					};
					$.loader.getScript(c, e, true, "utf-8");
					j[i].setFlag(true);
					return
				}
			}
		}
	}
})();

function hidePopUpWin() {
	$(".setbox,.zhankai,danhang").hide();
	$(".examplepos").hide();
	$(".delconfirm").hide()
}

$.fn.newShow = function() {
	$(".setbox,.zhankai,danhang").hide();
	$(".examplepos").hide();
	$(".delconfirm").hide();
	$(this).show()
};
var Utility = {
		trimJS: function(a) {
			a = Utility.replacestr(a, "<", "&lt;");
			a = Utility.replacestr(a, ">", "&gt;");
			return a
		},
		replaceUrl: function(a) {
			return (a.replace(/http[s]?:\/\/([\w\-\.]+)(:\d+)?([\w\-\.\/?%&=]*)?/ig, ""))
		},
		replacestr: function(a, b, c) {
			var d = new RegExp(b, "g");
			return (a.replace(d, c))
		},
		replacestrIgnore: function(a, b, c) {
			var d = new RegExp(b, "gi");
			return (a.replace(d, c))
		},
		repLaceData: function(a) {
			if (a != "") {
				a = Utility.replacestr(a, "'", "");
				return a.replace(/]]>/g, "")
			} else {
				return ""
			}
		},
		repLaceLine2Br: function(a) {
			if (a != "") {
				a = Utility.replacestr(a, "\n", "<br/>");
				a = Utility.replacestr(a, "'", "");
				return a.replace(/]]/g, "")
			} else {
				return ""
			}
		},
		repLaceBr2Line: function(a) {
			if (a != "") {
				a = Utility.replacestrIgnore(a, "<br/>|<br>|<br />", "\n");
				return Utility.replacestrIgnore(a, "&nbsp;", " ")
			} else {
				return ""
			}
		},
		getDateArray: function(a) {
			if (typeof(a) != 'undefined' && a != null && $.trim(a).length > 0) {
				var b = a.match(/[0-9]+/g);
				if (b != null) {
					if (b.length == 4) {
						return b
					} else if (b.length == 2) {
						b.push("至今");
						return b
					} else {
						return ""
					}
				} else {
					return ""
				}
			}
		},
		getDateArrayOne: function(a) {
			if (typeof(a) != 'undefined' && a != null && $.trim(a).length > 0) {
				var b = a.match(/[0-9]+/g);
				if (b != null) {
					if (b.length == 2) {
						return b
					} else if (b.length == 1) {
						b.push("至今")
					} else {
						return ""
					}
				} else {
					return ""
				}
			}
		},
		getQueryString: function(a) {
			var b = new RegExp("(^|&)" + a + "=([^&]*)(&|$)", "i");
			var r = window.location.search.substr(1).match(b);
			if (r != null) return unescape(r[2]);
			return null
		},
		encodeTxtBox: function(a) {
			if (a != null && $.trim(a).length > 0) {
				a = Utility.trimJS(a);
				a = a.replace(/ /g, "&nbsp;")
			}
			return a
		}
	};

//给文本框加水印
$.fn.watermark = function(txt)
{
	if(typeof this.attr('watermark') != 'undefined') {
		txt = this.attr('watermark');
	}	
	var getVal = function(el)
	{
		if (el.length == 0) return '';
		if (el[0].type.toLowerCase() == 'a' || el[0].type.toLowerCase() == 'span')
		{
			return el.html();
		} else
		{
			return el.val();
		}
	};

	this.attr('watermark', txt);
	if (getVal(this) == '')
	{
		this.val(txt);
		this.addClass('textGray');
	}
	this.focus(function()
	{
		var el = $(this);
		if (getVal(el) == el.attr('watermark'))
		{
			el.removeClass('textGray');
			el.val('');
		}
	});
	this.blur(function()
	{
		refreshStatus();
	});
	var self = this;
	var refreshStatus = function()
	{
		var el = self; //$(this);
		var val = getVal(el);
		var watermark = el.attr('watermark');
		if (val == '' || val == watermark)
		{
			el.val(watermark);
			el.addClass('textGray');
		} else
		{
			el.removeClass('textGray');
		}
	};
	refreshStatus();
};


//用于在form提交前清空水印
$.fn.clearWatermark = function()
{
	var inputs=$(this).find('input[watermark]');
	for(var i=inputs.length-1;i>=0;i--)
	{
		
		var el = $(inputs[i]);
		if (el.val() == el.attr('watermark'))
		{
			el.val('');
		}	
	}
};


//给文本框加水印  方法2
$.fn.watermark2 = function(txt){
	var getVal = function(el){
			if (el.length == 0) return '';
			if (el[0].type.toLowerCase() == 'a' || el[0].type.toLowerCase() == 'span'){
				return el.html();
			} else {
				return el.val();
			}
		},
		txtLabel = "txtLabel",
		createLabel = function(id, txt){
			return '<label class="' + txtLabel + '" for="'+ id +'" style="display: none;">'+txt+'</label>';
		}, 
		status = 'focus',
		attr = 'watermark',
		label, txt;

	return $(this).each(function(){
		var _this = $(this);
		if(txt = _this.attr(attr)){
			var label = _this.parent().find('.' + txtLabel);
			if(!label.length){
				label = $(createLabel(_this.attr('id'), txt)).prependTo(_this.parent());
			}
			if(getVal(_this) === ''){
				_this.removeClass(status);
				label.css('display', 'block');
			} else {
				label.css('display','none');
			}
			_this.on('focus blur', function(e){
				var _this = $(this),
					val = getVal(_this);

				if(e.type === status){
					_this.addClass(status);
					label.css('display','none');
				} else {
					_this.removeClass(status);
					if (val){
						label.css('display','none');
					} else {
						label.css('display','block');
					}
				}
			});
		}
	});
	
	/*
	if(this.length>0){
		$(this).each(function(i){
			if(typeof $(this).attr('watermark') != 'undefined') {
				txt = $(this).attr('watermark');
			}
			
			$(this).attr('watermark', txt);
			var objId = $(this).attr('id');
			$(this).before('<label class="txtLabel" for="'+objId+'" style="display: none;">'+txt+'</label>');
			if (getVal($(this)) == '')
			{
				$(this).siblings('label.txtLabel').css({'display':'block'});
				$(this).removeClass('focus');
			}
			else{
				$(this).siblings('label.txtLabel').css({'display':'none'});
			}
			$(this).focus(function()
			{
				var el = $(this);
				
				if (getVal(el) == '')
				{
					el.siblings('label.txtLabel').css({'display':'none'});
					el.addClass('focus');
				}
			});
			$(this).blur(function()
			{
				refreshStatus();
			});
			var self = $(this);
			var refreshStatus = function()
			{
				var el = self; //$(this);
				var val = getVal(el);
				if (val == '')
				{
					el.siblings('label.txtLabel').css({'display':'block'});
					el.removeClass('focus');
				} else
				{
					el.removeClass('focus');
				}
			};
			refreshStatus();
		});
	}
	else{
		if(typeof this.attr('watermark') != 'undefined') {
			txt = this.attr('watermark');
		}
		this.attr('watermark', txt);
		var objId = this.attr('id');
		this.before('<label class="txtLabel" for="'+objId+'" style="display: none;">'+txt+'</label>');
		if (getVal(this) == '')
		{
			this.siblings('label.txtLabel').css({'display':'block'});
			this.removeClass('focus');
		}
		else{
			this.siblings('label.txtLabel').css({'display':'none'});
		}
		this.focus(function()
		{
			var el = $(this);
			
			if (getVal(el) == '')
			{
				el.siblings('label.txtLabel').css({'display':'none'});
				el.addClass('focus');
			}
		});
		this.blur(function()
		{
			refreshStatus();
		});
		var self = this;
		var refreshStatus = function()
		{
			var el = self; //$(this);
			var val = getVal(el);
			if (val == '')
			{
				el.siblings('label.txtLabel').css({'display':'block'});
				el.removeClass('focus');
			} else
			{
				el.removeClass('focus');
			}
		};
		refreshStatus();
	}*/
};



/*
计算文本长度
*/

(function($)
{
	var Listener = function(el, opt)
	{
		//默认值
		var _default = {
			max: 4000,
			objTotal: $(el).closest('div').next().find('.content'),
			objLeft: $(el).closest('div').next().find('.prompt'),
			duration: 200,
			objTotalStyle: 'green',
			flag: false
		};
		//初始化参数
		var options = $.extend({}, _default, opt);
		var start = function()
		{
			//统计函数
			var _length, _oldLen, _lastRn;
			_oldLen = _length = 0;
			this.time = setInterval(function()
			{
				_length = el.val().length;
				if (el == null || typeof el == "undefined")
				{
					this.time = null;
					return;
				}
				if (!options.flag)
				{
					if (_length == _oldLen)	 //防止计时器做无用的计算
					{
						return;
					}
				}
				if (_length > options.max)
				{
					//避免ie最后两个字符为"\r\n",导致崩溃
					_lastRN = (el.val().substr(options.max - 1, 2) == "\r\n");
					el.val(el.val().substr(0, (_lastRN ? options.max - 1 : options.max)));
				}
				_oldLen = _length = el.val().length;
				//显示已输入字符
				if (options.objTotal != null)
				{
					options.objTotal.html(_length).addClass(options.objTotalStyle);
				};
				//显示剩余的输入字符
				if (options.objLeft != null)
				{
					options.objLeft.html((options.max - _length) < 0 ? 0 : (options.max - _length)).addClass(options.objTotalStyle);
				}
			}, options.duration);
		};

		var stop = function()
		{
			this.time = null;
		};
		if (options.objLeft != null)
		{
			try
			{
				
				var defaultLength = options.max - $(el).val().length;
				options.objLeft.html(defaultLength).addClass(options.objTotalStyle);
			}
			catch (e) { }
		};
		el.bind('focus', start);
		el.bind('blur', stop);
	};

})(jQuery);


/**
 * 时间类
 */
var timeUtil = {
		/**
		 *  @description  计算时间的间隔月
		 *  @param  begin_date  开始时间
		 *  @param  end_date	结束时间  
		 *  @retrun int
		 */
		date_diff_month:function(begin_date,end_date){
			var sTime,eTime;
			if(typeof(begin_date)=='undefined') {
				sTime = new Date();
			}
			else if(typeof(begin_date)=='string') {
				sTime = new Date(begin_date.replace(/\-/g, "/"));
			}else{
				sTime = begin_date;
			}
			if(typeof(end_date)=='undefined') {
				eTime = new Date();
			}
			else if(typeof(end_date)=='string') {
				eTime = new Date(end_date.replace(/\-/g, "/"));
			}else{
				eTime = end_date;
			}
			var diffmonth = (eTime.getFullYear()*12+eTime.getMonth()+1)-(sTime.getFullYear()*12+sTime.getMonth()+1);
			return diffmonth;	
		}
};

/**
 * 扩展方法: 时间格式化 
 */
Date.prototype.Format = function(fmt) {
  var o = {   
	"M+" : this.getMonth()+1,					
	"d+" : this.getDate(),				   
	"h+" : this.getHours(),				  
	"m+" : this.getMinutes(),				 
	"s+" : this.getSeconds()			  
  };   
  if(/(y+)/.test(fmt))   
	fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
  for(var k in o)   
	if(new RegExp("("+ k +")").test(fmt))   
  		fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
  return fmt;   
}; 


String.prototype.toInt = function(){
	return parseInt(this);
};
//字符串的长度，区分全角与半角
String.prototype.caseLength = function(){
	var self = this;
	var len = self.length;
	var caseLen = 0;
	for (var i = 0; i < len; i++)
	{
		if ((self.charCodeAt(i) & 0xff00) != 0){
			caseLen++;
		}
		caseLen++;
	}
	return caseLen;
};

// 截取字符串长度，一个全角字符算两个长度
String.prototype.caseSubStr = function(start, len){
	var self = this;
	var caseLen = 0;
	var l = 0;
	var tempLen = 0;
	var iStart = 0;
	var iLen = 0;
	for (var i = 0; i < self.length; i++){
		tempLen = 0;
		if ((self.charCodeAt(i) & 0xff00) != 0)
		{
			caseLen++;
			tempLen++;
		}
		caseLen++;
		tempLen++;
		if (caseLen >= start){
			if (iStart == null) iStart = i;
				l += tempLen;
				if (l >= len)
				{
					iLen = i - iStart + 1;
					break;
				}
			}
		}
	return this.substring(iStart, iLen);
}

//将字符串转换为float类型
String.prototype.toFloat = function(){
	return parseFloat(this);
};

//将日期字符串转换为日期类型，格式： 2010-11-5 16:00:00 
String.prototype.toDate = function(){
	var datePart = this.split(" ")[0];
	var temp = datePart.split("-");
	date = new Date(temp[0], temp[1] - 1, temp[2]);
	date.setHours(0);
	date.setMinutes(0);
	date.setSeconds(0);
	date.setMilliseconds(0);
	return date;
};

//去掉字符串的前后空格
// 2011-04-27 jon update
// 将单个的replace方法拆分为 两次调用，可使每个正则表达式变得简单，因此更快
String.prototype.trim = function()
{
return this.replace(/^\s+/,"").replace(/\s+$/,"");
/*
return this.replace(/(^\s*)|(\s*$)/g, "");
*/
}

// 应用于比较长的字符串清空空格

// 2011-04-27  jon  add
String.prototype.longTrim=function()
{
this.replace(/^\s+/,"");
for(var i=this.length-1;i>=0;i--)
{
if(/\s/.test(this.charAt(i)))
{
this.substring(0,i+1);
break;
}
}
return this;
}

// 字符串StringBuilder类
function StringBuilder()
{
	this._strings = new Array();		
}
StringBuilder.prototype.Append= function(value)
{
	this._strings.push(value);
	return this;
}
StringBuilder.prototype.Clear = function()
{
	this._strings.length=1;
}
StringBuilder.prototype.toString = function()
{
	return this._strings.join('');
}

//写Cookie
function writeCookie(name, value)
{
	var expire = new Date();
	expire.setFullYear(expire.getFullYear() + 20);
	expire = '; expires=' + expire.toGMTString();
	document.cookie = name + '=' + escape(value) + expire;
}

// 读取Cookie
function readCookie(name)
{
	var cookieValue = '';
	var search = name + '=';
	if (document.cookie.length > 0)
	{
		var offset = document.cookie.indexOf(search)
		if (offset != -1)
		{
			offset += search.length;
			var end = document.cookie.indexOf(';', offset);
			if (end == -1) end = document.cookie.length;
			cookieValue = unescape(document.cookie.substring(offset, end));
		}
	}
	return cookieValue;
}

//检查个人用户是否登录，参数是登录成功后的回调函数
//如果没登录返回false并弹出登录界面
function checkPersonLogin(url)
{
  var logined = true;
  var userid = readCookie('userid');
  var usertype = readCookie('usertype');
  if (!(userid>0 && usertype=='p'))
  {
	  var url = '/login/index/url-'+escape(url)+'.html';
	  location.href=url;
  }
  return logined;
}

/**
 * ajax验证个人登录
 *  检查个人用户是否登录，参数是登录成功后的回调函数
 *  如果没登录返回false并弹出登录界面
 * @param callback
 * @param onclose
 * @returns {Boolean}
 */
function ajaxCheckPersonLogin(callback,onclose)
{
	var logined = true;
	var userid = readCookie('userid');
	var usertype = readCookie('usertype');
	if (!(userid>0 && usertype=='p')){
		logined = false;
	}
	if (!logined)
	{
		var url = '/login/Index/success-' + (callback || '');
		$.showModal(url, { title: '个人登录', animate: false, onclose: onclose });
	}
	return logined;
}

//检查单位用户是否登录，参数是登录成功后的回调函数
//如果没登录返回false并弹出登录界面
function checkCompanyLogin(url)
{
	var logined = true;
	var userid = readCookie('userid');
	var usertype = readCookie('usertype');
	if (!(userid>0 && usertype=='c'))
	{
		var url = '/login/index/url-'+escape(url)+'.html';
		location.href=url;
	}
	return logined;
}

/**
 *
 *  cookie 使用类
 */
var cookieutility = {
	set:function(name, value,expiretime) { //设置cookie
		var expire = new Date();
		if(isNaN(expiretime)) {
			expire.setFullYear(expire.getFullYear() + 20);
		}else {
			expire.setTime(expire.getTime() + parseInt(expiretime)*24*60*60*1000);	
		}
		expire = '; expires=' + expire.toGMTString();
		document.cookie = name + '=' + escape(value) + expire;				
	},
	get:function(name) {  //读取cookie
		var cookieValue = '';
		var search = name + '=';
		if (document.cookie.length > 0)
		{
			var offset = document.cookie.indexOf(search)
			if (offset != -1)
			{
				offset += search.length;
				var end = document.cookie.indexOf(';', offset);
				if (end == -1) end = document.cookie.length;
				cookieValue = unescape(document.cookie.substring(offset, end));
			}
		}
		return cookieValue;		
	},
	del:function(name) {  //删除cookie
		var exp = new Date();
		exp.setTime(exp.getTime() - 1);
		var val=this.get(name);
		if(val!=null) document.cookie= name + "="+val+";expires="+exp.toGMTString();		
	}	
}


//ECMAScript 5 Function.prototype.bind函数兼容处理 
if ( !Function.prototype.bind ) { 
	Function.prototype.bind = function (o) { 
		var self = this,
			boundArgs = Array.prototype.slice.call(arguments,0); 
		return function(){ 
			var args = [], 
				i; 
			for (i = 1; i < boundArgs.length; i++ ) {
					args.push(boundArgs[i]); 
			}		
			for ( i = 0; i < arguments.length; i++ ) {
				args.push(arguments[i]); 
			}
			return self.apply(o,args); 
		} 
	} 
} 

//通过自身的选中状态选中其它复选框
$.fn.checkBox = function(chk,table){
	var checked = this.attr('checked');
	var inputCheckBoxs = !table ? $('input:not(:disabled)[type=checkbox][name="' + chk + '"]') : $(table).find('input:not(:disabled)[type=checkbox][name="' + chk + '"]');
	inputCheckBoxs.attr("checked",checked);
};

//给当前复先框绑定选中事件( 2014-04-04 Lvke)
$.fn.changeCheckBox = function(container, chk, fn){
	
	function getSelectBoxs(checkboxs){
		return checkboxs.filter(function(){
			return $(this).prop('checked');
		});
	}
	var target = $(container),
		childName = 'input:not(:disabled)[type=checkbox][name="' + chk + '"]',
		checkboxs =  target.find(childName);
	if(!target[0] && !checkboxs[0]) return;
	fn && target.on('change', childName, function(){
		fn(getSelectBoxs(checkboxs), getSelectBoxs(checkboxs).length);
	});
	return this.each(function(){
		$(this).on('change', function(){
			if($(this).prop('checked')){
				checkboxs.prop('checked', true);
			} else {
				checkboxs.prop('checked', false);
			}
			fn && fn(getSelectBoxs(checkboxs), getSelectBoxs(checkboxs).length);
		});
	});
}

//给当前复先框绑定选中事件
$.fn.bindCheckBox = function(chk,containerName,isNumStat)
{
	// 2011-04-29  jon
	// 替换为checkBox click绑定匿名函数
	var con=$(containerName);
	$(this).click(function()
	{
		var _self=$(this);
		var checked = _self.attr('checked');
		var inputCheckBoxs=!containerName?$('input:not(:disabled)[type=checkbox][name="' + chk + '"]'):con.find('input:not(:disabled)[type=checkbox][name="' + chk + '"]');
		if(!checked) {
			inputCheckBoxs.removeAttr('checked');
		}else {
			inputCheckBoxs.attr("checked",checked);	
		}
		if(isNumStat){
			var checked_num = !containerName?$('input:not(:disabled)[type=checkbox][name="' + chk + '"]:checked').lenght:con.find('input:not(:disabled)[type=checkbox][name="' + chk + '"]:checked').length;
			$('#emNum').html('已选择'+checked_num+'个职位');
		}
	});
		var c = {
		checkbox: this,
		selector: chk,
		check: function()
		{
			var _self= c;
			var checked = 0, unchecked = 0;
			var checkBoxs=!containerName?$('input[type="checkbox"][name="' + _self.selector + '"]'):con.find('input[type="checkbox"][name="' + _self.selector + '"]');
			for(var i=checkBoxs.length-1;i>=0;i--)
			{
			var el=$(checkBoxs[i]);
			if (el.attr('checked'))
			{
				checked++;
			} else if (el.attr('disabled') != true)
			{
				unchecked++;
			}
			}
			var allCheck = checked > 0 && unchecked == 0;
			_self.checkbox.attr('checked', allCheck);
			if(isNumStat){
				$('#emNum').html('已选择'+checked+'个职位');
			}
		}
	};
	this.data('checkBoxName', c);
	(!containerName?$('input[type="checkbox"][name="' + chk + '"]'):con.find('input[type="checkbox"][name="' + chk + '"]')).live('click', c.check);
};



/**
 * 隐藏元素，
 * 	点击文档区域时，如果不是所属的元素或不是指定元素的子元素，隐藏指定的元素
 *  <param>element</param> object，需隐藏的jquery dom对象
 *  <param>curID</param>   string  
 *  <param>parentID</param>string  
 */
$.extend({
	concealElement:function(element,curID,parentID) {
	   $('body').click(function(e){
			// 检测发生在body中的点击事件
		   	var cID = curID,
		   		pID = parentID,
				cell = $(e.target);
			if (!cell)return;
			var tgID = $(cell).attr('id') == '' ? "string" : $(cell).attr('id');
			var isTagert = true;
			 // 如果事件触发元素不是Input元素 并且不是发生在时间控件区域
			 if(cID&&cID!=''&&cID!=null) {
				 isTagert = (isTagert&&tgID!=cID&&$(cell).closest('#' + cID).length <= 0);
			 }
			 if(pID&&pID!=''&&pID!=null) {
				 isTagert = isTagert && tgID!=pID && $(cell).closest('#' + pID).length <= 0;
			 }
			if (isTagert){
				element.hide();
			}
		});
	}
});

	/**
	 * 鼠标悬停/离开父级元素时隐藏元素 
	 */
	$.fn.extend({
		mouseOverHide: function(element,parendID) {
			$(this).mouseover(function(){
				element.show();
			}).mouseout(function(e){
				var target = $(e.relatedTarget);
				if(target.closest('#'+parendID).length<=0) {
					element.hide();
				}
			});
			$('#'+parendID).mouseout(function(e){
				var target = $(e.relatedTarget);
				if(target.closest('#'+parendID).length<=0) {
					element.hide();
				}
				
			});
	  	}
	});

var ajaxLoginconfig = {
		window:null
};
/**
 *  扩展jquery的ajax方法
 */ 
	(function($){  
		//备份jquery的ajax方法  
		var _ajax=$.ajax;
		//重写  
		$.ajax = function(opt){  
			//备份error和success方法  
			var fn = {
				error:function(XMLHttpRequest, textStatus, errorThrown){},  
				success:function(data, textStatus){}  
			};  
			if(opt.error){  
				fn.error=opt.error;  
			}  
			if(opt.success){  
				fn.success=opt.success;  
			} 
			var strToJson = function(str){  
				var json = (new Function("return " + str))();  
				return json;  
			};
			var isJson = function(str) {
				return str.match("^\{(.+:.+,*){1,}\}$");
			};
			
			var preProcess = function(result,status,isWindow,success) {
				if(result&&result.isNeedLogin) {
					//XXX: 是否会出现循环加载的情况
					var url = result.type=='c'?'/login/ajaxlogin':'/login/ajaxlogin'; // 设置企业和个人不同的ajax登录地址
					if(isWindow){ 
						 // 扩展属性
						 // 通过调用插件dialog.js 触发的ajax事件
						 $.ajax({
							 url:url,
							 dataType: 'html',
							 success:success
						 });
					}else {
						if(ajaxLoginconfig.window!=null) {
							try
							{
								ajaxLoginconfig.window.close();
							}catch(err){}
						}
						ajaxLoginconfig.window = $.showModal(url,{title:'您离开太久了，请重新登录！'});
					}
				}else {
					success(result, status);
				}
			};
			//扩展处理  
			var _opt = $.extend(opt,{  
				error:function(XMLHttpRequest, textStatus, errorThrown){  
					//错误方法
					fn.error(XMLHttpRequest, textStatus, errorThrown);  
				},  
				success:function(data,textStatus){
					//成功回调
					if(data&&typeof data =='string'&&isJson(data)) {
						result = strToJson(data);
						preProcess(result,textStatus,this.isWindow,fn.success); 	
					}else if(data&&data.isNeedLogin) {
						preProcess(data,textStatus,this.isWindow,fn.success);
					}else {
						fn.success(data, textStatus);
					}
				}  
			});  
			_ajax(_opt);  
		};  
	})(jQuery);
   
   var zindex = 100;
   var getZIndex = function() { return zindex++; };

   //照片显示插件
   function showPhotoHD(node, photo, hdPhoto) {
	   var el = $(node);
	   var doc = $(document);
	   var wnd = $(window);
	   var offset = el.offset();
	   var top = 0;
	   var left = 0;
	   var fix = 2;
	   var isHd = false;
	   var toTop = function(el, con) {
		   top = offset.top - con.height() - fix - 3;
		   left = offset.left + el.width() + fix;
		   if (left + con.outerWidth() > wnd.scrollLeft() + wnd.width()) {
			   left -= left + con.outerWidth() - wnd.scrollLeft() - wnd.width();
		   }
		   return top >= wnd.scrollTop();
	   }

	   var toBottom = function(el, con) {
		   top = offset.top + el.height() + fix;
		   left = offset.left - con.outerWidth() - fix;
		   if (left < wnd.scrollLeft()) {
			   left += wnd.scrollLeft() - left;
		   }
		   return top + con.outerHeight() <= wnd.scrollTop() + wnd.height();
	   }
	   //定位
	   var pos = function(el, con) {
		   //如果是高清照直接定位在左边
		   if (isHd) {
			   top = offset.top;
			   //310为小图的宽度度+大图的宽度+白色的间距部分
			   left = offset.left - con.outerWidth() + 310;
		   } else {
			   if (!toTop(el, con)) toBottom(el, con);
		   }
		   con.css({ top: top, left: left, 'z-index': getZIndex() });
		   con.show();
		   el.mouseout(function() {
			   con.hide();
		   });
	   }

	   if (hdPhoto) {
		   var hdImg = $('img[src="' + hdPhoto + '"]');
		   if (hdImg.length > 0) {
			   isHd = true;
			   pos(el, hdImg.closest('div.floatlayer_pic'));			
			   return;
		   }
	   } else {
		   var norImg = $('img[src="' + photo + '"]');
		   if (norImg.length > 0) {
			   pos(el, norImg.closest('div.floatlayer_pic'));
			   return;
		   }
	   }
	   var src = null;
	   var width = 0;
	   var height = 0;
	   if (hdPhoto) {
		   isHd = true;
		   src = hdPhoto;
		   width = 180;
		   height = 225;
	   } else if (photo) {
		   src = photo;
		   width = 120;
		   height = 150;
	   }
	   var img = $('<div class="" style="position:absolute;top:-1000px;left:-1000px;"><img width="'+width+'" height="'+height+'" src="' + src + '"/></div>');
	   var div = $('<div style="position:absolute;overflow:hidden;" class="floatlayer_pic"></div>');
	   div.append(img);
	   div.css({ width: width + 4, height: height + 4 });
	   div.appendTo('body');
	   var failNotify = setTimeout(function() {
		   div.addClass(isHd ? 'floatlayer_error2' : 'floatlayer_error').html('照片加载失败');
	   }, 10000);
	   img.find('img').load(function() {
		   clearTimeout(failNotify);
		   $(this).closest('div').css({ left: 0, top: 0 });
		   $(this).closest('div').parent().bgIframe();
	   });
	   pos(el, div);
	   el.mouseout(function() {
		   div.hide();
	   });
   }  

(function($) {
$.extend({
	dateFormat: {
		/**
		* 日期 转换为 Unix时间戳
		* @param <int> year    年
		* @param <int> month   月
		* @param <int> day     日
		* @param <int> hour    时
		* @param <int> minute  分
		* @param <int> second  秒
		* @return <int>        unix时间戳(秒)
		*/
		DateToUnix: function(year, month, day, hour, minute, second){
			var oDate = new Date(Date.UTC(parseInt(year),parseInt(month), parseInt(day),parseInt(hour), parseInt(minute),parseInt(second) ) );
			return (oDate.getTime()/1000);
		}, 
		/**
		* 时间戳转换日期
		* @param <int> unixTime    待时间戳(秒)
		* @param <bool> isFull    返回完整时间(Y-m-d 或者 Y-m-d H:i:s)
		* @param <int>  timeZone   时区
		*/
		UnixToDate: function(unixTime, isFull, timeZone){
			if (typeof(timeZone) == 'number'){
				unixTime = parseInt(unixTime) + parseInt(timeZone) * 60 * 60;
			}
			var time = new Date(unixTime*1000);
			var ymdhis = "";
			ymdhis=time.getFullYear() + "-" + appendZero(time.getMonth() + 1) + "-" + appendZero(time.getDate());
			if ( isFull === true ){
				ymdhis += " " + time.getHours() + ":";
				ymdhis += time.getMinutes() + ":";
				ymdhis += time.getSeconds();
			}
			/*
			ymdhis += time.getUTCFullYear() + "-";
			ymdhis += time.getUTCMonth() + "-";
			ymdhis += time.getUTCDate(); 
			if ( isFull === true ){
				ymdhis += " " + time.getUTCHours() + ":";
				ymdhis += time.getUTCMinutes() + ":";
				ymdhis += time.getUTCSeconds();     
			} 
			*/
			return ymdhis;
		}
	}
});
})(jQuery);

//jquery 时间格式化
//将绑定的元素转化成被格式化后的日期；
//dateFormate(".dateFormate",{$time});
//将class=dateFormate的所有元素都替换成时间格式
function dateFormate(obj,serverTime){
	var dateFormate,updateTime,sleep;
	$(obj).each(function(){
		updateTime=parseInt(this.innerHTML);
		if (updateTime>0){
			if (parseInt(serverTime)>0){

				dateFormate = $.dateFormat.UnixToDate(updateTime,true,0);
				//dateFormate = new Date(parseInt(updateTime) * 1000).toLocaleString().replace(/年|月/g, "-").replace(/日/g, "");
				sleep=serverTime-updateTime;
				/**/
				if (sleep<60) dateFormate=sleep+'秒之前';
				if (sleep>60 && sleep<3600) dateFormate=parseInt(sleep/60)+'分钟之前';
				if (sleep>3600 && sleep<3600*24) dateFormate=parseInt(sleep/3600)+'小时之前';
				if (sleep>3600*24 && sleep<3600*24*30) dateFormate=parseInt(sleep/(3600*24))+'天之前';
				
				this.innerHTML=dateFormate;
			}
		}
	});
}
//补0函数
function appendZero(s) {
	return ("00" + s).substr((s + "").length);
}