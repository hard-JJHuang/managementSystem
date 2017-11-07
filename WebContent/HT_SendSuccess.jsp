<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>成功发送</title>
</head>
<body>
<script type="text/JavaScript" language="javascript">
alert("发送成功");
window.document.location.href="HT_SendMessage.jsp";

</script>
<%
request.setCharacterEncoding("utf-8");
Insert_Message model = new Insert_Message();
int id = Integer.parseInt(request.getParameter("id"));
String title = request.getParameter("title").toString();
String content = request.getParameter("content").toString();
String type = request.getParameter("type").toString();
String date = request.getParameter("date").toString();
String teacherid = request.getParameter("teacherid").toString();
Message messages = model.insert(id, title, content, type, date, teacherid);
%>

</body>
</html>