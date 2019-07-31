<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- java脚本，抓的是项目名 -->
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">

	/* 实现姓名重置功能，不用input type=“reset”属性 */
 	function resetUser(){
		/* 获取id属性为username的值 */
 		var m = document.getElementById("username");
		/* 清空文本属性值 */
 		m.value=" ";
 		/* $("#password").val(""); */
 	}
</script>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户登陆</title>
		<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form name="form1" method="post" action="<%=path %>/user/userlogin.action">
			<table width="300" border="0" align="center" cellpadding="4"
				cellspacing="1" bgcolor="#FF9900">
				<tr>
					<td height="24" colspan="2" align="center" bgcolor="#FFCC66">
						管理员登陆
					</td>
				</tr>
				<tr>
					<td width="77" height="24" align="center" bgcolor="#FFFFFF">
						管理账号
					</td>
					<td width="204" height="24" bgcolor="#FFFFFF">
						<input name="username" type="text" id="username" class="input1">
					</td>
				</tr>
				<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						管理密码
					</td>
					<td height="24" bgcolor="#FFFFFF">
						<input name="password" type="password" id="password"
							class="input1">
					</td>
				</tr>
				<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						管理级别
					</td>
					<td height="24" bgcolor="#FFFFFF">
						<input name="type" type="radio" value="0" checked>
						超级管理员
						<input name="type" type="radio" value="1">
						管理员
					</td>
				</tr>
				<tr>
					<td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
					  
  <!--  可以用button+onclick实现 提交-->
<!-- <input type="button" name="Submit" value="进入系统" onClick="location.href='admin/index/index.action'">-->

						&nbsp;&nbsp; 
						<input type="submit" name="Submit" value="进入系统">
						&nbsp;&nbsp;
						<input type="button" name="reset" value="重置" onclick="resetUser()"><br>${msg }
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>