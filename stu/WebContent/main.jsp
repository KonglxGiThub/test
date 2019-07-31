<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>main.jsp</title>
  <script type="text/javascript">
    function onNext1()
    {
    	with(document.forms[0])
    	{
    		if(sname.value=="")
    		{
    			alert("请输入姓名");
    			sname.focus();
    			return false;
    		}
    		else if(snumber.value=="")
    		{
    			alert("请输入学号");
    			snumber.focus();
    			return false;
    		}
    		else if(shengri.value=="")
    		{
    			alert("请输入生日");
    			shengri.focus();
    			return false;
    		}
    	}
    }
    
    function onNext2()
    {
    	with(document.forms[0])
    	{
    		action="/stu/query.jsp";
    	}
    }
    
    function onNext3()
    {
    	with(document.forms[0])
    	{
    		action="/stu/del.jsp";
    	}
    }
    
    
    var count=0;
    function onSelect(obj)
    {
    	with(document.forms[0])
    	{
    		obj?++count:--count;
    		next[2].disabled=(count==0);	
    	}
    }
  </script>
</head>
<body>
${msg }
<br>
<br>
<form action="/stu/add.jsp" method="post">
  <table border="1" align="center" width="1064">
    <caption>
             学生管理
      <hr width="160">       
    </caption>
    <tr>
      <td>姓名</td>
      <td>
        <input type="text" name="sname">
      </td>
      <td>学号</td>
      <td>
        <input type="text" name="snumber">
      </td>
    </tr>
    <tr>
      <td>性别</td>
      <td>
        <input type="radio" name="sex" checked="checked" value="1">男
        <input type="radio" name="sex" value="2">女
      </td>
      <td>民族</td>
      <td>
        <select name="minzu" style="width:153px">
          <option value="01">汉族</option>
          <option value="02">满族</option>
          <option value="03">蒙族</option>
          <option value="04">回族</option>
          <option value="05">藏族</option>
        </select>
      </td>
    </tr>
    <tr>
      <td>生日</td>
      <td>
        <input type="date" name="shengri">
      </td>
      <td>专业</td>
      <td>
        <select name="zhuanye" style="width:153px">
          <option value="1">电子商务</option>
          <option value="2">矿山地质</option>
          <option value="3">法律</option>
          <option value="4">考古</option>
          <option value="5">财务管理</option>
        </select>
      </td>
    </tr>
    <tr>
      <td valign="top">备注</td>
      <td colspan="100">
        <textarea rows="5" cols="98" name="beizhu"></textarea>
      </td>
    </tr>
    
    <c:if test="${rows!=null}">
	    <tr>
	      <td colspan="100">  
	        <table border="1" width="100%"> 
	           <tr align="center">
	             <td>&nbsp;</td>
	             <td>序号</td>
	             <td>姓名</td>
	             <td>学号</td>
	             <td>性别</td>
	             <td>生日</td>
	             <td>民族</td>
	             <td>专业</td>
	           </tr>
	           <c:forEach var="INS" items="${rows }" varStatus="vs">
		           <tr>
		             <td>
		               <input type="checkbox" name="parsList" value="${INS.STUID }"
		                      onclick="onSelect(this.checked)">
		             </td>
		             <td>${vs.index+1 }</td>
		             <td>${INS.SNAME }</td>
		             <td>${INS.SNUMBER }</td>
		             <td>${INS.CNSEX }</td>
		             <td>${INS.SHENGRI }</td>
		             <td>${INS.CNMINZU }</td>
		             <td>${INS.CNZHUANYE }</td>
		           </tr>       
	           </c:forEach>
	        </table>
	      </td>
	    </tr>
   </c:if> 
    <tr>
      <td colspan="100" align="center">
        <input type="submit" name="next" value="添加" onclick="return onNext1()">
        <input type="submit" name="next" value="查询" onclick="return onNext2()">
        <input type="submit" name="next" value="删除" disabled="disabled" onclick="return onNext3()">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
