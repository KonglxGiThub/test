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
                    个人中心 > <a href="notifications">最新通知</a>
                </div>
                <table class="listtable">
                    <caption>
                        未来7天我要参加的会议:
                    </caption>
                    <tr class="listheader">
                        <th style="width:300px">会议名称</th>
                        <th>会议室</th>
                        <th>起始时间</th>
                        <th>结束时间</th>
                        <th style="width:100px">操作</th>
                    </tr>
 <c:forEach var ="meeting" items="${myBookGoingMeetingList }">                
                    <tr>
                        <td>${meeting.mname }</td>
                        <td>${meeting.rname}</td>
                        <td>${meeting.mstart }</td>
                        <td>${meeting.mend}</td>
             
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
                <table class="listtable">
                    <caption>
                        已取消的会议:
                    </caption>
                    <tr class="listheader">
                        <th style="width:300px">会议名称</th>
                        <th>会议室</th>
                        <th>起始时间</th>
                        <th>结束时间</th>
                        <th>取消原因</th>
                        <th style="width:100px">操作</th>
                    </tr>
 <c:forEach var ="meeting" items="${myBookCancelMeetingList }">                
                    <tr>
                        <td>${meeting.mname }</td>
                        <td>${meeting.rname}</td>
                        <td>${meeting.mstart }</td>
                        
                        <td>${meeting.mend}</td>
                        <td>${meeting.mreason}</td>
             
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
</body>
</html>