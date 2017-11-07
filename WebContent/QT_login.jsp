<%@ page language="java" import="java.util.*,dbutil.*,java.net.*,model.*" contentType="text/html;charset=utf-8" pageEncoding="gbk"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="javax.swing.JOptionPane" %>

<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<base href="<%=basePath%>"> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>登录界面</title>
<meta name="Keywords" content="www.021news.cn">
<meta name="Description" content="www.021news.cn">

<!-- Bootstrap -->
<link href="images/bootstrap.min.css" rel="stylesheet">
<link href="images/main.css" rel="stylesheet">
<link href="images/enter.css" rel="stylesheet">
<script src="images/jquery.min.js"></script>
<script src="images/bootstrap.min.js"></script>
<script src="images/jquery.particleground.min.js"></script>
<script type="text/JavaScript">
function display_alert(){
	alert("用户账号或者密码有误！")
}
</script>
</head>
<body>
       <%    
        
        String flag = request.getParameter("errNo");    
        try{  
             if(flag!=null){
            	 System.out.print("账号或密码有误");
             }  
                  
        }catch(Exception e){  
            e.printStackTrace();  
        } 
        %>
       

<div id="particles">
  <canvas class="pg-canvas" width="1920" height="911" style="display: block;"></canvas>
  <div class="intro" style="margin-top: -256.5px;">
    <div class="container">
      <div class="row" style="padding:30px 0;">
        <div class="col-md-3 col-centered tac"> <img src="images/logo.png" alt="logo"> </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-8 col-centered">
          <form action="QT_Verification.jsp" method="post" id="register-form" autocomplete="off" class="nice-validator n-default" novalidate>
            <div class="form-group">
              <input type="text" class="form-control" id="username" name="username" placeholder="账号"  >
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="password" name="password" placeholder="密码"  >
            </div>

            <div id="validator-tips" class="validator-tips"></div>

            <div class="form-center-button">
              <button type="submit" id="submit_button" class="btn btn-primary btn-current">登录</button>
              <a href="" class="btn btn-default">忘记密码</a> </div>
          </form>

        </div>
      </div>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" style="text-align: left" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
好          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span> </button>
            <h4 class="modal-title">用户协议</h4>
          </div>
          <div class="modal-body" id="agreementContent"></div>
        </div>
      </div>
    </div>
    <link rel="stylesheet" href="images/jquery.validator.css">
    <script src="images/zh-CN.js"></script><script src="images/jquery.validator.min.js"></script> 
  </div>
</div>
<script>
    $(document).ready(function () {
        var intro = $('.intro');
        $('#particles').particleground({
            dotColor: 'rgba(52, 152, 219, 0.36)',
            lineColor: 'rgba(52, 152, 219, 0.86)',
            density: 130000,
            proximity: 500,
            lineWidth: 0.2
        });
        intro.css({
            'margin-top': -(intro.height() / 2 + 100)
        });
    });
</script>
<div style="text-align:center;">
</div>
</body>
</html>