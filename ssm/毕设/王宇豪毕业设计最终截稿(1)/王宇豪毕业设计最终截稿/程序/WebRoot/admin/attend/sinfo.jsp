<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
 
 
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="eb" scope="page" class="com.bean.EmpBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="<%=path %>/admin/images/calendar.js"></script> 
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
 
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		 		String eid=request.getParameter("eid");
			List newsList=eb.getAttSearch(eid);
			if(!newsList.isEmpty()){
			 
		 
%>
<BODY  >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
     <tr class="head"> 
      <td width="5%" align="center">序号</td>
      <td  align="center">安装设备名称</td>
      <td  align="center">服务公司名称</td>
      <td  align="center">安装人员</td>
      <td  align="center">安装时间</td>
      <td  align="center">录入时间</td>
      <td  align="center">查看/修改</td>
      <td  align="center">删除</td>
    </tr>
    <%//eid,type,money,ftime,remark,addtime
			 
	 			if(!newsList.isEmpty()){
				for(int i=0;i<newsList.size();i++){
					List pagelist2 =(ArrayList)newsList.get(i);
			%> 
	<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
      <td width='5%' align="center" style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(0).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(1).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(2).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(3).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(4).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(6).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="<%=basePath+dir+"/" %>attend/add.jsp?method=upAtt&id=<%=pagelist2.get(0).toString()%>" >查看/修改</a> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="<%=basePath%>DepServlet?method=delAtt&id=<%=pagelist2.get(0).toString()%>" >删除</a></td>
    </tr>
	
<%
	}}
%>  
 
 
	 </TABLE>
</BODY>
<%} else{out.print("<p align=center>没有符合条件的查询结果！");}}%>
</HTML>
