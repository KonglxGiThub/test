$(document).ready(function() {
	jQuery.focusblur = function(focusid){
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
	
	jQuery.focusColor = function(focusid){
		var focusElemId = $(focusid);
		focusElemId.focus(function(){
			$(this).addClass('focus');
		}).blur(function(){
			$(this).removeClass('focus');
		});
	};
	
	jQuery.focusDate = function(focusid){
		var focusElemId = $(focusid);
		focusElemId.find('input.text').focus(function(){
			var focusThis = $(this).parents(focusid);
			focusThis.addClass('dateTextShow');
		}).blur(function(){
			var focusThis = $(this).parents(focusid);
			focusThis.removeClass('dateTextShow');
		});
	}

});