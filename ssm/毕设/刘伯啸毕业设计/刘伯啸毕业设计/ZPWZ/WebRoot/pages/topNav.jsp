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

<div class="topNav">
	<div class="topNavCon">
		<span class="topNavR">
			<div id="user_menu_notlogin" >
				<jsp:include page="header_2.jsp"/>
			</div>
			<span class="" id="user_menu_logined" style="margin-right:0; display:none;">
				<span class="per_icon">&nbsp;</span><a href="/person/" id="user_menu_name" class="user_name" target="_blank"></a><span class="topLine">|</span>
				<a href="/ZPWZ/" style="color:#777" id="cityPersonLogout">[退出]</a>
			</span>
			<span class="" id="com_menu_logined" style="margin-right:0; display:none;">
				<span class="per_icon">&nbsp;</span><a href="/company/" id="com_menu_name" class="user_name" target="_blank"></a><span class="topLine">|</span> 
				<a href="/ZPWZ/" style="color:#777" id="cityCompanyLogout">[退出]</a>
			</span>
		</span>
		<ul>
			<li><a href="/ZPWZ/">首页</a></li>
		    <% if("".equals(role)||null==role){ %>
		    <li><a href="#" onclick="alert('您还没有登录！！！！')">找工作</a></li><em class="topLine">|</em>
		    <li><a href="#" onclick="alert('您还没有登录！！！！')">找人才</a></li><em class="topLine">|</em>
		    <li><a href="#" onclick="alert('您还没有登录！！！！')">求职管理</a></li><em class="topLine">|</em>
		    <%}else if("1".equals(role)){ %>
		    <li><a href="/ZPWZ/FindAllJob">找工作</a></li>
		    <%}else{ %>
		    <li><a href="/ZPWZ/FindAllSeker">找人才</a></li><em class="topLine">|</em>
		    <li><a href="/ZPWZ/ViewResByCid?cid=<%=cpy.getId() %>">求职管理</a></li><em class="topLine">|</em>
		    <%} %>
		</ul>
	</div> 
</div>

