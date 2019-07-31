<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.red1{
	color:green;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" >
	$(function(){
		//鼠标移入移除事件，有两个参数，就是function（）函数
		$("div").hover(
			function(){
				$(this).addClass("red1");
				
			},function(){
				$(this).removeClass("red1");
			}
		);
		//失去焦点事件
	$("#in1").blur(function(){
		//获取控件的值，用val（）方法获取
		var name = $("#in1").val();
		if(name=="tom"){
			$("#msg").html("user is have");
		}else{
			$("#msg").html("user not have");
			//设置控件的值为空
			$("#in1").val("");
		}
	})
	});
</script>
</head>
<body>
<div>xxxxxxxxx</div>
<div>xooooooox</div>
<input type="text" id="in1"><br>
<div id="msg"></div>
</body>
</html>