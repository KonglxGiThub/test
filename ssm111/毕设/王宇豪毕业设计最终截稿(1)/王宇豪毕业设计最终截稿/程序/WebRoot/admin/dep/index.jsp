<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.bean.*" %>
<jsp:useBean id="db" scope="page" class="com.bean.EmpBean" />
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>后台操作区</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
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
		List list2=db.getDep();	 
%>
<BODY >
 <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>序号</TD>
			<TD>售后服务分类名称</TD>
			<TD>录入时间</TD>
			<TD>删除</TD>
		  </TR>
		<%
		if(list2.size()!=0){
			for(int i = 0; i<list2.size(); i++){
				List list3 = (List)list2.get(i);
		%>
		  <TR  align="center" bgColor=#ffffff>
			<TD width="30" id=map><%=i+1 %></TD>
			<TD id=map><%=list3.get(1).toString() %></TD>
			<TD id=map><%=list3.get(2).toString() %></TD>
			<TD id=map><a href="<%=basePath %>DepServlet?method=delDep&id=<%=list3.get(0).toString()%>">删除</a></TD>
		  </TR>
		<%}}%> 
		 </TBODY>
	   </TABLE>
	  <form action="<%=basePath %>DepServlet?method=addDep" name="form1" onsubmit="return check()" method=post>
	<TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" >
			<TD height=23>售后服务分类名称：<input type=text name="name" size=30> <input type=submit value="增加"></TD>
		  </TR>
		 
		 </TBODY>
	   </TABLE> 
	   </form> 
	   <script type="text/javascript">
	   function check()
	   {
	   	if(document.form1.name.value=="")
	   	{
	   		alert("请输入部门名称！");
	   		document.form1.name.focus();
	   		return false;
	   	}
	   }
	   </script>
</BODY>
<%} %>

</HTML>
