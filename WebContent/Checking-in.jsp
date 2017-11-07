<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dbutil.*,java.sql.*,model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width"/>
<meta name="viewport" content="initial-scale=1.0,user-scalable=no"/>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  

<link rel="stylesheet" type="text/css" href="css/list.css">

<title>考勤系统</title>
<!--加载百度 map api-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=8827ee39511568ac0705d037d67b2624"></script>  
<script type="text/javascript" src="http://developer.baidu.com/map/jsdemo/demo/convertor.js"></script>
<!-- 隐藏文字 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="jquery.js"></script>

</head>

<body>
<%
//接受经纬度的值
String latitude = request.getParameter("latitude");//纬度
String longitude = request.getParameter("longitude");//经度
//转换成double型
double jingdu = Double.parseDouble(latitude);
double weidu = Double.parseDouble(longitude);


//连接数据库
Dbconn s = new Dbconn();
Connection conn = s.getConnection();

ResultSet rs;
PreparedStatement ps = conn.prepareStatement("select * from student");
rs = ps.executeQuery();
if(rs.next()){
	double jingduP = rs.getDouble("latitude");
	double weiduP = rs.getDouble("longitude");
	if(Math.abs(jingduP-jingdu)<=0.00004505 && Math.abs(weiduP-weidu)<=0.00004505){
		response.sendRedirect("kaoqin_success.jsp");
	}else{
		response.sendRedirect("QT_kaoqin.jsp?errNo");//考勤失败;
	}
	
}
rs.close();
ps.close();
conn.close();

%>



</body>
</html>
