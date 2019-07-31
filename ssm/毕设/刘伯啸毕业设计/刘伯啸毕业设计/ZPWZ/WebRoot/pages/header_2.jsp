<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Seeker"%>
<%@page import="com.bs.zp.bean.Company"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Seeker sek = (Seeker)session.getAttribute("UserBean");
Company cpy = (Company)session.getAttribute("CpyBean");
String role = (String)session.getAttribute("role");
%>


<%if("1".equals(role)&&null!=sek.getName()){ %>
<span class="per_icon">&nbsp;</span><a href="" id="cityPersonLogin">欢迎求职者:<%=sek.getName() %></a><span class="topLine">|</span><a href="/ZPWZ/LoginOut" style="font-weight:normal;" id="cityFreeReg">退出</a>&nbsp;&nbsp;&nbsp;&nbsp;
<%}else if("2".equals(role)&&null!=cpy.getName()){ %>
<span class="per_icon">&nbsp;</span><a href="" id="cityPersonLogin">欢迎企业:<%=cpy.getName() %></a><span class="topLine">|</span><a href="/ZPWZ/LoginOut" style="font-weight:normal;" id="cityFreeReg">退出</a>&nbsp;&nbsp;&nbsp;&nbsp;

<%}else{%>
<span class="per_icon">&nbsp;</span><a href="/ZPWZ/GElogin.jsp" id="cityPersonLogin">求职者登录</a><span class="topLine">|</span><a href="/ZPWZ/QYlogin.jsp" id="cityCompanyLogin">企业登录</a><span class="topLine">|</span><a href="/ZPWZ/GEzhuce.jsp" style="font-weight:normal;" id="cityFreeReg">个人注册</a><span class="topLine">|</span><a href="/ZPWZ/QYzhuce.jsp" style="font-weight:normal;" id="cityFreeReg">企业注册</a>&nbsp;&nbsp;&nbsp;&nbsp;
<%} %>

