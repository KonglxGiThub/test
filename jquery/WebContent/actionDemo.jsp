<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<style type="text/css">
	.red1{
	color:red;
	}
</style>
<script type="text/javascript">
$(document).ready(function(){
	//刚进入让div隐藏

		$("#i").hide();

	//绑定b1的点击事件
	$("#b1").click(function(){
		//设置b1显示
		$("#i").show();
	});
	$("#b2").click(function(){
		$("#i").hide();
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
<input type="button" id="b1" value="show"><br>
<input type="button" id="b2" value="hidde"><br>
<div id = "d1">xxxxxxxxx</div>
<a href="#" id="i">超链接</a>
</body>
</html>