<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/column.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>TypeWriter</title>
</head>
<body>
	<button onclick="typeWriter()">Click me</button>
	<p id="demo"></p>
	
	<script type="text/javascript">
		let i = 0;
		let txt = "Lorem ipsum dummy text blabla";
		let speed = 50;
		
		function typeWriter() {
			if(i < txt.length) {
				document.getElementById("demo").innerHTML += txt.charAt(i);
				i++;
				setTimeout(typeWriter, speed);
			}
		}
	</script>
</body>
</html>