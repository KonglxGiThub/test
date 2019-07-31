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
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(function(){
		//刚进入让div隐藏
		$("div").hide();
		//为控件加入css样式
		$("#d1").addClass("red1");
		//为控件移除css样式
		$("#d1").removeClass("red1");
		//绑定b1的点击事件
		$("#b1").click(function(){
			//设置d1显示
			$("#d1").show();
			$("#d2").hide();
		});
		$("#b2").click(function(){
			//设置d1隐藏
			$("#d1").hide();
			$("#d2").show();
		});
	});
</script>
</head>
<body>
<input type="button" id="b1" value="普通员工"><input type="button" id="b2" value="部门经理"><br>
<div id="d1">员工名<input></div>
<div id="d2">经理名<input></div>
</body>
</html>