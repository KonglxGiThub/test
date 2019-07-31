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
	//绑定输入框的失去焦点事件
	$("#user").blur(function(){
		//调用jquery的ajax
		$.ajax({
			//url对应servlet的路径
			url:"CheckNameServlet",
			//data对应传入的参数
			data:{namexx:$("#user").val()},
			//返回的数据类型
			dataType:"json",
			//失败调用的代码
			error:function(){
				alert("失败");
			},
			//成功调用的代码
			success:function(data){
				//将结果写入错误提示框
				$("#message").html(data.msg);
			}
		});
	});
});
</script>
</head>
<body>
<form action="RegisterServlet">
<table>
<tr>
<td>名字</td>
<td><input id="user" type="text" name="xxx"></td>
<td><div id="message"></div></td>
</tr>
</table>
<input type="submit">
</form>
</body>
</html>