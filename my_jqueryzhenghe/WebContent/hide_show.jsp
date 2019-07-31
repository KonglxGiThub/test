<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//刚进入让div隐藏
		$("#ha").hide();
		//绑定s的点击事件
		$("#s").click(function(){
			//设置ha显示
			$("#ha").show();
		});
		$("#h").click(function(){
			$("#ha").hide();
		});
		
		
	});
</script>
</head>
<body>
<input type="button" id="s" value="显示"><br>
<input type="button" id="h" value="隐藏"><br>
<div id="hi">XXXXX</div><br>
<div id="ha">OOOO</div><br>
</body>
</html>