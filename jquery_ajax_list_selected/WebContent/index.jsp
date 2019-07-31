<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.red{
	color:red;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$("#b1").click(function(){
		//隐藏显示的开关函数
		//$("div").toggle();
		//添加样式开关
		//$("div").toggleClass("red");
		$("#sel option:eq(3)").attr("selected","true");
		//$("#sel").val("4");
	});
});

</script>
<title>Insert title here</title>
</head>
<body>
	<input type="button" id="b1">
	<div>xxxxxxx</div>
	<select id="sel">
  		<option value="0">请选择</option>
  		<option value="1">选项一</option>
  		<option value="2">选项二</option>
  		<option value="3">选项三</option>
  		<option value="4">选项四</option>
 </select>
	
</body>
</html>