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
            <li>欢迎登陆 账号 <a href="SekZLSerrvlet?id=<%=sek.getId() %>"><%=sek.getAccount() %></a></li>
            <li><div>您好<span id="com_menu_name" >  </span></div></li>
            <li><a href="#" class="fb aGray">管理收到的邀请</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/ZPWZ/LoginOut" class="exit">退出</a></li>
        <%}else if("2".equals(role)&&null!=cpy.getName()){ %>
            <li>欢迎您登陆 ： <a href="CpyZLSerrvlet?id=<%=cpy.getId() %>"><%=cpy.getAccount() %></a></li>
            <li><div>您好，<span id="com_menu_name" ></span></div></li>
            <li><a href="/ZPWZ/LoginOut" class="exit">退出</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="/ZPWZ/ViewResByCid?cid=<%=cpy.getId() %>" class="fb aGray">管理收到的简历</a></li>
        <%}else{%>
            <li><a href="/ZPWZ/GEzhuce.jsp" >个人注册</a> |</li>
            <li><a href="/ZPWZ/QYzhuce.jsp" >企业注册</a> |</li>
            <li><a href="/ZPWZ/GElogin.jsp" >求职者登录</a> | </li>
            <li><a href="/ZPWZ/QYlogin.jsp" >企业登录</a>  </li>
<%} %>

