<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width"/>
		<meta name="viewport" content="initial-scale=1.0,user-scalable=no"/>
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="stylesheet" type="text/css" href="css/list.css">
        <link rel="stylesheet" type="text/css" href="css/style1.css" />
        
        <style type="text/css">
            
            #warp {
              	width:100%;
				height:100%;
            }
            #allmap {
                /*background: #ddd;*/
                width: 640px;
                height: 400px;
                position: absolute;
                top: 60%;
                left: 50%;
                margin-left: -320px;
                margin-top: -160px;
            }
            
            #btn {
                width: auto;
                height:atuo;
                position: absolute;
                left: 45%;
                top: 20%;
               	
            }
            ul {
            	background: #7fd2f1;
            	border: 1px;
            	width: 100x;
            	height: 200px;
            	float: right;
            	display: none;
            	
            }
            ul li {
            	width: 100px;
            	height: 50px;
            	text-align: center;
            	font: 25px/40px "microsofo yahei";
            	color: white;
            	display: block;
            	
            }
            
    	</style>
        <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=K8Dc5qpMMLM15gdyThZiqFZErO3HV0Wf"></script>
        <title>考勤测试</title>
    </head>
    <body>
        <script type="text/javascript" src="http://120.197.197.243:8080/js/4/ld.js"></script>
        <div class="header"><p><a href="QT_TZindex.jsp"><img src="images/button_03.png" class="left"/></a><span>通知通告</span><img src="images/button_05.png" class="right" id="Tag" /></p></div>
        <ul >
        	<li>会议考勤</li>
        	<li>舞会考勤</li>
        	<li>军训考勤</li>
        	<li>体育考勤</li>
        </ul>
        <div id="warp">
            <div id="allmap">

            </div>
            <div id="btn">
             <a href="#" class="a_demo_one">Checking attendance</a>
             </div>

        </div>
    </body>

</html>
<script type="text/javascript">


var oUl = document.getElementsByTagName('ul');
var oTag = document.getElementById('Tag');

function dis() {
	var flag = oUl[0].style.display;
	if(flag=='none') {
		oUl[0].style.display = 'block';
	}else{
		oUl[0].style.display = 'none';
	}
	
}

oTag.onclick = dis;

</script>
