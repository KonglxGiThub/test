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
<div class="topCon">
<%if("1".equals(role)&&null!=sek.getName()){ %>
<ul id="topPerLogin" style="display:none;">
<li>您好,<a href="/person/"><span id="topUsername" class=" fb"></span></a> <span class="line">|</span> </li> 
<li><a href="/person/logout.html" >退出</a>  </li>
</ul>
<%}else if("2".equals(role)&&null!=cpy.getName()){ %>
<ul id="topPerLogin" style="display:none;">
<li>您好,<a href="/person/"><span id="topUsername" class=" fb"></span></a> <span class="line">|</span> </li> 
<li><a href="/person/logout.html" >退出</a>  </li>
</ul>
<%}else{%>
<ul id="topLoginStatus">
<li><a href="/ZPWZ/GEzhuce.jsp" >个人注册</a><span class="line">|</span></li>
<li><a href="/ZPWZ/QYzhuce.jsp" >企业注册</a><span class="line">|</span></li>
<li><a href="/ZPWZ/GElogin.jsp" >求职者登录</a><span class="line">|</span> </li> 
<li><a href="/ZPWZ/QYlogin.jsp" >企业登录</a> </li>
</ul>
<%} %>


<div class="wel">
<ul>
<li><a>大连招聘网</a> - </li>
<li><a>大连找工作</a>首选 </li>

</ul>
 </div>
</div>