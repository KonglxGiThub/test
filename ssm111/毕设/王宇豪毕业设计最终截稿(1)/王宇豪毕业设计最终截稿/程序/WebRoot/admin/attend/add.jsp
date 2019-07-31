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
{//eid,type,money,ftime,remark
	if(document.form1.eid.value==""
	||document.form1.money.value==""
	||document.form1.ftime.value=="" 
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
		String method=request.getParameter("method");//name,sex,bir,departs,zhiwu,tel,address,remark,addtime
		String eid="";String type="";String money="";String ftime="";String remark="";
		String id="";
		 if(method.equals("upAtt")){
			id=request.getParameter("id").trim();
			List newsList=eb.getAtt(id);
			eid=newsList.get(1).toString();
			type=newsList.get(2).toString();
			money=newsList.get(3).toString();
			 ftime=newsList.get(4).toString();
			 remark=newsList.get(5).toString();
		}		
		 
%>
<BODY  >
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
    <form name="form1" action="<%=basePath %>DepServlet" method="post" >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
<tr class="head"> 
      <td colspan="2">     
<%
	if(method.trim().equals("addAtt")){
%>
        添加 
<%}else{%>
	   修改 
<%} %>
      </td>
    </tr> 
	
  <tr bgcolor='#FFFFFF'> <input type="hidden" name="method" value="<%=method %>"> <input type="hidden" name="id" value="<%=id %>">
    <td width='30%'><div align="right">安装设备名称：</div></td>
   	<td ><input name="eid" type="text" id="eid" size="40" maxlength="100" value="<%=eid %>" ></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">服务公司名称：</div></td>
    <td ><input name="type" type="text"  id="type" size="40" maxlength="100" value="<%=type %>" ></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">安装人员：</div></td>
    <td ><input name="money" type="text" id="money" size="40" maxlength="100" value="<%=money %>"  > </TD>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">安装时间：</div></td>
    <td ><input name="ftime" type="text" id="ftime" size="40" maxlength="100" value="<%=ftime %>"  readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd')";>  </TD>
  </tr>
   <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">备注：</div></td>
    <td ><textarea name=remark cols=40 rows=10><%=remark %></textarea></td>
  </tr>
  
  <tr bgcolor='#FFFFFF'> 
      <td colspan="2" align="center"> 
        <input class=mmcinb type='button' name='button' value='提交数据' onclick='sub()'>
      </td>
    </tr>
	
</table>
</form>
   </TD>
	</TR>
  </TBODY>
</TABLE>
</BODY>
<%} %>
</HTML>
