<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	var s = [4,5,2,8,6];
	$("#b1").click(function(){
		//点击按钮为select添加option,append实现追加功能
		$("#s1").append("<option>xxxxx</option>");
	});
	$("#b2").click(function(){
		//清空控件
		$("#s1").empty();
		//each方法两个参数，第一个为要遍历的数组，第二个为方法
		$.each(s,function(index){
			$("#s1").append("<option value="+index+">"+s[index]+"</option>");
		});
	});
});
</script>
</head>
<body>
<input type="button" id="b1" value="添加"><input type="button" id="b2" value="添加1"><br>
<select id="s1"></select>
</body>
</html>