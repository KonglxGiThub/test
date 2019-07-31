<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
  <head>
    <title>留言本</title>
    <script type="text/javascript">
    
      function onNext1()
      {
    	  with(document.forms[0])
    	  {
    		  action="/lybook/query.jsp";
    	  }
      }  
    
      function onNext2()
      {
    	  with(document.forms[0])
    	  {
    		  if(lyr.value=="")
    		  {
    			  alert("请输入 留言人!");
    			  lyr.focus();
    			  return false;
    		  }
    		  else if(lybt.value=="")
    		  {
    			  alert(" 请输入 留言标题");
    			  lybt.focus();
    			  return false;
    		  }
    		  else if(lynr.value=="")
    		  {
    			  alert(" 请输入 留言内容!");
    			  lynr.focus();
    			  return false;
    		  }
    	  }
      }
    </script>
  </head>
  <body>
  <%
     //Object msg=request.getAttribute("msg");
     //if(msg!=null)
     //{
    	// out.print(msg);	 
     //}
  %>
  ${msg }
  <br>
  <br>
    <form action="/lybook/add.jsp" method="post">
	   <table border="1" width="45%" align="center">
	     <caption>
	                留言板
	       <hr width="160">         
	     </caption>
	     <tr>
	       <td>留言人</td>
	       <td>
	         <input type="text" name="lyr" >
	       </td>
	     </tr>
	     <tr>
	       <td>标题</td>
	       <td>
	         <input type="text" name="lybt">
	       </td>
	     </tr>
	     <tr>
	       <td valign="top">内容</td>
	       <td>  
	          <textarea rows="4" cols="45" name="lynr"></textarea>
	       </td>
	     </tr>
	     <tr>
	       <td colspan="2" align="center">
	          <input type="submit" name="next" value="查询" onclick="return  onNext1()">
	          <input type="submit" name="next" value="添加" onclick="return onNext2()">
	       </td>
	     </tr>
	   </table>
	   
	   <BR>
	  <c:if test="${rows!=null}">
	  
		   <table border="1" width="45%" align="center">
		     <c:forEach var="INS" items="${rows }">
			      <tr>
			       <td>
			                 留言人: ${INS.LYR } &nbsp;&nbsp;&nbsp;&nbsp;  
			                 标题:${INS.LYBT }   &nbsp;&nbsp;&nbsp;&nbsp;
			                 时间:${INS.LYSJ }   &nbsp;&nbsp;&nbsp;&nbsp;
			        <a href="/lybook/del.jsp?lid=${INS.LID }">删除</a>  <BR>
			                 内容: ${INS.LYNR } 
			       </td>
		       </c:forEach>
		     </tr>
		   </table>
	  </c:if> 
	</form>
  </body>
</html>
