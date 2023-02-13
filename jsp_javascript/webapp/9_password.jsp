<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/input.css">
<script src="js/password.js"></script>
<title>Password Validation</title>
</head>
<body>
<h1>Password Validation</h1>

<div class="password-container">
	<form action="/action_page.jsp">
		<label for="usrname">UserName</label>
		<input type="text" id="usrname" name="usrname" required="required">
		<label for="psw">Password</label>
		<input type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
		title="적어도 하나의 숫자와 하나의 대문자 및 소문자로 최소 8자 이상의 문자를 포함해야 합니다."
		required="required">
		<input type="submit" value="Submit">
	</form>
</div>

<div id="message">
<h3>비밀번호는 다음을 포함해야 합니다.</h3>
<p id="letter" class="invalid">소문자</p>
<p id="capital" class="invalid">대문자</p>
<p id="number" class="invalid">숫자</p>
<p id="length" class="invalid">최소 8자 이상</p>
</div>

</body>
</html>