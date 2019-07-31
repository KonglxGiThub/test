<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- java脚本，抓的是项目名 -->
<%
String path = request.getContextPath();
%>
<!-- /* 需要导入js包 */ -->
<script type="text/javascript" src="<%=path %>/js/jquery.js"></script> 
<script type="text/javascript" src="<%=path %>/js/menu.js"></script> 
 <script type="text/javascript">

$(function(){
	var falg =false;
	$("#username").blur(function(){
		$.ajax({
			url:"checkmanagerpass.action",
			data:{name:$("#username").val()},
			dataType:"json",
			error:function(){
				alert(" ajax false");
			},
			success:function(data){
				var msg = data.msg;
				if(msg=="用户已注册"){
					$("#username").focus();
					alert("用户已注册");
				}else{
					falg=true;
					alert("用户可用");
				}
					
			}
		});
	});
	$("#Submit").click(function (){
		if(falg){
			/* input type的类型只能是button，不能是submit */
		
			document.form1.submit();}
		});

/* 	结========================================尾 */
}); 
 	
</script>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户登陆</title>
		<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form name="form1" method="post" action="<%=path %>/user/addManagerSubmit.action">
			<table width="300" border="0" align="center" cellpadding="4"
				cellspacing="1" bgcolor="#FF9900">
				<tr>
					<td height="24" colspan="2" align="center" bgcolor="#FFCC66">
						添加管理员
					</td>
				</tr>
				<tr>
					<td width="77" height="24" align="center" bgcolor="#FFFFFF">
						姓名
					</td>
					<td width="204" height="24" bgcolor="#FFFFFF">
						<input name="username" type="text" id="username" class="input1">
						
					</td>
				</tr>
				<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						密码
					</td>
					<td height="24" bgcolor="#FFFFFF">
						<input type="text" name="password" id="password"
							class="input1">
					</td>
				</tr>
						<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						年龄
					</td>
					<td height="24" bgcolor="#FFFFFF">
						<input  type="text" name="age" id="age"
							class="input1">
					</td>
				</tr>
									<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						性别
					</td>
					<td height="24" bgcolor="#FFFFFF">
						<input  type="radio" name="sex" id="sex" checked class="input1" value="男">男 
						<input  type="radio" name="sex" id="sex1" class="input1" value="女">女
					</td>
				</tr>
										<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						管理员级别
					</td>
					<td height="24" bgcolor="#FFFFFF">
									
						<input  type="radio" name="type" id="type" checked class="input1" value="0">超级管理员
				
						
						<input  type="radio" name="type" id="type1"  value="1" class="input1">管理员
					</td>
					
				</tr>
				<tr>
					<td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
					  
  <!--  可以用button+onclick实现 提交-->
<!-- <input type="button" name="Submit" value="进入系统" onClick="location.href='admin/index/index.action'">-->

						&nbsp;&nbsp; 
						<input type="button" id="Submit" value="进入系统">
						&nbsp;&nbsp;
						<input type="reset" name="reset" value="重置">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>