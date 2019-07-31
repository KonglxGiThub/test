<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引入jquery -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
/* 先执行body里的内容在执行这个jQuery ，可以去掉(document).ready*/
$(document).ready(function(){
	alert("welcome to jquery world");
	//id选择器doucument.getElementById("d1");
	$("#d1").html("hello");
	$("div").html("hello");
	$(".ad1").html("hello");
})
</script>
<title>Insert title here</title>
</head>
<body>
xxxxxxxxx
<div id = "d1"></div>
<div></div>
<div class = "ad1"></div>

</body>
</html>