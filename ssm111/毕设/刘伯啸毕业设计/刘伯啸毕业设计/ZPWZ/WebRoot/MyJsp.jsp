<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>jQuery 二级联动</title>
<script src="js/jquery-1.8.3.js" type="text/javascript"></script>
<script type="text/javascript">
       $(document).ready(function(){
           $("#province").change(function(){
               $("#province option").each(function(i,o){
                   if($(this).attr("selected"))
                   {
                       $(".city").hide();
                       $(".city").eq(i).show();
                   }
               });
           });
           $("#province").change();
       });
</script>
</head>
<body>
   <select id="province" name="c1">
       <option>----请选择省份----</option>
       <option value="12">计算机硬件</option>
       <option value="13">计算机软件</option>
       <option value="14">互联网/网游</option>
   </select>
   <select class="city">
           <option>----请选择城市----</option>
   </select>
   <select class="city" name="c2">
       <option value="10">计算机硬件</option>
       <option value="11">高级硬件工程师</option>
       <option value="12">硬件工程师</option>
       <option value="13">其他</option>
   </select>  
   <select class="city" name="c2">
       <option value="11">计算机软件</option>
       <option value="12">高级软件工程师</option>
       <option value="13">软件工程师</option>
       <option value="14">软件UI设计师/工程师</option>
       <option value="15">仿真应用工程师</option>
   </select>  
   <select class="city" name="c2">
       <option value="11"> 互联网软件开发工程师</option>
       <option value="12">语音/视频开发工程师</option>
       <option value="13">多媒体/游戏开发工程师</option>
       <option value="14">网站营运经理/主管</option>
       <option value="15">网站营运专员</option>
   </select>  
</body>
</html>
