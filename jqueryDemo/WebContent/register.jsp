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
	$("#name").blur(function(){
		$.ajax({
			url:"CheckNameServlet",
			data:{name:$("#name").val()},
			dataType:"json",
			error:function(){
				alert("失败了");
			},
			success:function(data){
				$("#err").html(data.msg);
			}
		});
	});
	
});
</script>
</head>
<body>
<table>
<tr>
<td>名字</td><td><input name="name" id="name"></td><td><div id="err"></div></td>
</tr>
</table>
</body>
</html>