<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.neusoft.services.*" %>
<%
   //1.获取留言记录的流水号
   String lid=request.getParameter("lid");
   //out.print("lid=="+lid);
   //2.实例化Services
   LyBookServices services=new LyBookServices();
   //3.调用删除方法
   String msg=services.delete(lid)?"删除成功!":"删除失败";
   //3.将消息存入request
   request.setAttribute("msg",msg);
   
   //4.重新检索下一批数据
   List rows=services.query();
   if(rows.size()>0)
   {
	   request.setAttribute("rows",rows);
   }
%>
<jsp:forward page="/main.jsp"></jsp:forward>
