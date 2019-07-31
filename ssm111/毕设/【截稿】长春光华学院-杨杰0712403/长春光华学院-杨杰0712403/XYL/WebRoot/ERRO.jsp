<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.bs.xyl.bean.Result;"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>错误页面</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%
		Result result = (Result)request.getAttribute("result");
		String message = result.getMessage();
	 %>
  </head>
  
  <body>
  <%
  	if("1".equals(message)){
   %>
    <script type="text/javascript">                
	 	alert('登录名与密码不一致');               
	  	window.location.href='/XYL/';            
    </script>
    <%
    }else if("2".equals(message)){
   %>
    <script type="text/javascript">                
	 	alert('登录名不存在或没有通过系统验证');               
	  	window.location.href='/XYL/';            
    </script>
    <%
    }else if("3".equals(message)){
   %>
    <script type="text/javascript">                
	 	alert('登录名不存在或没有通过系统验证');               
	  	window.location.href='/XYL/login.jsp';            
    </script>
    <%
    }else if("0".equals(message)){
   %>
    <script type="text/javascript">                
	 	alert('--------');               
	  	window.location.href='/XYL/';            
    </script>
    <%
    }
     %>
  </body>
</html>
