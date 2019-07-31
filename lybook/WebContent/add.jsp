<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="com.neusoft.services.*" %>
<%@ page import="com.neusoft.system.tools.*" %>
<%
    //1.在add页面获取main页面控件的值:获取方式为,通过内置变量request按名取值
    String lyr=Tools.encoding(request.getParameter("lyr"));
    String lybt=Tools.encoding(request.getParameter("lybt"));
    String lynr=Tools.encoding(request.getParameter("lynr"));
    
    //2.在当前页面输出main页面的数据:out.println() jsp的页面输出语句 
    //out.println("lyr="+lyr+"<br>");
    //out.println("lybt="+lybt+"<br>");
    //out.println("lynr="+lynr+"<br>");
    
    LyBookServices services=new LyBookServices();
    String val[]={lyr,lybt,lynr};
    String msg=services.addLybook(val)?"留言成功":"留言失败!";
    //out.print(msg);
    
    //1.在request中定义消息提示变量
    request.setAttribute("msg",msg);
    
    List rows=services.query();
    if(rows.size()>0)
    {
    	request.setAttribute("rows",rows);
    }
%>
<jsp:forward page="/main.jsp"></jsp:forward>
