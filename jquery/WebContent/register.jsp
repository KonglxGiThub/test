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
			//data对应传入的参数，name和servlet里的name一致，与input的name属性无关
			data:{name:$("#user").val()},
			//返回的数据类型
			dataType:"json",
			//失败调用的代码
			success:function(data){
				//将错误的结果写入提示框
				$("#message").html(data.msg);
			}
			
		})
	})
})
</script>
</head>
<body>
		<table>
			<tr>
				<td>name</td>
				<td><input id="user" name ="跟后台的name属性无关，因为没有提交" type="text"></td>
				<td><div id="message"></div></td>
			</tr>
		
		</table>
</body>
</html>