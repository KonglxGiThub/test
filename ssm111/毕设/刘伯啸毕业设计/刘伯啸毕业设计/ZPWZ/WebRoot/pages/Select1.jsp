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
<STYLE type=text/css>
BODY {
  BACKGROUND: #cfdfef; FONT: 12px/150% "Lucida Grande", Arial, Verdana, Helvetica, sans-serif
}
#uboxstyle .select_box {
  WIDTH: 250px; HEIGHT: 50px
}
#uboxstyle DIV.tag_select {
  PADDING-RIGHT: 10px; DISPLAY: block; PADDING-LEFT: 10px; BACKGROUND: url(images/ubox-select.gif) no-repeat 0px 0px; PADDING-BOTTOM: 0px; WIDTH: 230px; COLOR: #79a2bd; LINE-HEIGHT: 24px; PADDING-TOP: 0px; HEIGHT: 24px
}
#uboxstyle DIV.tag_select_hover {
  PADDING-RIGHT: 10px; DISPLAY: block; PADDING-LEFT: 10px; BACKGROUND: url(images/ubox-select.gif) no-repeat 0px -24px; PADDING-BOTTOM: 0px; WIDTH: 230px; COLOR: #79a2bd; LINE-HEIGHT: 24px; PADDING-TOP: 0px; HEIGHT: 24px
}
#uboxstyle DIV.tag_select_open {
  PADDING-RIGHT: 10px; DISPLAY: block; PADDING-LEFT: 10px; BACKGROUND: url(images/ubox-select.gif) no-repeat 0px -48px; PADDING-BOTTOM: 0px; WIDTH: 230px; COLOR: #79a2bd; LINE-HEIGHT: 24px; PADDING-TOP: 0px; HEIGHT: 24px
}
#uboxstyle UL.tag_options {
  PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(images/ubox-select.gif) no-repeat right bottom; PADDING-BOTTOM: 5px; MARGIN: 0px; WIDTH: 250px; PADDING-TOP: 0px; LIST-STYLE-TYPE: none; POSITION: absolute
}
#uboxstyle UL.tag_options LI {
  PADDING-RIGHT: 10px; DISPLAY: block; PADDING-LEFT: 10px; BACKGROUND: url(images/ubox-select.gif) repeat-y -250px 0px; PADDING-BOTTOM: 0px; WIDTH: 230px; COLOR: #79a2bd; LINE-HEIGHT: 24px; PADDING-TOP: 0px; HEIGHT: 24px; TEXT-DECORATION: none
}
#uboxstyle UL.tag_options LI.open_hover {
  BACKGROUND: url(images/ubox-select.gif) no-repeat 0px -72px; COLOR: #fff
}
#uboxstyle UL.tag_options LI.open_selected {
  BACKGROUND: url(images/ubox-select.gif) no-repeat 0px -96px; COLOR: #fff
}
</STYLE>
</HEAD>
<BODY>
  <BR>
  <BR>
  <DIV id="uboxstyle">
    <SELECT id="language" name="language">
      <OPTION value="English" selected>请选择</OPTION>
      <OPTION value="简体中文">简体中文</OPTION>
      <OPTION value="日本語">日本語</OPTION>
      <OPTION value="http://www.geekso.com">这一技客</OPTION>
    </SELECT>
  </DIV>
  <BR>
  <BR>
</BODY>
</HTML>
