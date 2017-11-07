<!--测试  -->
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
	#btn {
		width:100px;
		height:100px;
		background: red;
	}
</style>
</head>
<body>
	<div id="btn"></div>
	<select id="sel">
	   	<option value="考勤">1</option>
	   	<option value="上课">2</option>
	   	<option value="asda">3</option>
	</select>
</body>
<script>
	var obtn = document.getElementById('btn');
	var sel = document.getElementById('sel');
	obtn.onclick = function fn () {
		var asd = sel.onchange;
		asd = cge();
		gps = '1518.1548'
		alert(asd);
		alert(gps);
		window.location.href = "text?aaa="+asd+"&gps="+gps;
	}
	function cge() {
		var sid = sel.selectedIndex;
		var ccc = sel[sid].value;
		return ccc;
	}
	
</script>
</html>