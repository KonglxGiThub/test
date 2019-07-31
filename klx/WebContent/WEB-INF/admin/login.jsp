<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html" ;charset="gb2312">
<title>CoolMeeting会议管理系统</title>
<link rel="stylesheet" href="../../styles/common.css" />
</head>
<%	String ename = null;
	String epass = null;
	Cookie[]cook = request.getCookies();
	if(cook!=null){
		for(Cookie c:cook){
			if(c.getName().equals("cookieEname")){
				ename = c.getValue();	
			}
			if(c.getName().equals("cookieEpass")){
				epass = c.getValue();
				
			}
			
		}
		if(ename!=null&&epass!=null){
			request.getRequestDispatcher("AdminServlet?elname="+ename+"&elpass="+epass).forward(request, response);
		}
		
	}
%>
<body>
${requestScope.msg }
	<div class="page-content">
		<div class="content-nav">登录</div>
		<form action="AdminServlet" method="post">
			<fieldset>
				<legend>登录信息</legend>
				<table class="formtable" style="width:50%">
					<tr>
						<td>账号名:</td>
						<td><input id="eid" name="elname" type="text" /></td>
					</tr>
					<tr>
						<td>密码:</td>
						<td><input id="epassid" name="elpass" type="password" /></td>
					</tr>
					<tr>
						<td></td>
						<td><select id="timelength" name="timelength">
								<option value="0" selected>每次都需要登录</option>
								<option value="10">10天内</option>
								<option value="30">30天内</option>
						</select></td>
					</tr>
					<tr>
						<td colspan="2" class="command">
						<input type="submit"value="登录" class="clickbutton" /> 
						<input type="button"value="返回" class="clickbutton" onclick="window.history.back();" />
						<input type="button" value="注册" class="clickbutton"
						onclick="window.location.href='RegisterEmpServlet'" /></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>

</body>
</html>