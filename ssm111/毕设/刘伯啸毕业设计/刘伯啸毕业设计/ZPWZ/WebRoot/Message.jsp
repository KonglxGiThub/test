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
		String message = request.getAttribute("message").toString();
		String addr = request.getAttribute("addr").toString();
	 %>
  </head>
  
  <body>
    <script type="text/javascript">                
	 	alert('<%=message %>');               
	  	window.location.href='/ZPWZ/<%=addr%>';            
    </script>
  </body>
</html>
