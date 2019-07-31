/**
 *  dropdownlist.js  
 *  momo
 */
+function($){
	 var DropList = function(element,opt) {
		 this.type = null;
		 this.$element = null ;
		 this.options  = null ; 
		 this.init('dropDown',element,opt);	  
	 }
	DropList.DEFAULTS = {
		template: '<span>'+
                        	'<b class="jpFntWes dropIco">&#xf0d7;</b>'+
                        	'<span class="dropSeld"></span><div class="dropLst">'+
                            	'<div class="dropLstCon">'+
                            	'<ul>'+
                                '</ul>'+
                                '</div>'+
                            '</div>'+
                        '</span>',
		template1: '<span class="formText">'+
                        	'<input type="text" class="text" /><div class="dropLst">'+
                            	'<div class="dropLstCon">'+
                            	'<ul>'+
                                '</ul>'+
                                '</div>'+
                            '</div>'+
                        '</span>',				
 		trigger: 'click',
		items:[],
		selectValue: '',
		elementClass:'cu',
		selectClass: 'cu',
		noSelectClass:'gray',
		width:null,
		inputWidth:null,
		style:null,
		onSelect:null,
		hddName:null,
		isCanWrite:false,
		name:null,
		hoverClass:'hov',
		defaultTitle:null,
		maxScroll:null,
		_itemHeight:20,
                unbind:false
	} 
	DropList.prototype.initContent= function() {
		this.options.selectValue = '';
		this.$element.find('input[name="'+this.options.hddName+'"]').val('');
		if(this.options.defaultTitle != null) {	
			this.setTitle(this.options.defaultTitle);
		}else {
			this.setTitle('');
	}		
	}
	DropList.prototype.init = function(type,element,options) {
		this.type  = type;
		this.$element = $(element);
		this.options  = this.getOptions(options);
		this.setStyle('.dropLstCon',this.options.style);
		if(this.options.isCanWrite) {
			this.setContentWidth('input[type="text"]',this.options.inputWidth);
		}else {
			this.setContentWidth('.dropSeld',this.options.inputWidth);
		}
		if(this.options.defaultTitle != null&&(this.options.selectValue=='' || this.options.items.length<=0)) {	
			this.setTitle(this.options.defaultTitle);
		}
		var triggers = this.options.trigger.split(' ');
		for (var i = triggers.length; i--;) {
			  var trigger = triggers[i]
			  if (trigger == 'click') {
				this.drop().on('click.' + this.type, false, $.proxy(this.toggle, this));
			  }
			 //this.drop();  
	   }
	   var self = this;
	   if(self.options.maxScroll!=null) {
		  if(self.options.items.length>=self.options.maxScroll) {
			  self.drop().find('.dropLstCon').height(self.options.maxScroll*self.options._itemHeight).css('overflow-y','scroll');
		  }
	   }	   
	   $('body').click(function(e){
			// 检测发生在body中的点击事件，隐藏日历控件
			var cell = $(e.target);
			if (cell)
			{
				var tgID = $(cell).attr('id') == '' ? "string" : $(cell).attr('id');
				var inID = self.$element.attr('id');
				var isTagert = false;
				try
				{
					 // 如果事件触发元素不是Input元素 并且不是发生在时间控件区域
					 isTagert = (tgID != inID) && ($(cell).closest('#' + inID).length <= 0);
				}
				catch (e)
				{
					isTagert = true;
				}
				if (isTagert)
				{
					$.proxy(self.hide, self)();
				}
			}
		});	   
   } 
   
  //获取默认参数信息	
  DropList.prototype.getDefaults = function () {
   	  return DropList.DEFAULTS;
  };
  DropList.prototype.getOptions = function (options) {
      options = $.extend({}, this.getDefaults(), this.$element.data(), options);
	  //  对参数进行合并
      return options;
  }; 
  
  DropList.prototype.setContentWidth= function(name,width) {
	 if(typeof width == 'undefined') {
		 return ;
	 }
	 this.drop().find(name).width(width);	 
  } 
  
  DropList.prototype.setStyle= function(name,style) {
	 if(typeof style == 'undefined') {
		 return ;
	 }
	 this.drop().find(name).attr('style',style);	 
  }   
  
  DropList.prototype.setTitle = function(title) {
	  var element = null; 	 
	  if(this.options.isCanWrite) {
		  element = this.drop().find('input[type="text"]'); 
		  element.val(title);
	  }else {
		  element = this.drop().find('.dropSeld').html(title);
	  }
	  if(title == this.options.defaultTitle) {
		 element.addClass(this.options.noSelectClass).removeClass(this.options.elementClass);
	  }else {
		 element.addClass(this.options.elementClass).removeClass(this.options.noSelectClass);
	  }
  } 
  
  DropList.prototype.setValue = function(value) {
	 if(!value||value==''||value=='0') {
		 this.drop().find('.dropSeld').addClass(this.options.noSelectClass); 
     } 
	 this.options.selectValue = value;	
	 if(this.options.hddName!=null) {
		 this.$element.find('input[name="'+this.options.hddName+'"]').val(value);							
     }
  }
  
   DropList.prototype.setDropValue = function(value) {
	 var _self = this;
  	 $.each(_self.options.items,function(i,n){
		if(n.id == value) {
			// item.addClass(_self.options.selectClass);
			 _self.setTitle(n.name);
			 _self.setValue(n.id);
			 if(typeof _self.options.onSelect == 'function') {
				 _self.options.onSelect(n.id,n.name);
			 } 
		}	 		
	 })
   };
  // 获取下拉项
  DropList.prototype.drop = function() {
	   if(this.$drop){
			return this.$drop;
	   }
	   this.$drop = $(this.options.isCanWrite?this.options.template1:this.options.template).appendTo(this.$element);
	   	if(this.options.hddName !=null) {
			if(!this.options.isCanWrite) {
				this.$element.append('<input type="hidden" name="'+this.options.hddName+'" id="'+this.options.hddName+'" />');			
			}else {
				this.$element.find('input[type="text"]').attr('name',this.options.hddName);
			}	
	    }
	   var _sl = this;
	   if(_sl.options.items.length > 0) {
		   $.each(_sl.options.items,function(i,n){
			    var item = $("<li/>").attr('v',_sl.options.items[i].id)
							.html(_sl.options.items[i].name).appendTo(_sl.$drop.find('ul'));
				if(n.id == _sl.options.selectValue) {
					 item.addClass(_sl.options.selectClass);
					 _sl.setTitle(n.name);
					 _sl.setValue(n.id);
			    }
		   });  
	   }
	   _sl.$drop.find('ul').mouseover(function(e){
		   var target = $(e.target);
		   if(target.is('li')) {
		   	   $(target).addClass(_sl.options.hoverClass);
		   }
		}).mouseout(function(e) {
		   var target = $(e.target);
		   if(target.is('li')) {
			$(target).removeClass(_sl.options.hoverClass);
		   }
		});
		
		_sl.$drop.find('ul').click(function(e){
				var target = $(e.target);
				if(target.is('li')) {
					var id = $(target).attr('v'),
						name =$(target).html();
					_sl.setTitle(name);
					//_sl.hide();
					_sl.setValue(id);
					$(target).siblings('li').removeClass(_sl.options.selectClass).end().addClass(_sl.options.selectClass);
					if(typeof _sl.options.onSelect == 'function') {
						_sl.options.onSelect(id,name);
					}						
				}
			 }
		 );		 
	   return this.$drop ;
  }
  DropList.prototype.addItem = function(id,name) {
		var item = $("<li/>").attr('v',id).html(name).appendTo(this.$drop.find('ul'));
		var o = {id:id,name:name};
		this.options.items.push(o);
		if(id == this.options.selectValue) {
			 item.addClass(this.options.selectClass);
			 this.setTitle(name);
			 this.setValue(id);
		}	  
  };
  // 删除项
  DropList.prototype.delItem = function(id) {
		this.$drop.find('ul').find('li[v="'+id+'"]').remove();
		var self = this;
		for(var i = 0;i<self.options.items;i++) {
			if(self.options.items[i].id==id) {
				self.options.items.remove(self.options.items[i]);	
			}
		}
		if(id == this.options.selectValue) {
 			 this.options.selectValue = '';
			 this.setValue(this.options.selectValue);
			 if(this.options.defaultTitle!=null) {}{
				 this.setTitle(this.options.defaultTitle); 
			 }
		}	  
  }; 
  
   // 切换
   DropList.prototype.toggle = function (obj) { 
	   //alert(this.type);
    var self = obj instanceof this.constructor ?
      obj : this.$element.data('bs.' + this.type);
      self.drop().hasClass('dropShow')?self.hide():self.show();
  }
  
  // 显示
  DropList.prototype.show = function (e) {
	 this.drop().addClass('dropShow');	
  }

  // 隐藏	
  DropList.prototype.hide = function (e) {
	 this.drop().removeClass('dropShow');	
  }
  
  DropList.prototype.getValue =function() {
	  return this.options.selectValue;
  };  
  var old = $.fn.droplist;
  $.fn.droplist = function (option) {
    return this.each(function () {
      var $this   = $(this);
      var data    = $this.data('bs.dropDown');
      var options = typeof option == 'object' && option;
      if (!data || option.unbind) {
		  $this.data('bs.dropDown', (data = new DropList(this, options)));
	  }
      if (typeof option == 'string') {
		  data[option]();
	  }
    });
  };
  $.fn.getDropListValue = function() {
  		var droplist = this.data('bs.dropDown');
  		if(droplist) {
  			return droplist.getValue();
  		}
  };
  
  $.fn.setDropListValue = function(value) {
  		var droplist = this.data('bs.dropDown');
	    droplist.setDropValue(value);
  };
  
  $.fn.initContent = function() {
	  var droplist = this.data('bs.dropDown');
	  droplist.initContent();
  }  
  
  $.fn.addItem = function(id,name) {
	  var droplist = this.data('bs.dropDown');
	  droplist.addItem(id,name);
  }
  
  $.fn.delItem = function(id) {
	  var droplist = this.data('bs.dropDown');
	  droplist.delItem(id);	  
  }
  
  $.fn.droplist.Constructor = DropList;
  // TOOLTIP NO CONFLICT [tooltip no 冲突]
  $.fn.droplist.noConflict = function () {
    $.fn.droplist = old;
    return this
  }   
}(window.jQuery)