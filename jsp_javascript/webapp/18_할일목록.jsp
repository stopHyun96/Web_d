<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/job.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>할 일 목록 만들기</title>
</head>
<body>
	<div id="myDIV" class="header">
		<h2 class="mt-5">My To Do List</h2>
		<input type="text" id="myInput" placeholder="Title..." onkeypress="newElement()">
		<span onclick="newElement()" class="addBtn">ADD</span>
	</div>
	
	<ul id="myUl">
		<li>아메리카노</li>
		<li>Meet </li>
		<li>Buy McD</li>
		<li>Korea IT</li>
		<li>Go Home</li>
	</ul>
	
	<script src="js/job.js"></script>
</body>
</html>