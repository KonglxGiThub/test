<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>提示信息</title>
    
	<%
		String account = request.getAttribute("account").toString();
		String pwd = request.getAttribute("pwd").toString();
		String message = request.getAttribute("message").toString();
	 %>
  </head>
  
  <body>
    <script type="text/javascript">                
	 	alert('<%=message %>');
	 	window.onload=function(){
	 		document.getElementById("myform").submit();          
	 	};      
    </script>
    <form action="CpyLogin" id="myform">
    	<input type="hidden" name="account" value="<%=account %>"/>
    	<input type="hidden" name="password" value="<%=pwd %>"/>
    </form>
  </body>
</html>
