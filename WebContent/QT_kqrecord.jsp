<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.sql.*,dbutil.*,java.net.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width"/>
		<meta name="viewport" content="initial-scale=1.0,user-scalable=no"/>
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<link rel="stylesheet" type="text/css" href="css/list.css">
		<title>考勤记录</title>
		<style>
			#box1 {
				width:50%;
				height:25%;
				margin-top:-25%;
				margin-left: 25%;
				border-radius:15px 15px 15px 15px ;
				background-color:rgba(3,169,244,0.7);
				position: absolute;
				display:none;
				font-family:"微软雅黑";
				font-size:20px;
				text-align:center;
			}
		</style>

	</head>
	<body>
		<div class="header"><p><a href="QT_TZindex.jsp"><img src="images/button_03.png" class="left"/></a><span>通知通告</span><a href="index.jsp"><img src="images/button_05.png" class="right"/></a></p></div>
		<c:set var="uN" scope="session" value="${sessionScope.uname}"/>
		<!--<c:out value="${uN}" />-->
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/teachers?useUnicode=true&characterEncoding=utf8" user="root" password="root" />
		<sql:query var="result" dataSource="${snapshot}">
			SELECT * from time where username = ?;
			<sql:param value="${uN}"/>
		</sql:query>
	
		<c:forEach var="row" items="${result.rows}">
		<div class="gongwuyuan" >
			<div class="pic">
			<img src="images/yes.png"  width="70"/>
			</div>			
			<div class="neirong" name="flow"onclick="fn()"> 				
                	<font size="3">
                	<c:out value="${row.hour}"/>
                	<br>考勤类型：<c:out value="${row.meeting}"/>
                	</font>
                	                
            </div>           
		</div>
		</c:forEach>
		<div id="box1"></div>
	</body>

</html>