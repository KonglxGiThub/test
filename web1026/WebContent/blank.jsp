<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%int[]arr={1,2,3,4};
		for(int i=0;i<arr.length;i++){%>
	<input type="button" value="<%=arr[i] %>">&nbsp;&nbsp;&nbsp;&nbsp;
			hello<br>	
	<%} %>
</body>
</html>