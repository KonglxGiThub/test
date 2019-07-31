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
<script type="text/javascript">
function sub()
{//name,sex,bir,departs,zhiwu,tel,address,remark
	if(document.form1.name.value==""
	||document.form1.bir.value==""
	||document.form1.departs.value=="请选择"
	||document.form1.zhiwu.value==""
	||document.form1.tel.value==""
	||document.form1.address.value==""
	||document.form1.remark.value=="")
	{
		alert("所有项目必须填写！");
		//document.form1.title.focus();
		return false;
	}
	 
	 
	form1.submit();
}
</script>
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
		String name = "";	
		String co="";
		String bir="";String nr=""; String remark="";
			List newsList=(List)request.getAttribute("list");
			if(!newsList.isEmpty()){
			name=newsList.get(1).toString();co=newsList.get(2).toString();
			bir=newsList.get(3).toString();
			nr=newsList.get(4).toString();
			 remark=newsList.get(5).toString();
		 
%>
<BODY  >
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
<tr class="head"> 
      <td colspan="2">搜索结果</td>
    </tr> 
	 
  <tr bgcolor='#FFFFFF'>  
    <td width='30%'><div align="right">回访信息名称：</div></td>
    <td ><%=name %></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">回访单位：</div></td>
    <td ><%=co %></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">回访日期：</div></td>
    <td ><%=bir %></TD>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">回访原因：</div></td>
    <td ><%=nr %></td>
  </tr>
   
   <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">备注：</div></td>
    <td ><textarea name=remark cols=40 rows=10 readonly><%=remark %></textarea></td>
  </tr>
  
   
</table>
   </TD>
	</TR>
  </TBODY>
</TABLE>
</BODY>
<%} else{out.print("<p align=center>没有符合条件的查询结果！");}}%>
</HTML>
