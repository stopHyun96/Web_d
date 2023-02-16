<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/multi.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<title>트리거 버튼 엔터 클릭</title>
</head>
<body>
	<h1></h1>
	<p>엔터키를 대신 눌러서 이력한 내용을 실행</p>
	
	<input id="myInput" placeholder="some text">
	<button id="myBtn" onclick="hello()">Button</button>
	
	<script>
		function hello() {
			alert('hello world');
		}
		
		let input = document.getElementById("myInput");
		input.addEventListener("Keypress", function(event) {
			if (event.key === "Enter") {
				event.preventDefault();
				document.getElementById("myBtn").click();
			}
		});
	</script>
</body>
</html>