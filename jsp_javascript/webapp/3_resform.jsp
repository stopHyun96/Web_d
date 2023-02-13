<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/resform.css">
<title>resform</title>
</head>
<body>
<h1>반응형 폼</h1>
<div class="container">
	<form action="">
		<div class="row">
			<div class="col-25">
				<label for="fname">First name</label>
			</div>
			<div class="col-75">
				<input type="text" id="fname" name="firstname" placeholder="Your first name..">
			</div>
		</div>
		
		<div class="row">
			<div class="col-25">
				<label for="lname">Last name</label>
			</div>
			<div class="col-75">
				<input type="text" id="lname" name="lastname" placeholder="Your last name..">
			</div>
		</div>
		
		<div class="row">
			<div class="col-25">
				<label for="country">Country</label>
			</div>
			<div class="col-75">
				<select id="country" name="country">
					<option value="aus">Aus</option>
					<option value="can">Can</option>
					<option value="usa">USA</option>
				</select>
			</div>
		</div>
		
		<div class="row">
			<div class="col-25">
				<label for="subject">Subject</label>
			</div>
			<div class="col-75">
<!-- 				<select id="country" name="country"> -->
					<textarea id="subject" name="subject" placeholder="write some ..."></textarea>
				<!-- </select> -->
			</div>
		</div>
		
		<div class="row">
			<input type="submit" value="submit">
		</div>
	</form>
</div>
</body>
</html>