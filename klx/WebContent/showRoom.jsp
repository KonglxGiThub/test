<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
        <link rel="stylesheet" href="styles/common.css"/>
</head>
<body>
<form>
<div class="page-content">
                <div class="content-nav">
会议预定 > 查看会议室${requestScope.msg }
                </div>
                <table class="listtable">
                    <caption>所有会议室:</caption>
                    <tr class="listheader">
                        <th>门牌编号</th>
                        <th>会议室名称</th>
                        <th>容纳人数</th>
                        <th>当前状态</th>
                        <th>操作</th>
                    </tr>
<c:forEach var="room" items="${roomList }">
                    <tr>
                        <td>${room.rnum }</td>
                        <td>${room.rname }</td>
                        <td>${room.rpeople }</td>
				  <c:if test="${room.rstatus eq 0 }">
				  <c:set var="rstatus1" value="停用"></c:set>
				  </c:if>
				    <c:if test="${room.rstatus eq 1 }">
				  <c:set var="rstatus1" value="启用"></c:set>
				  </c:if>
				    <c:if test="${room.rstatus eq 2 }">
				  <c:set var="rstatus1" value="删除"></c:set>
				  </c:if>
                        <td>${rstatus1}</td>
                        <td>
                            <a class="clickbutton" href="updateRoom.jsp?urnum=${room.rnum }&urname=${room.rname }&urpeople=${room.rpeople }&urstatus=${room.rstatus}&urnote=${room.rnnote}&urid=${room.rid}">查看详情</a>
                        </td>
                    </tr>
</c:forEach>                  
                </table>  
                </div>
                </form>
                   
</body>
</html>