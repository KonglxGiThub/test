<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/common.css"/>
</head>
<body>
<form >
<div class="page-content">
                <div class="content-nav">
                    个人中心 > 我的预定${requestScope.msg }
                </div>
                <table class="listtable">
                    <caption>我预定的会议：</caption>
                    <tr class="listheader">
                        <th>会议名称</th>
                        <th>会议室名称</th>
                        <th>会议开始时间</th>
                        <th>会议结束时间</th>
                        <th>会议预定时间</th>
                        <th>操作</th>
                    </tr>
<c:forEach var ="meeting" items="${myBookMeetingList }">                
                    <tr>
                        <td>${meeting.mname }</td>
                        <td>${meeting.rname}</td>
                        <td>${meeting.mstart }</td>
                        <td>${meeting.mend}</td>
                        <td>${meeting.mtime }</td>
                        <td>
                          <!--  <input type="submit" value="查看/撤销" class="clickbutton" > -->
                      <a class="clickbutton" href="ShowMyMeetingPeopleServlet?mid=${meeting.mid }&mname=${meeting.mname }
                		&mprople=${meeting.mpeople }
                         &mstart=${meeting.mstart }
                         &mend=${meeting.mend }
                         &mnote=${meeting.mnote }">查看/撤销</a>  
              <%--  <a class="clickbutton" href="ShowMyMeetingPeopleServlet?umname=${meeting.mname }">查看/撤销</a>  --%> 
                        </td>
                    </tr>
</c:forEach>                        
                </table>
            </div>
</form>
</body>
</html>