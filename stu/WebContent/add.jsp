<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.neusoft.services.*"%>
<%
   String sname=request.getParameter("sname");       //姓名
   String snumber=request.getParameter("snumber");   //学号
   String sex=request.getParameter("sex");           //性别 
   String minzu=request.getParameter("minzu");       //民族
   String shengri=request.getParameter("shengri");   //生日
   //out.print(shengri);   
   String zhuanye=request.getParameter("zhuanye");   //专业
   String beizhu=request.getParameter("beizhu");     //备注
   String val[]={sname,snumber,shengri,sex,minzu,zhuanye,beizhu};
   
   StudentServices services=new StudentServices();
   String msg=services.addStudent(val)?"添加成功!":"添加失败!";
   request.setAttribute("msg",msg);
%>
<jsp:forward page="/main.jsp"></jsp:forward>
