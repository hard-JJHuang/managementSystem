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
        <link rel="stylesheet" type="text/css" href="css/text1.css" /> 
        <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=K8Dc5qpMMLM15gdyThZiqFZErO3HV0Wf"></script>
        <title>考勤测试</title>
    </head>
    <body>
        <script type="text/javascript" src="http://120.197.197.243:8080/js/4/ld.js"></script>
        <div class="header"><p><a href="QT_TZindex.jsp"><img src="images/button_03.png" 

class="left"/></a><span>通知通告</span><a href="index.jsp"><img src="images/button_05.png" 

class="right"/></a></p></div>
        <div id="warp">
            <div id="allmap">
				
			</div>
			 <div id="btn">
             <a href="#" class="a_demo_one">Checking attendance</a>
             </div>
             <select id="sel">
	   			<option value="考勤">考勤</option>
	   			<option value="上课">上课</option>
	   			<option value="asda">体育</option>
			 </select>
        </div>	
    </body>

</html>
<script type="text/javascript">
	var map = new BMap.Map("allmap");
	var T_point = new BMap.Point(113.54375735464,22.357185456948);//老师设置的目标地址
	map.centerAndZoom(T_point,18);//初始化地图，设置地图等级
	var oBtn = document.getElementById('btn');//获取btn属性

	
	//浏览器定位
	var a = function () {
	    var geolocation = new BMap.Geolocation();
	    geolocation.getCurrentPosition(function(r){
	            if(this.getStatus() == BMAP_STATUS_SUCCESS){
	                var mk = new BMap.Marker(r.point);
	            	var polyline = new BMap.Polyline([T_point,r.point], {strokeColor:"blue", strokeWeight:6, strokeOpacity:0.5});  //定义折线 

	                /* 设置考勤范围 getDistance()<=10 */
	            	if(map.getDistance(T_point,r.point).toFixed(2)<=10.00){
	                    alert('考勤成功！');
	                    map.addOverlay(mk);//创建红色标记
	            		map.panTo(r.point);//移动到新的被标记的地点
	            		//alert('您的位置：'+r.point.lng+','+r.point.lat);
	            		//获取select中的值
	            		var asd = sel.onchange;
	            		asd = cge();
	            		//alert(asd);
	            		
	            		var gps = [r.point.lng,r.point.lat]
	            		//把值存到servlet中
	            		//var gps = '1518.1548'
	            		window.location.href = "text?aaa="+asd+"&gps="+gps;
	            		
	                }
	                else {
	                	
	                    alert('考勤失败！');
	                    map.addOverlay(mk);
	            		map.panTo(r.point);
	                    map.addOverlay(polyline);//设置折线;
	                }
	            }
	            else {
	                    alert('获取地址失败');
	            }
	            },{enableHighAccuracy: true})
			}
			function cge() {
				var sid = sel.selectedIndex;
				var ccc = sel[sid].value;
				return ccc;
			}
	oBtn.onclick = a;//执行百度地图API;	



</script>