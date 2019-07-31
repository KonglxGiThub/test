<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style>
body {
	scrollbar-base-color: #C0D586;
	scrollbar-arrow-color: #FFFFFF;
	scrollbar-shadow-color: DEEFC6;
}
</style>
<style>
* {
	margin: 0;
	padding: 0
}

body, html {
	height: 100%;
	width: 100%;
	overflow: hidden;
} /*这个高度很重要*/
#frametable .header {
	height: 40px;
	background: #ddd;
	border-bottom: 2px solid #999;
}

#frametable .left {
	width: 220px;
	border-right: 2px solid #999;
	background: #ddd;
	height: 100%;
	text-align: center;
}
</style>
<style type="text/css">
div {
	padding: 0px;
	margin: 0px;
}

body {
	scrollbar-base-color: #bae87c;
	scrollbar-arrow-color: #FFFFFF;
	scrollbar-shadow-color: #c1ea8b;
	padding: 0px;
	margin: auto;
	text-align: center;
	background-color: #9ad075;
}

dl.bitem {
	width: 148px;
	margin: 0px 0px 5px 4px;
}

dl.bitem dt {
	background: url(<%=path%>/img/top_bk.png);
	height: 26px;
	line-height: 26px;
	text-align: center;
	cursor: pointer;
}

dl.bitem dd {
	padding: 3px 3px 3px 3px;
	background-color: #fff;
}

.fllct {
	float: left;
	width: 90px;
}

.flrct {
	padding-top: 3px;
	float: left;
}

div.items {
	line-height: 22px;
	background: url(<%=path%>/images/arr4.gif) no-repeat 10px 9px;
}

span.items {
	padding: 10px 0px 10px 22px;
	background: url(<%=path%>/images/arr4.gif) no-repeat 10px 12px;
}

ul {
	padding-top: 3px;
}

li {
	height: 22px;
}

.sitemu li {
	padding: 0px 0px 0px 22px;
	line-height: 24px;
	background: url(<%=path%>/images/arr4.gif) no-repeat 10px 9px;
}
</style>
</head>

<body>

	<table id="frametable" cellpadding="0" cellspacing="0" width="100%"
		height="100%" style="width: 100%;">
		<tr>
			<td colspan="2" height="40px">
				<div class="header">
				<!-- top.jsp  -->
				<iframe id="top" name="top" 
					src="<%=path%>/admin/index/top.action" width="100%" allowTransparency="true"
					width="100%" height="100%" frameborder="0" scrolling="no"
					style="overflow: visible;"></iframe>
				</div>
			</td>
		</tr>
		<tr>
			<td valign="top"  height="100%">
				<!--这个高度很重要-->
				<div class="left">
					<!-- left menu -->
									<!--这个高度很重要--> 
				<iframe id="iframeleft" name="left" 
					src="<%=path%>/admin/index/menu.action" width="100%" allowTransparency="true"
					width="100%" height="100%" frameborder="0" scrolling="no"
					style="overflow: visible;"></iframe>
				</div>
			</td>
			<td valign="top" width="100%" height="100%">
				<!--这个高度很重要--> 
				<iframe id="iframe" name="main" 
					src="<%=path%>/admin/index/welcome.action" width="100%" allowTransparency="true"
					width="100%" height="100%" frameborder="0" scrolling="yes"
					style="overflow: visible;"></iframe>
			</td>
		</tr>
	</table>
</body>
</html>
