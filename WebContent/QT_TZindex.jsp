 <%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" pageEncoding="utf-8"%>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>"> 
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width"/>
<meta name="viewport" content="initial-scale=1.0,user-scalable=no"/>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black"> 
<link rel="stylesheet" type="text/css" href="css/css.css">
<title>事务管理系统</title>
</head>

<body>
<!--top开始-->

<div class="banner"><img src="images/banner_heiban.jpg"></div>
<!--top结束-->
   <div class="main">
         <ul>
              <li class="border"><a href="QT_TZlist.jsp"><P><img src="images/icon_1_03.png"/><span>通知通告</span></P></a></li>
              <li class="border"><a href="QT_XWlist.jsp"><P><img src="images/icon_1_05.png"/><span>新闻趣事</span></P></a></li>
              <li class="border_bottom"><a href="QT_kqIndex.jsp"><P><img src="images/icon_1_07.png"/><span>考勤打卡</span></P></a></li>
              <li class="border_right"><a href="QT_kqrecord.jsp"><P><img src="images/icon_1_13.png"/><span>考勤记录</span></P></a></li>
              <li class="border_right"><a href="#"><P><img src="images/icon_1_15.png"/><span>社会保障卡</span></P></a></li>
              <li><a href="#"><P><img src="images/icon_1_17.png"/><span>身份验证</span></P></a></li>
              </ul>
   </div>

</body>
</html>
