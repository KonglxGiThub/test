<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Page"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Page pages = (Page)request.getAttribute("page");
String servlet = (String)request.getAttribute("servlet");
int now = Integer.valueOf(request.getAttribute("now").toString());
int i = 1;
%>

<div class="page">
    <div class="page">
    <% if(pages.getPages()<=1){ %>
    	<span class="now">上一页</span><span class="">1</span><span class="now">下一页</span>
    <% }else{%>
    	<% if(pages.getNow()==1){%>
    		<span class="now">上一页</span>
    	<% }else{%>
    		<a href="/ZPWZ/<%=servlet %>&now=<%=now %>&pageflg=up">上一页</a>
    	<%} %>
	    <%if(pages.getPages()<=10){ %>
    		<% for(i = 1;i<=pages.getPages()&&i<=10;i++){ %>
    			<% if(i==pages.getNow()){ %>
	        		<span class=""><%=i %></span>
		        <% }else{%>
		       		<a href="/ZPWZ/<%=servlet %>&now=<%=i %>"><%=i %></a>
		        <%}%>
    		<% }%>
    		<% if(pages.getNow()==10){%>
		    	<span class="now">下一页</span>
    		<% }else{%>
		        <a href="/ZPWZ/<%=servlet %>&now=<%=now %>&pageflg=down">下一页</a>
		    <%} %>
	    <% }else{ %>
	    	<% if(pages.getNow()==pages.getPages()){%>
	    		<% for(i=pages.getNow()-9;i<=pages.getPages();i++){ %>
		        <% if(i==pages.getNow()){ %>
		        	<span class=""><%=i %></span>
		        <% }else{%>
		       	 <a  href="/ZPWZ/<%=servlet %>&now=<%=i %>"><%=i %></a>
		        <%}%>
		        <%}%>
	    	<% }else{%>
	    		<% for(i=pages.getNow()-4;(i<=pages.getNow()+5)&&i<=pages.getPages();i++){ %>
		        <% if(i==pages.getNow()){ %>
		        	<span class=""><%=i %></span>
		        <% }else{%>
		       	 <a  href="/ZPWZ/<%=servlet %>&now=<%=i %>"><%=i %></a>
		        <%}%>
		        <%}%>
	    	<% }%>
	        <% if(pages.getNow()==pages.getPages()){%>
		    	<span class="now">下一页</span>
		    <% }else{%>	
		        <a href="/ZPWZ/<%=servlet %>&now=<%=now %>&pageflg=down">下一页</a>
		    <%} %>
	    <% }%>
    <% }%>
    </div>
</div>