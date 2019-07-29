<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="styles/common.css"/>
<script type="text/javascript" src="js/jquery.js"></script> 
<title>Insert title here</title>
<script type="text/javascript">

	
		
		function first(){

			window.location.href="PageEmpServlet?page=1";

		}

		function next(){
			page=${requestScope.page}
			p=${requestScope.avgPage};
			if(page>=p){
			window.location.href="PageEmpServlet?page="+p;
			}else{
				++page;
				window.location.href="PageEmpServlet?page="+page;
				}
		}
		function before(){
			page=${requestScope.page}
		
			if(page==1){
			window.location.href="PageEmpServlet?page=1";
			}else{
				--page;
			window.location.href="PageEmpServlet?page="+page;
			}
			
		}
		
		function last(){
			page=${requestScope.avgPage}
			window.location.href="PageEmpServlet?page="+page;
		}
		function jump(){
			page=$("#jump").val();
			p=${requestScope.avgPage};
			if(page<=p){
				window.location.href="PageEmpServlet?page="+page;	
			}else{
				alert("您输入的页数有错");
				$("#jump").val("")
			}
			
		}
		
		

</script>
</head>
<body>
${requestScope.msg}
<div class="page-content">
 <div class="content-nav">
     会议预定 > 搜索员工
 </div>
 <form action="SearchEmpServlet">
     <fieldset>
   <legend>搜索会议</legend>
   <table class="formtable">
       <tr>
           <td>姓名：</td>
           <td>
               <input type="text" id="employeename" name="sename" maxlength="20"/>
           </td>
           <td>账号名：</td>
           <td>
               <input type="text" id="accountname" name="selname" maxlength="20"/>
           </td>
           <td>状态：</td>
           <td>
 <input type="radio" id="status" name="sestatus" value="1" checked="checked"/>
 <label>已批准</label>
 <input type="radio" id="status" name="sestatus" value="0"/><label>待审批</label>
 <input type="radio" id="status" name="sestatus" value="2"/><label>已关闭</label>
           </td>
       </tr>
       <tr>
           <td colspan="6" class="command">
              <input type="submit" class="clickbutton" value="查询"/>
               <input type="reset" class="clickbutton" value="重置"/> 

           </td>
       </tr>
   </table>
     </fieldset>
 </form>
 <div>
     <h3 style="text-align:center;color:black">查询结果</h3>
        <div class="pager-header">
            <div class="header-info">
                共<span class="info-number">${requestScope.countPage }</span>条结果，
                分成<span class="info-number">${requestScope.avgPage }</span>页显示，
                当前第<span class="info-number">${requestScope.page }</span>页
            </div>
            <div class="header-nav">
                <input type="button" class="clickbutton" name="first" onclick="first()" value="首页"/>
                <input type="button" class="clickbutton" name="before" onclick="before()" value="上页"/>
                <input type="button" class="clickbutton" name="next" onclick="next()" value="下页"/>
                <input type="button" class="clickbutton" name="last" onclick="last()" value="末页"/>
                跳到第<input type="text" id="jump" name="jump" class="nav-number"/>页
                <input type="button" class="clickbutton"  onclick="jump()"value="跳转"/>
            </div>
        </div>
    </div>
    <table class="listtable">
        <tr class="listheader">
            <th>姓名</th>
            <th>账号名</th>
            <th>联系电话</th>
            <th>电子邮件</th>
            <th>操作</th>
        </tr>
<c:forEach var="emp" items="${searchEmpList }">

        <tr>
            <td>${emp.ename}</td>
            <td>${emp.elname}</td>
            <td>${emp.ephone}</td>
            <td>${emp.email}</td>
            <td>
                <a class="clickbutton" href="DelEmpByIdServlet?eid=${emp.eid }">删除账号</a>
            </td>
        </tr>
</c:forEach>
    </table>
</div>
</body>
</html>