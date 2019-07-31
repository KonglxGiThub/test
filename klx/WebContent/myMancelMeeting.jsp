<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
        <link rel="stylesheet" href="styles/common.css"/>
</head>
<body>
<div class="page-content">
                <div class="content-nav">
                    会议预定 > 撤销会议预定${requestScope.msg }
                </div>
                <form action="UpdateStatusMeetingServlet">
                <input type="hidden" name="mid" value="${param.mid }">
                <input type="hidden" name="mstatus" value="2">
                    <fieldset>
                        <legend>撤销预定</legend>
                        <table class="formtable">
                            <tr>
                                <td>会议名称：</td>
                                <td>${param.mname}</td>
                            </tr>
                            <tr>
                                <td>预计开始时间：</td>
                                <td>${param.mstart}</td>
                            </tr>
                            <tr>
                                <td>撤销理由：</td>
                                <td> <textarea id="description" name="cmreason" rows="5"></textarea>
                                
                                 <!--   <input type="text" name="ne"></td> -->
                             
                            </tr>
                            <tr>
                                <td class="command" colspan="2">
                             <%--        <input type="button" class="clickbutton" 
                                    onclick="window.location.href='UpdateStatusMeetingServlet?mid=${param.mid }&mstatus=2&ne=${cmreason }'" value="确认撤销"/>
                                     --%>
                            <input type="submit" class="clickbutton"  value="确认撤销"/>    
                                    
                                    <input type="button" class="clickbutton" value="返回" onclick="window.history.back();"/>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </form>
            </div>
</body>
</html>