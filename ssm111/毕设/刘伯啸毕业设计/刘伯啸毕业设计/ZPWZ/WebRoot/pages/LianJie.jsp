<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.LianJie"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<div class="friendLnk auto ">
    <h3 class="hd2"><span>友情链接</span></h3>
    	<ul>
    <% List list  = (List)request.getSession().getServletContext().getAttribute("list1");
    	for(int i=0;i<list.size();i++){
    	LianJie lj = (LianJie)list.get(i);
    %>
    	<li><a href="<%=lj.getHerf() %>" target="_blank" class="aGray"><%=lj.getName() %></a></li>
    <%} %>
    </ul>
    <div class="clear"></div>
</div>