<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>버튼을 클릭하면 나오는 login</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
<button onclick="document.getElementById('id01').style.display = 'block'" class="green-small">Login</button>

<div id="id01" class="modal">
	<form class="modal-content animate" action="" method="post">
		<div class="imgcontainer">
			<span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
			<img alt="avatar" class="avatar" src="img/img_avatar2.png">
		</div>
		
		<div class="container">
			<label for="uname"><b>Username</b></label>
			<input type="text"placeholder="Enter Username" name="uname" required>
			
			<label for="uname"><b>Password</b></label>
			<input type="text"placeholder="Enter Password" name="psw" required>
			
			<button type="submit" class="green">Login</button>
			<label>
				<input type="checkbox" checked="checked" name="remember">&nbsp;Remember me
			</label>
		</div>
		
		<div class="container grey">
			<button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
			<span class="psw">Forgot&nbsp;<a href="#">password?</a></span>
		</div>
	</form>
</div>
</body>
</html>