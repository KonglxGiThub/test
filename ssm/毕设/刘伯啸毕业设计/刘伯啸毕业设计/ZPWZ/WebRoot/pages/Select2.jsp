<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Select Demo</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
</HEAD>
<BODY>
<FORM id=form name=form action="" method=post>
  <BR>
  <BR>
  <DIV id=uboxstyle>
    <SELECT id=language name=language>
      <OPTION value=English selected>请选择。</OPTION>
      <OPTION value=简体中文>简体中文</OPTION>
      <OPTION value=日本語>日本語</OPTION>
      <OPTION value=http://www.geekso.com>这一技客</OPTION>
    </SELECT>
  </DIV>
  <BR>
  <BR>
</FORM>
</BODY>
</HTML>
