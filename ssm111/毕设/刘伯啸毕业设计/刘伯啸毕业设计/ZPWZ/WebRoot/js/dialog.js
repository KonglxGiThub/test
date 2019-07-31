/**
 *  dialog.js   
 */
(function($)
{
    var contextData = '_dialog';
    var cachedata = {};
    var arrweebox = new Array();
    var dialogID = 0;
    var getID = function() { return dialogID++; }
    var getElement = function(obj)
    {
        if ($.isPlainObject(obj)) return obj;
        if (typeof (obj) == 'string') return $(obj);
        return obj;
    }
	var zindex = 10000;
	var getZIndex = function() {
		 return zindex++; 
    };
    var errorHtml =
    '            	<div class="dialogError">' +
    '            		非常抱歉，数据加载失败' +
    '                </div>' +
    '               <div class="dialogErrBtn"><a class="btn1 btnsF12" onclick="$(this).closeDialog();" href="javascript:void(0)">关闭</a></div>';
    var weebox = function(opt)
    {
        this.id = '';
        this.dh = null;
        this.mh = null;
        this.dc = null;
        this.dt = null;
        this.header = null; //窗口头部，包括关闭按钮
        this.dw = null; //窗口内部装内容的部分，设置宽度时就设置这个
        this.db = null;
        this._dragging = false;
        this.cachedContent = null;
        this.options = null;
        this.contentInited = false;
        this._defaults = {
            src: null, //当弹出confirm对话框时引用的原Jquery对象，在事件函数的时候会以参数传回去
            cache: false,
            type: 'dialog', //类型 message confirm dialog model hover anchor等
            title: '',
            width: 0,
            height: 0,
            maskClass: 'dialogMask', //遮罩层的class名称
            timeout: 0,
            draggable: true,
            modal: true,    //是否模态
            focus: null,
            blur: null,
            left: 0,
            top: 0,
            position: 'center',
            anchorPosition: true, //是否始终定位在某一位置，只在某些状态下有效
            dependElement: null,
            keepHover: null, //要保持浮动窗口的节点，当点击在这些节点内时不会关闭浮动窗口
            overlay: 30,
            icon: '',
            showBackground: true,
            showBorder: true,
            showHeader: true,
            showButton: true,
            showCancel: true,
            showClose: true,
            showOk: true,
            showMask: false, //是否显示遮罩
            okBtnName: '确定',
            cancelBtnName: '取消',
            content: '',
            contentType: 'text',
            contentChange: false,
            clickClose: false,
            animate: '',
            showAnimate: '',
            hideAnimate: '',
            onclose: null, //事件
            onopen: null,
            oncancel: null,
            onok: null        
            //select: { url: '', type: 'radio', tele: '', vele: '', width: 120, search: false, fn: null }
        };

        var self = this;
        //初始化选项
        this.initOptions = function()
        {
            var tempOpt = opt || {};
            tempOpt.animate = tempOpt.animate || '';
            tempOpt.showAnimate = tempOpt.showAnimate || tempOpt.animate;
            tempOpt.hideAnimate = tempOpt.hideAnimate || tempOpt.animate;
            self.options = $.extend({}, this._defaults, tempOpt);
        };

        //初始化弹窗Box
        this.initBox = function()
        {
            if (self.options.id)
            {
                self.id = self.options.id;
            } else
            {
                self.id = getID();
            }
		    
            var html = '';
            switch (self.options.type)
            {
                case 'anchor': //定位于屏幕某一位置的窗口
					var iconFont  = ''; //字体图标
					var typeClass = ''; //字体class
                    switch (self.options.icon)
                    {
                        case 'success':
							iconFont = '&#xf058;';
							typeClass = 'prtSuccess';
                            break;
                        case 'fail':
							iconFont = '&#xf057;';
							typeClass = 'prtFail';
                            break;
                        case 'warning':
							iconFont = '&#xf06a;';
							typeClass = 'prtWarning';
                            break;
                        case 'question':
							iconFont = '&#xf059;';
							typeClass = 'prtQuestion';
                            break;
                        case 'info':
							iconFont = '&#xf06a;';
							typeClass = 'prt prtInfo';
                            break;
                    }
					html = '<div class="_dialog" id="_dialog' + self.id + '">' +
						   '	<div class="prt ' + typeClass + '">' +
						   '    	<div class="prtCon">'+
						   '    		<i class="jpFntWes">' + iconFont +'</i><span class="_dialogContent prtTxt"></span><span class="clear"></span>' +
						   '    	</div>' +
						   '    </div>'
						   '</div>';
                    break;
                case 'message': //提示窗口
                case 'confirm': //确认窗口
                    html = '<div class="_dialog dialog" id="_dialog' + self.id + '">' +
					'	<div class="dialogCon">' +
                    '    <div class="dialogHead _dialogHeader"><span class="_title">系统消息</span><a href="javascript:void(0)" class="dialogClose _dialogClose" title="关闭">×</a></div> ' +
						'	<table border="0" cellspacing="0" cellpadding="0">' +
						'		<tr>' +
						'			<td class="dialog-cl"></td>' +
						'			<td>' +
						'				<div class="_container dialogContent"><div class="_dialogContent popTxt"></div>' +
						'				<div class="_dialog-button dialogBtn">' +
						'					<a href="javascript:void(0)" class="btn1 btnsF12 _dialogOk">确&nbsp;定</a>' +
						'					<a href="javascript:void(0)" class="btn3 btnsF12 _dialogCancel">取&nbsp;消</a>' +
						'				</div>' +
						'</div>' +
						'			</td>' +
						'			<td class="dialog-cr"></td>' +
						'		</tr>' +
						'	</table>' +
						'	</div>' +
						'</div>';
                    break;
                case 'modal': //模式窗口
                case 'dialog': //非模式窗口
                    html = '<div class="_dialog dialog" id="_dialog' + self.id + '">' +
						'<div class="dialogCon">' +
                        '	<div class="dialogHead _dialogHeader"><span class="_title">系统消息</span><a href="javascript:void(0)" class="dialogClose _dialogClose" title="关闭">×</a></div> ' +
						'	<table border="0" cellspacing="0" cellpadding="0">' +
						'		<tr>' +
						'			<td class="dialog-cl"></td>' +
						'			<td>' +
						'				<div class="_container _dialogContent dialogContent"></div>' +
						'			</td>' +
						'			<td class="dialog-cr"></td>' +
						'		</tr>' +
						'	</table>' +
						'</div>' +
						'</div>';
                    break;		
				case 'running':
                    html = '<div class="_dialog dialog" id="_dialog' + self.id + '" style="padding:0;">' +
						'<div class="dialogCon"  style="background:none;_overflow:hidden;">' +
                        '	<div class="dialogHead _dialogHeader"><span class="_title">系统消息</span><a href="javascript:void(0)" class="dialogClose _dialogClose" title="关闭"></a></div> ' +
						'	<table border="0" cellspacing="0" cellpadding="0">' +
						'		<tr>' +
						'			<td class="dialog-cl"></td>' +
						'			<td>' +
						'				<div class="_container _dialogContent dialogContent" style="padding:0;overflow:inherit"></div>' +
						'			</td>' +
						'			<td class="dialog-cr"></td>' +
						'		</tr>' +
						'	</table>' +
						'</div>' +
						'</div>';
			         break;
                case 'img': //图片
                    html = '<div class="_dialog" id="_dialog' + self.id + '"></div>';
                    break;
            }
			self.dh = $(html).appendTo('body').css({
				position: 'absolute',
				//    overflow: 'hidden',
				zIndex: getZIndex(),
				left: -10000,
				top: -10000
			});
			
			// 初始化样式和元素
            if (self.options.type == 'message' || self.options.type == 'confirm')
            {
                self.dh.addClass('dialogSel');
            }
            self.dc = self.find('._dialogContent');
            self.dt = self.find('._title');
            self.dw = self.find('._container');
            self.header = self.find('._dialogHeader');
            self.db = self.find('._dialogButton');

            if (self.options.boxclass)
            {
                self.dh.addClass(self.options.boxclass);
            }
            if (self.options.height > 0)
            {
                self.dc.css('height', self.options.height);
            }
            if (self.options.width > 0)
            {
                self.dw.css('width', self.options.width);
            }
            if (self.options.position == 'anchorRight')
            {
                self.dh.addClass('anchorRight');
            }
            self.dh.data(contextData, self);
        }

        //初始化遮照
        this.initMask = function()
        {
            if (self.options.showMask)
            {
				// 是否显示遮罩层
				var pos = function() {
					var h, w;
					var wnd = $(window);
					var doc = $(document);
					if (doc.height() > wnd.height())
					{
						h = doc.height() - 5; //self.bheight();
						w = doc.width() - 21;
					} else
					{
						h = doc.height() - 5; //self.bheight();
						w = doc.width() - 5;
					}
					return {height:h,width:w};				
				}

                //临时用于type=modeal的遮罩层样式
                if(self.options.type == 'modal') {
					self.options.maskClass='dialogMask';
				}
			    var isIE6=$.browser.msie&&($.browser.version=="6.0");
			    if(isIE6)
			    {  
				     // 解决Ie 6bug
				    var a = pos();
                    self.mh = $('<div id="_mask' + self.id + '" class="' + self.options.maskClass + '"></div>')
				    .appendTo('body').show().css(
				    {
				        width: a.width,
				        height: a.height,
				        position:'absolute',
				        zIndex: getZIndex()
				    }).bgiframe();
					//.animate({opacity: 0.5},500)
			        $(window).resize(function()
                    {
						var a = pos();
                        self.mh.css({ height: a.height, width: a.width });
                    });
			    }
			    else
			    {
                    self.mh = $('<div id="_mask' + self.id + '" class="' + self.options.maskClass + '"></div>')
				    .appendTo('body').show().css(
				    {
				        zIndex: getZIndex()
				    }).bgiframe();	
					//.animate({opacity: 0.5},500)		    
			    }
            }
        }
		// 设置title
        this.setTitle = function(title)
        {
            if (title == '')
            {
                self.dt.html('&nbsp;');
            } else
            {
                self.dt.html(title);
            }
        }

        //初始化弹窗内容
        this.initContent = function(content)
        {
			// 设置title 
			self.setTitle(self.options.title);			
            self.dh.find("._dialogOk").val(self.options.okBtnName);
            self.dh.find("._dialogCancel").val(self.options.cancelBtnName);

			// 是否显示header
            if (!self.options.showHeader)
            {
                self.header.hide();
            }
			// 是否显示边框
            if (!self.options.showBorder)
            {
                self.dh.css({ border: 'none' });
                self.dc.css({ border: 'none' });
            }
			// 背景颜色
            if (!self.options.showBackground)
            {
                self.dh.css({ background: 'none' });
                self.dc.css({ background: 'none' });
            }
			// 显示按钮
            if (!self.options.showButton)
            {
                self.dh.find('._dialogButton').hide();
            }
			// 是否显示取消按钮
            if (!self.options.showCancel)
            {
                self.dh.find('._dialogCancel').hide();
            }
			//是否显示关闭按钮
            if (!self.options.showClose)
            {
                self.dh.find('._dialogClose').hide();
            }
			// 是否显示ok按钮
            if (!self.options.showOk)
            {
                self.dh.find("._dialogOk").hide();
            }

            //如果没有图标内容不偏移
			/*
            if (!self.options.icon)
            {
                //self.dc.css({padding:0});
            }
			*/
            if (self.options.contentType == "selector")
            {
				// 如果是选择一个元素
                var content = getElement(self.options.content).clone(true);
                content.show();
                content.css('display', 'block');
                self.setContent(content);
                self.contentInited = true;
                self.onopen();
            } else if (self.options.contentType == "ajax")
            {
				// 加载一个页面到窗口
                self.setLoading();
				//return;
                var stop = self.stopLoading;
                setTimeout(stop, 8000);
                var url = self.options.content;
                $.ajax(
                {
                    url: url,
                    dataType: 'html',
                    isWindow: true,
                    success: function(data)
                    {
                        self.stopLoading();
                        self.setContent(data);
                        self.innerShow(true);
                        if (self.options.cache)
                        {
                            self.cachedContent = data;
                        }
                        self.contentInited = true;
                        self.onopen();
                    },
                    error: function(XMLHttpRequest, textStatus, errorThrown)
                    {
                        self.stopLoading();
                        self.setContent(errorHtml);
                        self.innerShow(true);
                        if (self.options.cache)
                        {
                            self.cachedContent = data;
                        }
                        self.contentInited = true;
                        self.onopen();
                    }
                });
            } else if (self.options.contentType == "iframe")
            { 
				/*加入iframe使程序可以直接引用其它页面 by ePim*/
                var html = '<style type="text/css">';
                html += ('\n.dialog-box .dialogContent{padding:0px;}');
                html += ('\n</style>');
                html += ('<iframe class="dialogIframe" src="' + self.options.content + '" width="100%" height="100%" frameborder="0"></iframe>');
                self.setContent(html);
                self.contentInited = true;
                self.onopen();
                //self.show();
            } else if (self.options.contentType == 'img')
            {
                var html = '<div class="floatlayer_pic"><img src="' + self.options.content + '" /></div>';
                self.setContent(html);
                self.contentInited = true;
                self.onopen();
            } else
            {
                self.setContent(self.options.content);
                self.contentInited = true;
                self.onopen();
            }
        }

        //初始化弹窗事件
        this.initEvent = function()
        {
            self.dh.find("._dialogClose, ._dialogCancel, ._dialogOk")
			.unbind('click').click(function() { 
				$(this).closeDialog();
				 return false;
		     });
            //当用户按下键盘按钮时触取消按钮
            self.dh.keydown(function(event)
            {
                var e = $.event.fix(event);
                //esc键， 等效于退出按钮
                if (e.keyCode == 27)
                {
                    var cancell = self.dh.find('._dialogCancel');
                    if (cancell.is(':visible'))
                    {
                        cancell.click();
                    } else if (self.dh.find('._dialogClose').is(':visible'))
                    {
                        self.dh.find('._dialogClose').click();
                    }
                }
            });
            self.dh.mousedown( function() { self.dh.css('z-index', getZIndex()) });
            if (self.options.onok)
            {
                self.setOnok(self.options.onok);
            }

            if (self.options.oncancel)
            {
                self.setOncancel(self.options.oncancel);
            }

            if (self.options.timeout > 0)
            {
                window.setTimeout(self.close, (self.options.timeout * 1000));
            }
            if (self.options.type == 'hover') {
                $('body').mousedown(function(event) {
                    var e = $.event.fix(event);
                    var src = e.target;
                    var keep = false;
                    if (self.dh[0] == src || $.contains(self.dh[0], src)){
                        keep = true;
                    }
                    //如果是在模式窗口内也不关闭
                    $('._dialog').each(function() {
                        if ($.contains(this, src)) {
							 keep = true;
						}	 
                    });
                    if (!keep && self.options.keepHover) {
                        if ($.isArray(self.options.keepHover)) {
                            try{
                                for (var i in self.options.keepHover){
                                    if (typeof self.options.keepHover[i] == 'string'){
                                        $(self.options.keepHover[i]).each(function(){
                                            if (this == src || $.contains(this, src)){
                                                keep = true;
                                            }
                                        });
                                    } else{
                                        var el = self.options.keepHover[i][0];
                                        if (el == src || $.contains(el, src)){
                                            keep = true;
                                        }
                                    }

                                }
                            } catch (e) { }
                        } else
                        {
                            try
                            {
                                if (typeof self.options.keepHover == 'string') {
                                    $(self.options.keepHover).each(function(){
                                        if (this == src || $.contains(this, src)){
                                            keep = true;
                                        }
                                    });
                                } else{
                                    var el = self.options.keepHover[0];
                                    if (el == src || $.contains(el, src)){
                                        keep = true;
                                    }
                                }
                            } catch (e) { }
                        }
                    }
                    if (!keep) {
						 self.close();
					}
                });

                self.dh.find('tr').each(function(){
                    $(this).mouseover(function() { $(this).addClass('cu'); }).mouseout(function() { $(this).removeClass('cu'); });
                });
            }
            self.drag();
        }

        //设置onok事件
        this.setOnok = function(fn)
        {
            //self.dh.find(".dialog-ok").unbind('click');
            if (typeof (fn) == "function")
            {
                var src = self.options.src;
                self.dh.find("._dialogOk").click(function() { fn(src); });
            } else if (typeof fn == 'number')
            {
                self.dh.find("._dialogOk").click(function()
                {
                    window.history.go(fn);
                });
            } else if (typeof fn == 'string')
            {
                self.dh.find("._dialogOk").click(function()
                {
                    window.location = fn;
                });
            }
        }
        //设置onOncancel事件
        this.setOncancel = function(fn)
        {
            //self.dh.find(".dialog-cancel").unbind('click');
            if (typeof (fn) == "function")
            {
                var src = self.options.src;
                self.dh.find("._dialogClose,._dialogCancel").click(function() { fn(src) });
            } else if (typeof (fn) == "number")
            {
                self.dh.find("._dialogClose,._dialogCancel").click(function() { window.history.go(fn); });
            } else if (typeof (fn) == "function")
            {
                self.dh.find("._dialogClose,._dialogCancel").click(function() { window.location = fn; });
            }
        }

        //打开前的回弹函数
        this.onopen = function()
        {
            if (typeof (self.options.onopen) == "function")
            {
                self.options.onopen(self);
            }
        }

        //关闭事件
        this.onclose = function()
        {
            //如果是加载的页面，清空高亮显示的行
			/*
            if (self.options.contentType == 'ajax' && (self.options.type == 'modal' || self.options.type == 'dialog'))
            {
               // clearHighLight();
            }*/
            if (typeof self.options.onclose == 'number')
            {
                window.history.go(self.options.onclose);
            } else if (typeof self.options.onclose == 'string')
            {
                setTimeout('window.location = "' + self.options.onclose + '";', 100);

            } else if (typeof (self.options.onclose) == "function")
            {
                var src = self.options.src;
                return self.options.onclose(src);
            }
        }

        //弹窗拖拽
        this.drag = function()
        {
            //取消拖动效果，因为加上了iframe后拖动不了
            return;
            if (self.options.draggable && self.options.showHeader)
            {
                var header = self.dh.find('._dialogHeader');
                header.css('cursor', 'move');
                var mouseMove = function(event)
                {
                    var h = self;
                    //var o = document;
                    var width = h.dh.width();
                    var height = h.dh.height();
                    if (window.getSelection){
                        window.getSelection().removeAllRanges();
                    } else{
                        document.selection.empty();
                    }
                    var left = event.clientX - h.mx; // Math.max(event.clientX - h.mx, 0);
                    var top = event.clientY - h.my; //Math.max(event.clientY - h.my, 0);
                    h.dh.css({ left: left, top: top });
                };
                var mouseUp = function(){
                    var h = self;
                    if (h.releaseCapture)
                    {
                        h.releaseCapture();
                    }
                    $(document).unbind('mousemove');
                    $(document).unbind('mouseup');
                };
                var mouseDown = function(event){
                    var dhleft = parseInt(self.dh.css('left').replace('px'));
                    var dhtop = parseInt(self.dh.css('top').replace('px'));
                    self.mx = event.clientX - dhleft; // event.clientX;
                    self.my = event.clientY - dhtop; //event.clientY;
                    if (self.setCapture)
                    {
                        self.setCapture();
                    }

                    $(document).mousemove(mouseMove).mouseup(mouseUp);
                };
                header.mousedown(mouseDown);
            }
        }
        //增加一个按钮
        this.addButton = function(opt){
            opt = opt || {};
            opt.title = opt.title || 'OK';
            opt.bclass = opt.bclass || 'dialog-btn1';
            opt.fn = opt.fn || null;
            opt.index = opt.index || 0;
            var btn = $('<input type="button" class="' + opt.bclass + '" value="' + opt.title + '">').click(function()
            {
                if (typeof opt.fn == "function") opt.fn(self);
            });
            if (opt.index < self.db.find('input').length)
            {
                self.db.find('input:eq(' + opt.index + ')').before(btn);
            } else
            {
                self.db.append(opt);
            }
        }
        this.hide = function(fn){
            if (typeof self.options.hideAnimate == "string")
            {
                self.dh.hide(self.options.animate, fn);
            } else
            {

                self.dh.animate(self.options.hideAnimate.animate, self.options.hideAnimate.speed, "", fn);
            }
        }
        //设置弹窗焦点
        this.focus = function()
        {/*
            if (self.options.focus)
            {
                self.dh.find(self.options.focus).focus(); //TODO IE中要两次
                self.dh.find(self.options.focus).focus();
            } else
            {
                self.dh.find('._dialogCancel').focus();
            }*/
        }
        //在弹窗内查找元素
        this.find = function(selector)
        {
            return self.dh.find(selector);
        }
        //设置加载加状态
        this.setLoading = function(){
            self.setContent('<div class="dialogLoading">加载中，请稍后</div>');
        }
        //停止加载状态
        this.stopLoading = function(){
            try
            {
                if(self.loading&&typeof self.loading != "undefined")
                {
                  self.loading.remove();
                }
            } catch (e) { } finally
            {
                self.loading = null;
                return;
            }
        }

        this.setWidth = function(width){
            self.dw.width(width);
        }
        //取得标题
        this.getTitle = function()
        {
            return self.dt.html();
        }

        //设置内容
        this.setContent = function(content) {
            if (typeof content == 'string'){
                self.dc.html(content);
            } else
            {
                self.dc.append(content);
            }
            if (self.options.height > 0)
            {
                self.dc.css('height', self.options.height);
            } else
            {
                self.dc.css('height', '');
            }
            if (self.options.width > 0)
            {
                //self.dh.css('width', self.options.width);
            } else
            {
                self.dh.css('width', '');
            }
            if (self.options.showButton)
            {
                self.dh.find("._dialog-button").show();
            }
        }

        //取得内容
        this.getContent = function()
        {
            return self.dc.html();
        }

        //启用按钮
        this.disabledButton = function(btname, state)
        {
            self.dh.find('._dialog' + btname).attr("disabled", state);
        }
        //隐藏按钮
        this.hideButton = function(btname)
        {
            self.dh.find('._dialog' + btname).hide();
        }
        //显示按钮
        this.showButton = function(btname)
        {
            self.dh.find('._dialog' + btname).show();
        }
        //设置按钮标题
        this.setButtonTitle = function(btname, title)
        {
            self.dh.find('._dialog' + btname).val(title);
        }
        //操作完成
        this.next = function(opt)
        {
            opt = opt || {};
            opt.title = opt.title || self.getTitle();
            opt.content = opt.content || "";
            opt.okname = opt.okname || "确定";
            opt.width = opt.width || 260;
            opt.onok = opt.onok || self.close;
            opt.onclose = opt.onclose || null;
            opt.oncancel = opt.oncancel || null;
            opt.hideCancel = opt.hideCancel || true;
            self.setTitle(opt.title);
            self.setButtonTitle("ok", okname);
            self.setWidth(width);
            self.setOnok(opt.onok);
            if (opt.content != "") self.setContent(opt.content);
            if (opt.hideCancel) self.hideButton("cancel");
            if (typeof (opt.onclose) == "function") self.setOnclose(opt.onclose);
            if (typeof (opt.oncancel) == "function") self.setOncancel(opt.oncancel);
            self.show();
        }

        this.toggle = function()
        {
            if (self.options.id && self.dh && self.dh.length > 0)
            {
                try
                {
                    var d = self; //$('#_dialog' + self.options.id).data(contextData);
                    if (d.dh.is(':visible'))
                    {
                        d.close();
                    } else
                    {
                        d.show();
                    }
                } catch (e) { alert('toggle:' + e.message); }
            } else
            {
                if (self.dh && self.dh.length && self.dh.is(':visible'))
                {
                    self.close();
                } else
                {
                    self.show();
                }
            }
        }

        //显示弹窗
        this.show = function()
        {
            //关闭现有的层
            if (self.options.id)
            {
                try
                {
                    //有错
                    var d = $('#_dialog' + self.options.id); //.data(contextData);
                    //d.close();
                    if (d.size() > 0) return;
                } catch (e) { }
            }

            var dialog = self.options.id ? self : $.extend({}, self);
            dialog.initMask();
            dialog.initBox();
            dialog.initContent();
            // if (dialog.options.contentType != 'ajax')
            {
                dialog.innerShow();
            }
            return false;
        }

        this.innerShow = function(isComplete)
        {
            var dialog = self;
            dialog.initEvent();
            dialog.initPosition();
            if (dialog.mh)
            {
                dialog.mh.show();
            }
			if (dialog.options.showAnimate == "toggle" || dialog.options.showAnimate == "slide" || dialog.options.showAnimate == "fade")
            {
                switch (dialog.options.animate)
                {
                    case 'toggle':
                        dialog.dh.hide().show(400);
                        break;
                    case 'slide':
                        dialog.dh.hide().slideDown(400);
                        break;
                    case 'fade':
                        dialog.dh.hide().fadeIn(400, function()
                        {
                            //聚集到确定或关闭按钮
                            var ok = self.dh.find('._dialogOk');
                            if (ok.is(':visible'))
                            {
                                ok.focus();
                            } else
                            {
                                self.dh.find('._dialogClose').focus();
                            }
                        });
                        break;
                }
            } else if (dialog.options.showAnimate)
            {
                dialog.dh.animate(dialog.options.showAnimate.animate, dialog.options.showAnimate.speed, function()
                {
                    //聚集到确定或关闭按钮
                    var ok = self.dh.find('._dialogOk');
                    if (ok.is(':visible'))
                    {
                        ok.focus();
                    } else
                    {
                        self.dh.find('._dialogClose').focus();
                    }
                });
            } else
            {
                dialog.dh.show();
                //聚集到确定或关闭按钮
                var ok = self.dh.find('._dialogOk');
                if (ok.is(':visible'))
                {
                    ok.focus();
                } else
                {
                    self.dh.find('._dialogClose').focus();
                }
            }
            if(self.options.showMask)self.dh.bgiframe();
        }

        //关闭弹窗
        this.close = function(n)
        {
            var result = self.onclose(result);
            if(typeof result !='undefined' && !result){
            	return;
            }

            //设置关闭后的焦点
            if (self.options.blur)
            {
                $(self.options.blur).focus();
            }
            //从数组中删除
            for (i = 0; i < arrweebox.length; i++)
            {
                if (arrweebox[i].dh.get(0) == self.dh.get(0))
                {
                    arrweebox.splice(i, 1);
                    break;
                }
            }
            //关闭回调，用于移除对象
            var closeCallback = function()
            {
                self.dh.remove();
                if (self.mh)
                {
					/*
                    self.mh.animate({opacity:0},{complete:function()
																   {
																   self.mh.remove();
																  }});
					*/											  
					self.mh.remove();
                }
            };
			if (self.options.showAnimate == "toggle" || self.options.showAnimate == "slide" || self.options.showAnimate == "fade")
            {
                switch (self.options.animate)
                {
                    case 'toggle':
                        self.dh.hide(400, closeCallback);
                        break;
                    case 'slide':
                        self.dh.slideUp(400, closeCallback);
                        break;
                    case 'fade':
                        self.dh.fadeOut(400, closeCallback);
                        break;
                }
            } else if (self.options.showAnimate)
            {
                self.dh.animate(self.options.showAnimate.animate, self.options.showAnimate.speed, closeCallback);
            } else
            {
                //self.dh.hide();
                closeCallback();
            }
        }
        //取得遮照高度
        this.bheight = function()
        {
            if ($.browser.msie && $.browser.version < 7)
            {
                var scrollHeight = Math.max(document.documentElement.scrollHeight, document.body.scrollHeight);
                var offsetHeight = Math.max(document.documentElement.offsetHeight, document.body.offsetHeight);

                if (scrollHeight < offsetHeight)
                {
                    return $(window).height();
                } else
                {
                    return scrollHeight;
                }
            } else
            {
                return $(document).height();
            }
        }
        //取得遮照宽度
        this.bwidth = function()
        {
            if ($.browser.msie && $.browser.version < 7)
            {
                var scrollWidth = Math.max(document.documentElement.scrollWidth, document.body.scrollWidth);
                var offsetWidth = Math.max(document.documentElement.offsetWidth, document.body.offsetWidth);

                if (scrollWidth < offsetWidth)
                {
                    return $(window).width();
                } else
                {
                    return scrollWidth;
                }
            } else
            {
                return $(document).width();
            }
        }
        //初始化窗口位置
        this.initPosition = function(obj)
        {
            var src = obj || self.dh;
		    if (self.options.position == 'center' || self.options.type == 'modal' || self.options.position == 'anchor' || self.options.position == 'anchorRight')//绝对定位于某个位置
            {
                self.anchorToPos(src);
                if (self.options.anchorPosition)
                {
                    var anchor = function(s)
                    {
                        return function() { self.anchorToPos(s); };
                    } (src);

                    anchor = $.proxy(anchor, self);
                }
                return;
            } else {
                var depend = getElement(self.options.dependElement);
                var offset = depend.offset();
                var wnd = $(window);
                var doc = $(document);
				var left = 0, top = 0;
				
                var toDepend = function()
                {
                    left = depend.offset().left;
                    if (offset.left + self.dh.outerWidth() > doc.width())
                    {
                        left = doc.width() - src.outerWidth() - 10;
                    }
                    top = offset.top - src.outerHeight();
                    if (offset.top + self.dh.outerHeight() > doc.height())
                    {
                        top = doc.height() - src.outerHeight() - 10;
                    }
                }

                var toTop = function()
                {
                    var dependTop = 0;
                    if (self.options.type == 'menu' && self.options.container)
                    {
                        offset = depend.position();
                        dependTop = depend.offset().top;
                    }

                    left = offset.left;
                    top = offset.top - src.outerHeight();
                    if (left + self.dh.outerWidth() > wnd.scrollLeft() + wnd.width()) left -= left + self.dh.outerWidth() - wnd.scrollLeft() - wnd.width()

                    if (self.options.type == 'menu') top++;
                    return top + dependTop >= wnd.scrollTop();
                }

                var toUnder = function()
                {
                    var dependTop = 0;
                    if (self.options.type == 'menu' && self.options.container)
                    {
                        offset = depend.position();
                        //下面的修正是针对简历助手进行的调整，只有简历助手才需要相对于父容器进行定位，其它的是相对于document
                        offset.top += 3;
                        offset.left += 10;
                        dependTop = depend.offset().top;
                    }
                    left = offset.left;
                    top = offset.top + depend.outerHeight();
                    if (self.options.type == 'menu') top--;
                    return top + dependTop + self.dh.outerHeight() <= wnd.scrollTop() + wnd.height();
                }
                var toAuto = function()
                {
                    try
                    {
                        var offset = depend.offset();
                        left = offset.left + depend.outerWidth();
                        top = offset.top - src.outerHeight();
                    } catch (e) { }
                }

                if (self.options.position == 'depend')
                {
                    toDepend();
                } else if (self.options.position == 'top')//定位于某元素上面
                {
                    if (!toTop()) toUnder();
                }
                else if (self.options.position == 'under')//定位于某元素下面
                {
                    if (!toUnder()) toTop();
                } else if (self.options.position == 'auto')
                {
                    toAuto();
                }
            }
            src.css({ left: Math.max(left, 0), top: Math.max(top, 0) });
        }

        // 定位
        self.anchorToPos = function(obj)
        {
            var src = obj || self.dh;
            /*
            if (!$.support.fixed)
            {
                top = doc.scrollTop();
                left = doc.scrollLeft();
            } 
			*/
			// 2013-07-25 momo 根据代码效果进行调整
			
			// 居中定位
			var pos = function(obj) {
				var wnd = $(window);
				var doc = $(document);
				var top = 0;
				var left = 0;
				top = doc.scrollTop();
				left = doc.scrollLeft();
				top += (wnd.height() - obj.outerHeight()) / 2;
				left += (wnd.width() - obj.outerWidth()) / 2;
				return {t:top,l:left};		
		    };			
			var postion  = pos(src);
			src.css({left: postion.l, top: postion.t });
        }
			
	   // 初始化参数	
       self.initOptions();	
    }

    this.singleID = '';
    this._onbox = false;
    this._opening = false;
    this.zIndex = 999;
    var length = function()
    {
        return arrweebox.length;
    }

    //关闭唯一对话框
    $.fn.closeSingleDialog = function()
    {
        try
        {
            var container = $('#_dialog' + this.singleID);
            var context = container.data(contextData);
            context.close();
        } catch (e) { }
    }

    //关闭当前对话框
    $.fn.closeDialog = function()
    {
        try
        {
            var container = this.getDialog();

            var context = container.data(contextData);
            context.close();
        } catch (e) { alert(e.message); }
    }

    //获取当前对话框
    $.fn.getDialog = function()
    {
        return this.closest('._dialog');
    }

    //获取当前对话框的实例对象
    $.fn.getDialogItem = function()
    {
        var container = this.getDialog();
        return container.data(contextData);
    }

    //获取内容属性以构造dialog对象
    var getContentOption = function(content)
    {
        var contentType = 'html';
        if (/^#/.test(content))
        {
            contentType = 'selector';
        } else if (/\.(png|aspx|ashx|html|htm|asp)/i.test(content))
        {
            contentType = 'ajax';
        } else if (/\.(jpg|png|gif)$/i.test(content))
        {
            contentType = 'img';
        }
        else// if(/^(http:)|(https:)/.test(href))
        {
            contentType = 'html';
        }
        return { content: content, contentType: contentType };
    }
   
    //消息框
    $.message = function(msg, options)
    {
        var opt = {};
        if (typeof options == 'function' || typeof options == 'string' || typeof options == 'number')
        {
            opt.onclose = options;
        } else
        {
            opt = $.extend(opt, options);
        }
        opt.type = 'message';
        opt.position = 'center';
        opt.contentType = 'html';
		opt.showMask = opt.showMask || true;
        opt.icon = opt.icon || 'success';
        opt.content = msg;
        //opt.animate = 'fade';
        opt.title = opt.title || '系统提示';
        opt.draggable = false;
        opt.id = '_tooltip' + getID();
        opt.showCancel = false;
        //opt.animate='slow';
        var box = new weebox(opt);
        box.show();
        return box;
    }

    //消息框
    $.fn.message = function(msg, options)
    {
        var opt = {};
        if (typeof options == 'function' || typeof options == 'string' || typeof options == 'number')
        {
            opt.onclose = options;
        } else
        {
            opt = $.extend(opt, options);
        }
        opt.type = 'message';
        opt.position = 'center';
        opt.contentType = 'html';
        opt.icon = opt.icon || 'success';
        opt.content = msg;
		opt.showMask = opt.showMask || true;
        //opt.animate = 'fade';
        opt.title = opt.title || '系统提示';
        opt.draggable = false;
        opt.id = '_tooltip' + getID();
        opt.showCancel = false;
        //opt.animate='slow';
        var box = new weebox(opt);
        box.show();
        return box;
    }

    //确认框
    $.confirm = function(msg, title, ok, cancell)
    {
        var opt = {};
        opt.src = this;
        opt.type = 'confirm';
        opt.position = 'center';
        opt.contentType = 'html';
        opt.icon = 'question';
        opt.content = msg;
		opt.showMask = true;
        //opt.animate = 'fade';
        opt.draggable = false;
        opt.id = '_tooltip' + getID();
        //opt.okBtnName='是';
        //opt.cancelBtnName='否';
        if (typeof title == 'function')
        {
            opt.onok = title;
            opt.oncancell = ok;
        } else
        {
            opt.title = title;
            opt.onok = ok;
            opt.oncancel = cancell;
        }
        opt.title = opt.title || '系统提示';
        var box = new weebox(opt);
        box.show();
        return box;
    }

    //确认框
    $.fn.confirm = function(msg, title, ok, cancell)
    {
        var opt = {};
        opt.src = this;
        opt.type = 'confirm';
        opt.position = 'center';
        opt.contentType = 'html';
        opt.icon = 'question';
        opt.content = msg;
        //opt.animate = 'fade';
        opt.draggable = false;
		opt.showMask = true;
        opt.id = '_tooltip' + getID();
        //opt.okBtnName='是';
        //opt.cancelBtnName='否';
        if (typeof title == 'function')
        {
            opt.onok = title;
            opt.oncancell = ok;
        } else
        {
            opt.title = title;
            opt.onok = ok;
            opt.oncancel = cancell;
        }
        opt.title = opt.title || '系统提示';
        var box = new weebox(opt);
        box.show();
        return box;
    }

    //打开指定的url并显示对话框
    $.showDialog = function(url, options)
    {
        var opt = options || {};
        opt.content = url;
        opt.contentType = opt.contentType || 'ajax';
        //if (typeof opt.animate == 'undefined') opt.animate = 'fade';
        opt.type = opt.type || 'dialog';
        opt.position = opt.depend || 'depend';
        opt.dependElement = $($.event.fix(event).target);
        opt.showButton = opt.showButton || false;
        opt.draggable = true;
        var box = new weebox(opt);
        box.show();
        return box;
    }

    //打开指定的url并以模式窗口显示对话框draggable
    $.showModal = function(url, options)
    {
        var opt = options || {};
        opt.content = url;
        opt.contentType = opt.contentType || 'ajax';
        //if (typeof opt.animate == 'undefined') opt.animate = 'fade';
		opt.showMask = opt.showMask || true;
        opt.type = 'modal';
        opt.showButton = opt.showButton || false;
        //opt.draggable = opt.draggable || false;
        var box = new weebox(opt);
        box.show();
        return box;
    }

    //提供定位于屏幕的某个位置的窗口显示
    $.anchor = function(msg, options)
    {
        var opt = options || {};
        opt.type = 'anchor';
        opt.position = opt.position || 'center';
        opt.content = msg;
        //opt.animate = 'fade';
        opt.contentType = 'html';
        opt.timeout = opt.timeout || 2;
        if (typeof opt.icon == 'undefined') opt.icon = 'success';
        opt.draggable = false;
		opt.showMask = false;
        opt.id = '_anchor' + getID();
        opt.showButton = false;
        var box = new weebox(opt);
        box.show();
        return box;
    }

    //显示一个消息提示，2秒钟消失
    $.anchorMsg = function(msg, opt)
    {
        opt = opt || {};
        if (typeof opt.timeout == 'undefined') opt.timeout = 2;
        //opt.timeout = 0;
        $.anchor(msg, opt);
    }

    $.showError = function(msg)
    {
        msg = msg || '非常抱歉，数据加载失败';
        var errorHtml =
    '            	<div class="dialogError">' +
    '            		' + msg +
    '                </div>' +
    '               <div class="dialogPopBtn"></div>';
      
	   $.showModal(errorHtml, { conentType: 'html'});
    }
	//设置按钮状态为正在运行状态
	$.fn.running = function(msg, opt)
	{
		if ($.isPlainObject(msg))
		{
			opt = msg;
			msg = null;
		}
		msg = msg || '正在处理，请稍候';
		opt = $.extend({}, opt);
		opt.type = 'dialog';
		opt.position = 'auto';
		opt.dependElement = this;
		opt.contentType = 'html'; 
		opt.content = '<div class="tipLoad"><div class="tipLoadTxt">' + msg + '</div></div>';
		//opt.animate = 'fade';
		opt.showHeader = false;
		opt.showBorder = false;
		opt.showBackground = false;
		opt.draggable = false;
		opt.showButton = false;
		opt.id = new Date().getTime();
		var box = new weebox(opt);
		box.show();
		this.data('running', box);
		return box;
	}
	
	//恢复正在运行状态的按钮为正常状态
	$.fn.stopRunning = function()
	{
		var running = this.data('running');
		try
		{
			running.close();
		} catch (e)
		{ }
	}	
})(jQuery);

