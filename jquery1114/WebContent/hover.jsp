<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.red1{
	color:red;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	//鼠标的移入移除事件
	$("div").hover(function(){
		//当前元素添加class
		$(this).addClass("red1");
	},function(){
		//当前元素移除class
		$(this).removeClass("red1");
	});
	//失去焦点事件
	$("#in1").blur(function(){
		//获得控件中的值
		var name = $("#in1").val();
		if(name=="tom"){
			$("#msg").html("该用户可以使用");
		}else{
			$("#msg").html("该用户已注册");
			//设置控件的值
			$("#in1").val("tom");
		}
	});
});
</script>
</head>
<body>
<div>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</div>
<div>000000000000000000</div>
<input type="text" id="in1"><div id="msg"></div>
</body>
</html>