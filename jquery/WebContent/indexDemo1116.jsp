<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.red{
color:red;}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$("#b1").click(function(){
		//隐藏显示的开关,如果显示的就隐藏，隐藏就显示，点按钮有，再点就没有
		//$("div").toggle();
		//添加样式开关，点按钮变色，再点就不变色
		$("div").toggleClass("red");
	})
})
</script>
</head>
<body>
	<input type="button" id="b1" value="员工注册">
	<div>嘻嘻嘻</div>
</body>
</html>