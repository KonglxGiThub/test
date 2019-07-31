<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
	<head>
		<title>部门数据</title>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/style.css">
		<script type="text/javascript">
			//****************-删除确认***************
			function del(department) {
				//弹出确认框
				var flag = window.confirm("你确定要删除" + department + "号部门吗?");
								
				//如果单击确定，则执行DelDeptServlet，并且传入部门编号
				if (flag) {
					alert("删除成功");
					location.href = "delDept.action?did="+department;
				}
			}
		</script>

	</head>

	<body>
		<!-- 页面头部 -->
		<table width="950" border="0" align="center" cellpadding="0"
	cellspacing="0">
          <tr>
            <td height="80" bgcolor="#FFFFFF"><img src="../img/bannal.jpg" width="950"
				height="80"> </td>
          </tr>
          <tr>
            <td height="24" align="right" bgcolor="#FFFFFF">
          	<a href="hello.action">首页</a>
			<a href="showDept.action">部门查询</a>
			<a href="JobsViewServlet.html">职务查询</a>
			<a href="EmpViewServlet.html">员工查询</a>			
			<a href="logout.jsp.html">退出登陆</a>
              </td>
          </tr>
          <tr>
            <td height="24" align="right" bgcolor="#0099CC"> 当前用户：admin 身份：
              
              管理员 </td>
          </tr>
        </table>
		<!-- 页面内容 -->
<table border="0" width="950" height="350" bgcolor="#ffffff"
			align="center">
			<tr>
				<td align="center" valign="top">
					<table width="90%" border="0" cellpadding="5" cellspacing="1"
						bgcolor="#CCCCCC">
						<tr>
							<th width="17%" bgcolor="#FFCC00">
								部门编号
							</th>
							<th width="25%" bgcolor="#FFCC00">
								部门名称
							</th>
							<th width="37%" bgcolor="#FFCC00">
								部门地址
							</th>
							<th width="21%" bgcolor="#FFCC00">
								操作
							</th>
						</tr>

						<!-- 循环输出部门记录 -->
			<c:forEach var="dept" items="${listDept }">
			<tr>
			<td>${dept.departmentId }</td>
			<td>${dept.departmentName }</td>
			<td>${dept.locationName }</td>
			<td>
			<a href="updateDept.action?did=${dept.departmentId }&dname=${dept.departmentName }&dloc=${dept.locationName }">修改</a>
			<input type="button" value="删除" onclick="del(${dept.departmentId } )">
			</td>
			</tr>
			</c:forEach>

					</table>
					<p>
						<a href="AddDept.action">增加新部门</a>					</p>
				</td>
			</tr>
	</table>

		<!-- 页面底部 -->
		
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><hr></td>
  </tr>
  <tr>
    <td align="center">©版权所有</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
	</body>
</html>