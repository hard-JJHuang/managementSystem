<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*,dbutil.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="javax.swing.JOptionPane" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width"/>
<meta name="viewport" content="initial-scale=1.0,user-scalable=no"/>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
 <link rel="stylesheet" type="text/css" href="css/list.css"/>
<title>通知公告</title>
</head>

<body>
<div class="header"><p><a href="QT_TZindex.jsp"><img src="images/button_03.png" class="left"/></a><span>通知公告</span><a href=""><img src="images/button_05.png" class="right"/></a></p></div>
<%!
int pageSize=5;//每页纪录的条数
int pageCount;//页面总数
int showPage;//显示当前是第几页


%><!-- 连接数据库并从数据库中调取纪录 -->
<%
Connection conn;
Statement stat;
ResultSet rs;
try{
	Class.forName("com.mysql.jdbc.Driver");
}catch(ClassNotFoundException e){}

try{
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/teachers?useUnicode=true&characterEncoding=utf8","root","root");
	stat=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
	//返回可滚动的结果集
	rs=stat.executeQuery("select *from message");
	rs.last();//将游标移动到最后一行
	int recordCount=rs.getRow();//获得最后一行的行号
	pageCount=(recordCount%pageSize==0)?(recordCount/pageSize):(recordCount/pageSize+1);//计算分页后的总数
	//获取用户想要显示的页数：
	String integer=request.getParameter("showPage");
	if(integer==null){
		integer="1";
		
	}
	try{
		showPage=Integer.parseInt(integer);
		
	}catch(NumberFormatException e){
		showPage=1;
	}
	if(showPage<=1){
		showPage=1;
	}
	if(showPage>=pageCount){
		showPage=pageCount;
	}
	//如果要显示第showPage页，那么游标应该移动到position的值是：
	int position=(showPage-1)*pageSize+1;
	
	//设置游标的位置
	rs.absolute(position);
	//用for循环显示本页的记录：
	for(int i=1;i<=pageSize;i++){
	int now_tz=rs.getInt("id");


%>
<div class="gongwuyuan">
        
        	<div class="pic"><img src="images/list_pic_03.png"  width="70"/></div>
        	<div class="neirong"> 
                <p><%=rs.getString("title")%></p>
            </div>
            <a href="tz_content.jsp?now_tz=<%=now_tz%>" name=now_tz>  <div class="detail"><p>查看详情</p></div>
         </a>
   </div>
            <div style="clear:both;"></div>
<%rs.next();
}
rs.close();
conn.close();
}catch(Exception e){
	e.printStackTrace();
}
%>  
<div class="foot"><p>
 <br>
 第<%=showPage %>页（共<%=pageCount %>页）
<br>
<a href="QT_XWlist.jsp?showPage=1">首页</a>
<a href="QT_XWlist.jsp?showPage=<%=showPage-1 %>">上一页</a>
<%  //根据pageCount的值显示每一页的数字并附加上相应的超连接 
for(int i=1;i<=pageCount;i++){
	%>
	<a href="QT_XWlist.jsp?showPage=<%=i %>"><%=i %></a>
<% }
%>
<a href="QT_XWlist.jsp?showPage=<%=showPage+1%>">下一页</a>
<a href="QT_XWlist.jsp?showPage=<%=pageCount %>">末页</a>
 
 </p></div>


</body>
</html>
