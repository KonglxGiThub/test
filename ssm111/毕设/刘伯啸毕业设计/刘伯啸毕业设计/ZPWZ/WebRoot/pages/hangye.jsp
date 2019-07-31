<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Position"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String map = (String)request.getSession().getServletContext().getAttribute("map");
			
%>
<%
Map<String, List> map1 = (Map)request.getSession().getServletContext().getAttribute("map1");
int i=0;
String arg[] = {"互联网","财务","销售","服务","人事","建筑"};
 %>
<div class="trade auto">
    <div class="tradeWrap">
        <div id="tradeSlide">
        <%
	       for (String key : map1.keySet()) {
				i++;
				List list = map1.get(key);
					if(i<4){
		%>	
        	<dl class="trade-dl<%=i %>">
        		<dt><span></span><%=arg[i-1] %></dt>
        			<dd>
        			<%
						for(int j=0;j<list.size();j++){
							Position pos = (Position)list.get(j);
							 %>
        				<a><%=pos.getN2() %></a>
        			</dd>
				<% }%>
        	</dl>
		<% }else{%>
        	<dl style="border-right:none;" class="trade-dl<%=i %>">
        		<dt><span></span><%=arg[i-1] %></dt>
        			<dd>
        			<%
						for(int j=0;j<list.size();j++){
							Position pos = (Position)list.get(j);
							 %>
        				<a href="/jishuzongjian/" target="_blank"><%=pos.getN2() %></a>
        			</dd>
					<% }%>
        	</dl>
		<% }%>
		<% }%>
            <div class="clear"></div>
        </div>
    </div>
    <a href="javascript:void(0);" id="tradeL"></a>
    <a href="javascript:void(0);" id="tradeR"></a>
    <div class="clear"></div>
</div>
