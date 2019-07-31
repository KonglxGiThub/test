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
<div class="page-content">
<div class="content-nav">
    会议预定 > 修改会议预定${requestScope.msg }
</div>
<form>
    <fieldset>
        <legend>会议信息</legend>
        <table class="formtable">
            <tr>
                <td>会议名称：</td>
                <td>${param.mname}</td>
          </tr>
          <tr>
              <td>预计参加人数：</td>
              <td>${param.mprople}</td>
          </tr>
          <tr>
              <td>预计开始时间：</td>
              <td>${param.mstart}</td>
          </tr>
          <tr>
              <td>预计结束时间：</td>
              <td>${param.mend}
              </td>
          </tr>
          <tr>
              <td>会议说明：</td>
              <td>
                  <textarea id="description" rows="5" readonly>${param.mnote}</textarea>
              </td>
          </tr>
          <tr>
              <td>参会人员：</td>
              <td>
                  <table class="listtable">
                      <tr class="listheader">
                          <th>姓名</th>
                          <th>联系电话</th>
                          <td>电子邮件</td>
                      </tr>
<c:forEach var="emp" items="${showMyMeetingPeopleList }">
                      <tr>
                          <td>${emp.ename }</td>
                          <td>${emp.ephone }</td>
                          <td>${emp.email }</td>
                      </tr>
</c:forEach>           
          <tr>
              <td class="command" colspan="3">
                  <input type="button" class="clickbutton" value="撤销会议" 
 onclick="window.location.href='MyMancelMeetingServlet?mname=${param.mname}&mstart=${param.mstart}&mid=${param.mid }'"/>
                  <input type="button" class="clickbutton" value="返回"
                   onclick="window.history.back();"/>
                    </td>
                </tr>
           </table>
        </fieldset>
    </form>
</div>
</body>
</html>