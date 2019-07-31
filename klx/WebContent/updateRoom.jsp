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
                    会议预定 > 修改会议室信息${requestScope.msg }
                </div>
                <form action="UpdateRoomByIdServlet">
                    <fieldset>
                        <legend>会议室信息</legend>
                        <table class="formtable">
                            <tr>
                                <td>门牌号:</td>
                                <td>
                                <input type="hidden" name="rid"  value ="${param.urid }">
                                    <input name="rnum" type="text" value="${param.urnum }" />
                                </td>
                            </tr>
                            <tr>
                                <td>会议室名称:</td>
                                <td>
                                    <input name="rname" type="text"  value="${param.urname }" />
                                </td>
                            </tr>
                            <tr>
                                <td>最多容纳人数：</td>
                                <td>
                                    <input name="rpeople" type="text"  value="${param.urpeople }" />
                                </td>
                            </tr>
                            <tr>
                                <td>当前状态：</td>
                                <td>
                        
<%--                         <c:if test="${param.urstatus eq '0' }">
				 			<c:set var="checked1" value="checked"></c:set>
					   </c:if>    --%> 
					   
						<c:if test="${param.urstatus == '0' }">
				 			 <c:set var="checked2" value="checked"></c:set>
					   </c:if>          
                     
                       <c:if test="${param.urstatus == '2' }">
				 			<c:set var="checked3" value="checked"></c:set>
					   </c:if> 
                <input type="radio" id="status" name="rstatus"  <c:if test="${param.urstatus == '1' }">checked</c:if> value="1"/><label for="status">启用</label>
                <input type="radio" id="status" name="rstatus" ${checked2 } value="0"/><label for="status" value="0">停用</label>
                <input type="radio" id="status" name="rstatus" ${checked3 } value="2"/><label for="status" value="2">删除</label>
                                </td>
                            </tr>
                            <tr>
                                <td>备注：</td>
                                <td>
                                    <textarea name="rnote" rows="5" cols="60" > ${param.urnote }</textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="command">
                                    <input type="submit" value="确认修改" class="clickbutton"/>
                                    <input type="button" class="clickbutton" value="返回" onclick="window.history.back();"/>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </form>
            </div>
</body>
</html>