<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script  type="text/javascript">
$(function(){
	$("#clazz").change(function(){
		$.ajax({
			url:"getEmps.action",
			data:{clazzid:$("#clazz").val()},
			dataType:"json",
			error:function(){
				alert("error");
			},
			success:function(data){
				$("#student").empty();
				$.each(data.list,function(i,emp){			
					$("#student").append("<option value="+emp.name+">"+emp.pass+"</option>");
				});
			}
		});
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
welcome
<form action="login.action">
name<input type="text" name="name"><br>
password<input type="text" name="pass"><br>
<input type="submit">
</form>
<select name="clazz" id="clazz">
	<option value="1">1班</option>
	<option value="2">2班</option>
	<option value="3">3班</option>
</select><br>
<select name="student" id="student"></select>
</body>
</html>