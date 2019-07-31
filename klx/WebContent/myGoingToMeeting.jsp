<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/common.css"/>
<title>Insert title here</title>
</head>
<body>
<div class="page-content">
                <div class="content-nav">
                    个人中心 > 我的会议
                </div>
                <table class="listtable">
                    <caption>我将参加的会议：</caption>
                    <tr class="listheader">
                        <th>会议名称</th>
                        <th>会议室名称</th>
                        <th>会议开始时间</th>
                        <th>会议结束时间</th>
                        <th>会议预定时间</th>
                        <th>预定者</th>
                        <th>操作</th>
                    </tr>
<c:forEach var="meeting" items="${myBookGoingMeetingList }">
                    <tr>
                        <td>${meeting.mname }</td>
                        <td>${meeting.rname }</td>
                        <td>${meeting.mstart }</td>
                        <td>${meeting.mend }</td>
                        <td>${meeting.mtime}</td>
                        <td>${meeting.ename }</td>
                        <td>
                            <a class="clickbutton" href="ShowMyMeetingPeopleServlet?mid=${meeting.mid }&mname=${meeting.mname }
                		&mprople=${meeting.mpeople }
                         &mstart=${meeting.mstart }
                         &mend=${meeting.mend }
                         &mnote=${meeting.mnote }">查看详情</a>
                        </td>
                    </tr>
</c:forEach>
                </table>
            </div>
</body>
</html>