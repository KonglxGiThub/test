<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>后台操作区</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
<STYLE type=text/css>BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
</STYLE>
<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
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
		List list=(List)session.getAttribute("list");
		List list2 = sn.getSiteInfo();
	    String str = list2.get(0).toString();
%>

<BODY  oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %><%=dir %>/images/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top height="50%">     
            <TABLE class=topdashed cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD height=25>&nbsp;&nbsp;<FONT color=red><%=list.get(0).toString() %></FONT> 
                  您好，欢迎进入[<FONT color=red><%=str %></FONT>]！您的身份：<FONT color=red><%=Integer.parseInt(list.get(1).toString())==1?"超级管理员":"普通管理员"%></FONT> 登录次数：<%=list.get(2).toString() %>次 本次登录时间：<%=list.get(3).toString() %> 
                </TD>
              </TR>
              </TBODY>
            </TABLE>
          <BR>
      <TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
        <TBODY>
        <TR>
          <TD height=10>
            <DIV align=center>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
       
		<TR>
		  <TD colspan="3" width=100%>
		    
		</TD>
	</TR>
	<TR>
	<TD colspan="3">
<TABLE class=tablewidth cellSpacing=1 cellPadding=3 width="100%" border=0>
  <TBODY>
  <TR  >
    <TD colSpan=2 height=23> </TD></TR>
  <TR bgColor=#ffffff>
    <TD id=map width="15%"> </TD>
    <TD id=map width="50%"> </TD></TR>
  <TR bgColor=#ffffff>
    <TD id=map width="15%"> </TD>
    <TD id=map width="50%"> </TD></TR>
  <TR bgColor=#ffffff>
    <TD id=map width="15%"> </TD>
    <TD id=map width="50%"> </TD></TR>
  <TR bgColor=#ffffff>
    <TD id=map width="15%"> </TD>
    <TD id=map width="50%"> </TD></TR>
  <TR bgColor=#ffffff>
    <TD id=map width="15%"> </TD>
    <TD id=map width="50%"><h2>基于J2EE技术的售后服务管理系统</h2></TD></TR>
  <TR bgColor=#ffffff>
    <TD id=map width="15%"> </TD>
    <TD id=map width="50%"> </TD></TR>
  <TR bgColor=#ffffff>
    <TD id=map width="15%"> </TD>
    <TD id=map width="50%"> </TD></TR></TBODY></TABLE></TD></TR>
	<TR><TD colspan="3">
</TD></TR>
	<TR><TD colspan="3">

</TD>
</TR>
</TBODY>
</TABLE>
</DIV>
</TD>
</TR>
</TBODY>
</TABLE>
</TD>
</TR>
</TBODY>
</TABLE>
</BODY>
<%} %>
</HTML>
