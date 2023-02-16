<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/job.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Loader</title>
</head>
<body>
<div class="center">
	<div class="loader"></div>
</div>
	<style>
		.center {
			width: 100%;
			height: 100vh;
			display: flex;
			justify-content: center;
			align-items: center;
		}
		
		.loader {
			border: 16px solid #f3f3f3;
			border-top: 16px solid #3498db;
			width: 120px;
			height: 120px;
			border-radius: 50%;
			-webkit-animation: spin 2s linear infinite;
			animation: spin 1s linear infinite;
		}
		
		@-webkit-keyframes spin {
			0% {-webkit-transform: rotate(0deg);}
			100% {-webkit-transform: rotate(360deg);}
		}
		
		@keyframe spin {
			0% {transform: rotate(0deg);}
			100% {transform: rotate(360deg);}
		}
	</style>
</body>
</html>