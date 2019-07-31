<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- java脚本，抓的是项目名 -->
<%
String path = request.getContextPath();
%>
<!-- /* 需要导入js包 */ -->
<script type="text/javascript" src="<%=path %>/js/jquery.js"></script> 
<script type="text/javascript" src="<%=path %>/js/menu.js"></script> 

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户登陆</title>
		<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form name="form1" method="post" action="<%=path %>/type/CarTypeAddSubmit.action">
			<table width="300" border="0" align="center" cellpadding="4"
				cellspacing="1" bgcolor="#FF9900">
				<tr>
					<td height="24" colspan="2" align="center" bgcolor="#FFCC66">
						车系列添加
					</td>
				</tr>
				<tr>
					<td width="77" height="24" align="center" bgcolor="#FFFFFF">
						系列名称
					</td>
					<td width="204" height="24" bgcolor="#FFFFFF">
						<input name="typeName" type="text" id="typeName" class="input1">
						
					</td>
				</tr>
				<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						系列说名
					</td>
					<td height="24" bgcolor="#FFFFFF">
						<input type="text" name="typeDes" id="typeDes"
							class="input1">
					</td>
				</tr>
						<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						系列排序
					</td>
					<td height="24" bgcolor="#FFFFFF">
						<input  type="text" name="typeOder" id="typeOder"
							class="input1">
					</td>
				</tr>
			
				<tr>
					<td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
					  
  <!--  可以用button+onclick实现 提交-->
<!-- <input type="button" name="Submit" value="进入系统" onClick="location.href='admin/index/index.action'">-->

						&nbsp;&nbsp; 
						<input type="submit" id="Submit" value="进入系统">
						&nbsp;&nbsp;
						<input type="reset" name="reset" value="重置">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>