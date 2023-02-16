<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/auto.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<title>자동완성 양식 만들기</title>
</head>
<body>
	<h1>자동완성 양식 만들기</h1>
	<form autocomplete="off" action="action_page.jsp">
		<div class="autocomplete">
			<input id="myInput" type="text" name="myCountry" placeholder="Country" class="w-300">
		</div>
		<input type="submit">
	</form>
	<script src="js/country.js"></script>
</body>
</html>