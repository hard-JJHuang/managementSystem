<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
	#btn {
		width:100px;
		height:100px;
		background:#ddd;
	}
</style>
</head>
<body>
	
	<div id="btn">
		
	</div>
	<select id="sel">
	   	<option value="考勤">考勤</option>
	   	<option value="上课">上课</option>
	   	<option value="asda">asda</option>
	</select>
	<script	type="text/javascript">
		var oBtn = document.getElementById('btn');
		var xmlhttp;
		var sel = document.getElementById('sel');
		
		var fn = function () {
			var oType = sel.onchange
			oType = cge();
			alert(oType);
			//var aaa = 'aaa';
			url = "text";
			doAjax(url,oType);
			
		}
		function cge() {
			var sid = sel.selectedIndex;
			var ccc = sel[sid].value;
			return ccc;
		}
		function doAjax(url,oType) {
			try{
				xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
			} catch(e) {
				try {
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				} catch(e) {
					try {
						xmlhttp = new XMLHttpRequest();
						if (xmlhttp.overrideMimeType) {
							xmlhttp.overrideMimeType("text/xml");
						}
					}catch(e){
					}
				}
			}
			if(!xmlhttp) {
				alert("不能创建xmlhttprequest对象");
				//return null;
			}
			xmlhttp.onreadystatechange = dealRequest;
			xmlhttp.open("post",url,true);
			xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			xmlhttp.send(oType);
		}
		
		function dealRequest() {
			if(xmlhttp.readyState==4) {
				if(xmlhttp.status==200){
					var textreturn = xmlhttp.responseText;
					if(textreturn != 0){
						window.location.href = "test.html";
						console.log(oType);
						//oBtn.style.background = 'yellow';
					}
				}
			}
		}
		
		oBtn.onclick = fn ;
		
	</script>
</body>
</html>