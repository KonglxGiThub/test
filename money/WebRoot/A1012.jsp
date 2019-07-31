<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>My JSP 'A1011.jsp' starting page</title>
  <script type="text/javascript">
    function onNext2()
    {
    	with(document.forms[0])
    	{
    		action="/money/a1012";
    	}
    }
  </script>
</head>
<body>
${msg }
<br>
<br>
<form action="/money/a1014" method="post">
  <TABLE border="1" align="center" width="45%">
    <CAPTION>
              收入修改
       <hr width="160">         
    </CAPTION>
    <TR>
      <TD nowrap="nowrap">摘要</TD>
      <TD>
        <input type="text" name="aab002" value="${data.aab002 }">
      </TD>
    </TR>
    <TR>
      <TD>金额</TD>
      <TD>
        <input type="number" name="aab003" step="0.01"  value="${data.aab003 }">
      </TD>
    </TR>
    <TR>
      <TD>类别</TD>
      <TD>
        <select name="aab004" style="width:153px">
          <c:forEach var="ins" items="${ocaab004 }">
            <option ${data.aab004==ins.code?'selected':'' }  value="${ins.code }">
              ${ins.label }
            </option>
          </c:forEach>
        </select>
      </TD>
    </TR>
    <TR>
      <TD>日期</TD>
      <TD>
        <input type="date" name="aab005"  value="${data.aab005 }">
      </TD>
    </TR>
    <TR>
      <TD>备注</TD>
      <TD>
        <textarea rows="5" cols="45" name="aab007">${data.aab007 }</textarea>
      </TD>
    </TR>
    <TR>
      <TD colspan="100" align="center">
        <input type="submit" name="next" value="修改">
        <input type="submit" name="next" value="返回" onclick="return onNext2()">
      </TD>
    </TR>
  </TABLE>
  <!-- 隐藏域 -->
  <input type="hidden" name="aab001" value="${param.aab001 }">  
  <input type="hidden" name="qaab002" value="${param.qaab002 }">
  <input type="hidden" name="qaab004" value="${param.qaab004 }">
  <input type="hidden" name="baab003" value="${param.baab003 }">
  <input type="hidden" name="eaab003" value="${param.eaab003 }">
  <input type="hidden" name="baab005" value="${param.baab005 }">
  <input type="hidden" name="eaab005" value="${param.eaab005 }">
</form>
</body>
</html>
