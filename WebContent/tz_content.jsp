<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*,entity.*,dbutil.*" %>   
<%@ page import="java.util.*,dbutil.*,entity.*,model.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width"/>
<meta name="viewport" content="initial-scale=1.0,user-scalable=no"/>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black"> 
<link rel="stylesheet" type="text/css" href="css/list.css"/>
<title><%=title %></title>
</head>
<body>
<%!

String title;
String content;
String date;
int ID;

%>
<%
session.getAttribute("uname");
String now_tz=request.getParameter("now_tz");
String username = (String)session.getAttribute("uname");
UpdataNews model = new UpdataNews();

Connection conn;
Statement stat;
ResultSet rs;
try{
	Class.forName("com.mysql.jdbc.Driver");
	
}catch(ClassNotFoundException e){}

try{
	conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/teachers?useUnicode=true&characterEncoding=utf8","root","root");
	stat=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
	rs=stat.executeQuery("select *from message where id='"+now_tz+"'");
	
	while(rs.next()){
		ID=rs.getInt("id");
		date=rs.getString("date");
		title=rs.getString("title");
		content=rs.getString("content");
		
%>
<div class="header"><p><a href="QT_TZlist.jsp"><img src="images/button_03.png" class="left"/></a><span>通知通告</span><a href=""><img src="images/button_05.png" class="right"/></a></p></div>		
<div class="text">

<p class="center"><%=title %><br /><span>发布时间：<%=date %><br></span></p>
<font size=4> <p style="padding-left:15px; padding-right:15px";><%=content %></p></font><br><br>
  
<%}
	
	rs.close();
	conn.close();
}catch(Exception e){
	e.printStackTrace();
}

%>


</div>

</body>
</html>