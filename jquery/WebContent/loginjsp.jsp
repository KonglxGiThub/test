<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<style type="text/css">
	.red1{
	color:red;
	}
	.blue1{
	color:blue;
	}

</style>
<script type="text/javascript">
$(function(){
	//刚进入让div隐藏
	$("#showemp").hide();
	$("#showhr").hide();
	
	$("#emp").click(function(){
		//this代表emp按钮控件
		$(this).addClass("red1");
		//$("#emp").addClass("red1");
		$("#showemp").show();
		$("#hr").removeClass("red1");
		$("#showhr").hide();
	});
	$("#hr").click(function(){
		$("#hr").addClass("red1");
		$("#showhr").show();
		$("#emp").removeClass("red1");
		$("#showemp").hide();
	});
	//$("tr").addClass("blue1");
	//$("tr:first").addClass("red1");
	//$("tr:last").addClass("red1");
	//$("tr:even").addClass("blue1");
	//$("tr:odd").addClass("red1");
	$("tr:eq(1)").addClass("red1");
	$("tr:gt(2)").addClass("blue1");
	$("tr:lt(1)").addClass("blue1");
});
</script>
</head>
<body>
<div id="dbody">
<input type="button" id="emp" value="员工注册">
<input type="button" id="hr" value="经理注册">
	<div id="showemp">
	员工姓名<input type="text" name="lname" id="ename" value="员工注册">
	</div>
	<div id="showhr">
	经理姓名<input type="text" name="lname" id="hname" value="经理注册">
	</div>
</div>
<table>
<tr><td>1</td><td>2</td></tr>
<tr><td>3</td><td>4</td></tr>
<tr><td>5</td><td>6</td></tr>
<tr><td>7</td><td>8</td></tr>
</table>
</body>
</html>