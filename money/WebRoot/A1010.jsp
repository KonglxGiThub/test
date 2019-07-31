<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>My JSP 'A1010.jsp' starting page</title>
  <script type="text/javascript">
    function onNext1()
    {
    	with(document.forms[0])
    	{
    		action="/money/a1010?path=A1011.jsp";
    		//alert(action);
    	}
    }

    function onNext4()
    {
    	with(document.forms[0])
    	{
    		action="/money/a1016";
    		//alert(action);
    	}
    }

    function onNext3()
    {
    	with(document.forms[0])
    	{
    		action="/money/a1015";
    		//alert(action);
    	}
    }

    
    function onSelect()
    {
    	document.forms[0].next[2].disabled=false;
    }
    
    function onEdit(obj)
    {
    	with(document.forms[0])
    	{
    		//alert(obj);
    		action="/money/a1013?aab001="+obj;
    		//alert(action);
    		//向action所标识的路径,跳转
    		submit();
    	}
    }
  </script>
</head>
<body>
${msg }
<br>
<br>
<form action="/money/a1012" method="post">
<TABLE border="1" align="center" width="90%">
	<CAPTION>
	  个人理财
	 <HR width="160"> 
	</CAPTION>
	<!-- 查询条件 -->
	<TR>
	  <TD>
		<table border="0" width="100%">
		   <tr>
		     <td width="8%" align="right">查询条件&nbsp;&nbsp;</td>
		     <td width="92%" colspan="5">&nbsp;</td>
		   </tr>
		   <tr>
		     <td width="16%">&nbsp;</td>
		     <td width="17%">收入类别</td>
		     <td width="17%">
		       <select name="qaab004" style="width:153px">
		            <option value="">==不限==</option>
		            <c:forEach var="ins" items="${ocaab004 }">
		              <option ${ins.code==param.qaab004?'selected':'' } value="${ins.code }">
		                ${ins.label }
		              </option>
		            </c:forEach>
		       </select>
		     </td>
		     <td width="17%">摘要</td>
		     <td width="17%">
		       <input type="text" name="qaab002" value="${param.qaab002 }">
			     
		     </td>
		     <td width="16%">&nbsp;</td>
		   </tr>
		   <tr>
		     <td>&nbsp;</td>
		     <td>最小金额</td>
		     <td>
		       <input type="number" step="0.01" name="baab003" min="0.01" value="${param.baab003 }">
		     </td>
		     <td>最大金额</td>
		     <td>
		       <input type="number" step="0.01" name="eaab003" min="0.01"  value="${param.eaab003 }">
		     </td>
		     <td>&nbsp;</td>
		   </tr>
		   <tr>
		     <td>&nbsp;</td>
		     <td>开始时间</td>
		     <td>
		       <input type="date" name="baab005" style="width:153px" value="${param.baab005 }">
		     </td>
		     <td>结束时间</td>
		     <td>
		       <input type="date" name="eaab005"  style="width:153px" value="${param.eaab005 }">
		     </td>
		     <td>&nbsp;</td>
		   </tr>
		</table>
	  </TD>
	</TR>
	<c:if test="${rows!=null }">
	<!-- 数据迭代 -->
	<TR>
	<TD>
	  <table border="1" width="100%">
	    <tr align="center">
	      <td>&nbsp;</td>
	      <td>序号</td>
	      <td>摘要</td>
	      <td>收入日期</td>
	      <td>收入类别</td>
	      <td>总账金额</td>
	      <td>储蓄基金</td>
	      <td>教育基金</td>
	      <td>消费基金</td>
	      <td>&nbsp;</td>
	    </tr>
	    <c:forEach var="ins" items="${rows }" varStatus="vs">
		    <tr align="right">
		      <td align="center">
		        <input type="radio" name="parsVal" onclick="onSelect()" value="${ins.aab001 }">
		      </td>
		      <td align="center">${vs.index+1 }</td>
		      <td align="left">&nbsp;&nbsp;${ins.aab002 }</td>
		      <td align="center">${ins.aab005 }</td>
		      <td align="left">&nbsp;&nbsp;${ins.cnaab004 }</td>
		      <td>${ins.aab003 }</td>
		      <td>${ins.aab202 }</td>
		      <td>${ins.aab302 }</td>
		      <td>${ins.aab402 }</td>
		      <td align="center">
		       <a href="#" onclick="onEdit('${ins.aab001}')">[编辑]</a>
		      </td>
		    </tr>
	    </c:forEach>
	  </table>
	</TD>
	</TR>
	</c:if>
	<!-- 按钮 -->
	<TR>
	<TD align="center">
	  <input type="submit" name="next" value="添加" onclick="return onNext1()">
	  <input type="submit" name="next" value="查询">
	  <input type="submit" name="next" value="删除" disabled="disabled" onclick="return onNext3()">
	  <input type="submit" name="next" value="DTO" onclick="return onNext4()">
	</TD>
	</TR>
</TABLE> 
</form>
</body>
</html>
