<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/video.css">
<title>이름제출</title>
</head>
<body>
<h2>빈 입력 필드에 대한 javascript 유효성 검사</h2>
<p>텍스트를 입력하지 않고 양식을 제출해 보자</p>
<form name="myForm" action="" onsubmit="return validateForm()" method="post" required>
Name: <input type="text" name="fname">
<input type="submit" value="submit">
</form>
<script src="js/valid.js"></script>
</body>
</html>