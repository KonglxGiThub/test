<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
welcome
<!-- 导入taglib标签，显示错误信息，e必须跟后台属性@ModelAttribute("e")一致 -->
<form:form action="login.action" modelAttribute="e">
name
	<input type="text" name="name"><form:errors path="name"></form:errors><br>
password<input type="text" name="pass"><form:errors path="pass"></form:errors><br>
<input type="submit">
</form:form>
</body>
</html>