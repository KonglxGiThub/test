<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Company"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String map = (String)request.getSession().getServletContext().getAttribute("map");
Map<String, List> map2 = (Map)request.getSession().getServletContext().getAttribute("map2");
String arg[] = {"IT/互联网/通信/电子","金融/银行/保险","房产/建筑建设/物业","广告/传媒/印刷出版","消费零售/贸易/交通物流","加工制造/设备仪表","咨询中介/教育科研/专业服务","医药生物/医疗保健","服务业","能源/矿产/石油化工","政府/非赢利机构/其他"};
int i = 0 ;
for (String key : map2.keySet()) {
i++;
%>
<div class="jobModel" id="trade2">
	<h4>
		<a class="aGray" href="javascript:void(0);" target="_blank"><%=arg[i-1] %></a>
	</h4>
	<ul>
<%
	List list = map2.get(key);
	for(int j=0;j<list.size();j++){
		Company cpy = (Company)list.get(j);
%>
		<li>
			<a href="/ZPWZ/ViewCpy?id=<%=cpy.getId() %>" title="<%=cpy.getName_all() %>" class="aGray" ><%=cpy.getName_all() %></a>
		</li>
<% }%>
	</ul>
	<div class="clear"></div>
</div>
<%
}
%>
