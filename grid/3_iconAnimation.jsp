<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/column.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Icon Animation</title>
</head>
<body>
	<div id="div1" class="fa"></div>
	<style>
		#div1{font-size: 48px;}
	</style>
<script type="text/javascript">
	function chargebattery() {
		let a;
		a = document.getElementById("div1");
		a.innerHTML = "&#xf244;";
		setTimeout(() => {
			a.innerHTML = "&#xf243;";
		}, 1000);
		
		setTimeout(() => {
			a.innerHTML = "&#xf242;";
		}, 2000);
		
		setTimeout(() => {
			a.innerHTML = "&#xf241;";
		}, 3000);
		
		setTimeout(() => {
			a.innerHTML = "&#xf240;";
		}, 4000);
	}
	chargebattery();
	
	setInterval(chargebattery, 5000);
</script>

</body>
</html>