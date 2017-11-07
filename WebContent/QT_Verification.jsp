<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*,dbutil.*,java.net.*" %>
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
 %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>verification</title>
</head>

      <body>  
        <%      //接收用户名和密码    
        
        String ssid = session.getId();
        String user = new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");    
        String pwd = request.getParameter("password"); 
        session.setAttribute("uname", user);
        Dbconn s=new Dbconn();
        Connection conn=s.getConnection();
        System.out.print(user);
        System.out.print(pwd);
                PreparedStatement ps = conn.prepareStatement("select * from teacher where username = '" + user + "' and password = '" + pwd + "'");  
                  ResultSet rs = ps.executeQuery();  
                    if(rs.next()){  
                        response.sendRedirect("QT_TZindex.jsp?username="+URLEncoder.encode(user)); //解决乱码   
                    }else{  
                        response.sendRedirect("QT_login.jsp?errNo");//密码不对返回到登陆    
                    }  
         rs.close();  
         ps.close();  
         conn.close();  
         %>  
      </body>  
    </html>  
