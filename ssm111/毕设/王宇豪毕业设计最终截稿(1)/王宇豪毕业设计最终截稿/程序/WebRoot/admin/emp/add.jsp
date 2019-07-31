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
	||document.form1.sex.value==""
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
		String method=request.getParameter("method");//name,sex,bir,departs,zhiwu,tel,address,remark,addtime
		String name = "";	
		String bir="";
		String departs="请选择";String zhiwu="";String tel="";String address="";String remark="";
		String id="";String sex="";
		 if(method.equals("upEmp")){
			id=request.getParameter("id").trim();
			List newsList=eb.getEmp(id);
			name=newsList.get(1).toString();sex=newsList.get(2).toString();
			bir=newsList.get(3).toString();
			departs=newsList.get(4).toString();
			 zhiwu=newsList.get(5).toString();
			 tel=newsList.get(6).toString();
			 address=newsList.get(7).toString();
			 remark=newsList.get(8).toString();
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
	if(method.trim().equals("addEmp")){
%>
        添加 
<%}else{%>
	   修改 
<%} %>
      </td>
    </tr> 
	
  <tr bgcolor='#FFFFFF'> <input type="hidden" name="method" value="<%=method %>"> <input type="hidden" name="id" value="<%=id %>">
    <td width='30%'><div align="right">售后服务名称：</div></td>
    <td ><input name="name" type="text" id="name" size="40" maxlength="100" value="<%=name %>"></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">售后服务单位：</div></td>
    <td ><input name="sex" type="text" id="sex" size="40" maxlength="100" value="<%=sex %>"></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">售后服务日期：</div></td>
    <td ><input name="bir" type="text" id="bir" size="40" maxlength="100" value="<%=bir %>"  readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd')";>  </TD>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">售后服务类型：</div></td>
    <td ><select name="departs" ><%=departs %>
    <option value=<%=departs %>><%=departs %></option>
    <%List dlist=eb.getDep();if(!dlist.isEmpty()){for(int i=0;i<dlist.size();i++){List list2=(List)dlist.get(i);%>
    <option value=<%=list2.get(1).toString() %>><%=list2.get(1).toString() %></option>
    <%} }%>
    </select></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">对方联系人：</div></td>
    <td ><input name="zhiwu" type="text" id="zhiwu" size="40" maxlength="100" value="<%=zhiwu %>"></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">联系电话：</div></td>
    <td ><input name="tel" type="text" id="tel" size="40" maxlength="100" value="<%=tel %>"></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">联系地址：</div></td>
    <td ><input name="address" type="text" id="address" size="40" maxlength="100" value="<%=address %>"></td>
  </tr>
   <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">服务总结：</div></td>
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
