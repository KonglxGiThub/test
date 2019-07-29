<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/common.css" />
</head>
<body>
<div class="page-content">
	<div class="content-nav">
	    会议预定 > 添加会议室${requestScope.msg }
	</div>
	<form action="AddRoomServlet">
	    <fieldset>
	        <legend>会议室信息</legend>
	        <table class="formtable">
	            <tr>
	                <td>门牌号:</td>
	                <td>
	                    <input name="rnum" type="text" placeholder="例如：201" maxlength="10"/>
	                </td>
	            </tr>
	            <tr>
	                <td>会议室名称:</td>
	                <td>
	                    <input name="rname" type="text" placeholder="例如：第一会议室" maxlength="20"/>
	                </td>
	            </tr>
	            <tr>
	                <td>最多容纳人数：</td>
	                <td>
	                    <input name="rpeople" type="text" placeholder="填写一个正整数"/>
	                </td>
	            </tr>
	            <tr>
	                <td>当前状态：</td>
	                <td>
	                    <input type="radio" id="status" name="rstatus" checked="checked" value="1"/><label for="status">启用</label>
	                    <input type="radio" id="status" name="rstatus" value="0"/><label for="status" value="0">停用</label>
	                    <input type="radio" id="status" name="rstatus" value="2"/><label for="status" value="2">删除</label>
	                </td>
	            </tr>
	            <tr>
	                <td>备注：</td>
	                <td>
	                    <textarea name="rnote" maxlength="200" rows="5" cols="60" placeholder="200字以内的文字描述"></textarea>
	                </td>
	            </tr>
	            <tr>
	                <td colspan="2" class="command">
	                    <input type="submit" value="添加" class="clickbutton"/>
	                    <input type="reset" value="重置" class="clickbutton"/>
	                </td>
	            </tr>
	        </table>
	    </fieldset>
	</form>
 </div>
</body>
</html>