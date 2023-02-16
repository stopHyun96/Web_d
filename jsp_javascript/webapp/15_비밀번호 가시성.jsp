<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<title>비밀번호 가시성</title>
</head>
<body>
	<h1>비밀번호 가시성</h1>
	Password : <input type="password" value="Password" id="myInput"><br><br>
	<input type="checkbox" onclick="Show()">show password
	
	<script type="text/javascript">
		function Show() {
			let x = document.getElementById("myInput");
			if(x.type === "password") {
				x.type = "text";
			}else {
				x.type = "password";
			}
		}
	</script>
</body>
</html>