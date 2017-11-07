<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.sql.*,dbutil.*,java.net.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> 
<html>
	<head>
		<title>c:set 标签实例</title>
	</head>
	<body>
	
	
<%
Connection conn;
Statement stat;
ResultSet rs;
ResultSet rm;
try{
	Class.forName("com.mysql.jdbc.Driver");
}catch(ClassNotFoundException e){}

try{
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/teachers?useUnicode=true&characterEncoding=utf8","root","root");
	stat=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
	//返回可滚动的结果集
	//PreparedStatement ps = conn.prepareStatement("update news set if_read=?");
	String username=(String) session.getAttribute("uname");
	//out.print(username);
	rs=stat.executeQuery("select *from time where username=username");
	//rm=stat.executeQuery("select *from teacher");
	//System.out.print(b);
%>		
	  <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>用户ID</th>
                                              <th>学号</th>
                                      
                                      
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                     
                                    <tr>
                                    <% boolean a=username.equals(rs.getString("username"));
                                    out.print(a);
                                    while(rs.next()){
                                    %>
                                   
                                    
                                       <% if(a==true){%>   
  										 <tr>    
    									 <td><%=rs.getString("hour") %></td>
   					 					<td><%=rs.getString("meeting") %></td>
   		 								
   			 							
   									 </tr>
														<% }
                                    }
														%>

<%

//rm.next();

rs.close();
//rm.close();	
conn.close();
}catch(Exception e){
	e.printStackTrace();
}
%>


	
		
														
	</body>
</html>