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
.blue1{
	color:blue;
}
</style>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(function(){
		$("#b1").click(function(){
			$("input").removeClass("red1");
			$(this).addClass("red1");
			//设置d1显示
			$("#d1").show();
			$("#d2").hide();
		});
		$("#b2").click(function(){
			$("input").removeClass("red1");
			$(this).addClass("red1");
			//设置d1隐藏
			$("#d1").hide();
			$("#d2").show();
		});
		
		/* $("tr:first").addClass("blue1");
		$("tr:last").addClass("red1"); */
		$("tr:even").addClass("red1");
		$("tr:odd").addClass("blue1");
	});
</script>
</head>
<body>
<input type="button" id="b1" value="普通员工"><input type="button" id="b2" value="部门经理"><br>
<div id="d1">员工名<input></div>
<div id="d2">经理名<input></div>

<table>
<tr><td>1</td><td>2</td></tr>
<tr><td>3</td><td>4</td></tr>
<tr><td>5</td><td>6</td></tr>
<tr><td>7</td><td>8</td></tr>
</table>
</body>
</html>