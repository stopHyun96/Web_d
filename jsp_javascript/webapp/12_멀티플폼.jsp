<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/multi.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<title>단계적으로 넘어가는 form 만들기</title>
</head>
<body>
	<h1>단계적으로 넘어가는 form 만들기</h1>
	<form id="regForm" action="/action.jsp">
		<h1>Register</h1>
		<div class="tab">
			Name: 
			<p><input placeholder="First name... " oninput="this.className='' name="fname"></p>
			<p><input placeholder="Last name... " oninput="this.className='' name="lname"></p>
		</div>
		<br>
		<div class="tab">
			Contact Info: 
			<p><input placeholder="E-mail... " oninput="this.className='' name="email"></p>
			<p><input placeholder="Phone number... " oninput="this.className='' name="phone"></p>
		</div>
		<br>
		<div class="tab">
			Birthday: 
			<p><input placeholder="dd" oninput="this.className='' name="dd"></p>
			<p><input placeholder="mm" oninput="this.className='' name="mm"></p>
			<p><input placeholder="yyyy" oninput="this.className='' name="yyyy"></p>
		</div>
		<br>
		<div class="tab">
			Login Info: 
			<p><input placeholder="Username..." oninput="this.className=''" name="uname"></p>
			<p><input placeholder="Password" oninput="this.className='' name="pword" type="password"></p>
		</div>
		
		<div class="o-auto">
			<div class="right">
				<button type="button" id="prevBtn" onclick="nextPrev(-1)">
					Previous
				</button>
				<button type="button" id="nextBtn" onclick="nextPrev(1)">
					Next
				</button>
			</div>
		</div>
		
		<div class="center mt-40">
			<span class="step"></span>
			<span class="step"></span>
			<span class="step"></span>
			<span class="step"></span>
		</div>
	</form>
	
	<script src="js/step.js"></script>
	
</body>
</html>