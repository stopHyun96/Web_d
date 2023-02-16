<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/multi.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<title>capslock감지</title>
</head>
<body>
	<h1>caps lock</h1>
	<p>javascript를 사용하여 입력필드내에서 capslock 켜져있는지 확인</p>
	
	<input id="myInput" value="some text" placeholder="some text">
	<p id="text" style="display: none;">Warning CapsLock 켜짐</p>
	
	<script>
		let input = document.getElementById("myInput");
		let text = document.getElementById("text");
		input.addEventListener("keyup", function(event) {
			if (event.getModifierState("CapsLock")){
				text.style.display = "block";
			}else {
				text.style.display = "none";
			}
		});
	</script>
</body>
</html>