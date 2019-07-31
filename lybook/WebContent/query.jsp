<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.neusoft.services.*" %>
<%
   LyBookServices services=new LyBookServices();
   List rows=services.query();
   if(rows.size()>0)
   {
	   //将查询到的结果保存的到request
	   request.setAttribute("rows",rows);
   }
   else
   {
	   request.setAttribute("msg","没有留言数据!");
   }	   
%>
<jsp:forward page="/main.jsp"></jsp:forward>
