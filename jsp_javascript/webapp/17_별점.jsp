<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/auto.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>별점</title>
</head>
<body>
	<h1>Star Rating</h1>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star"></span>
	<span class="fa fa-star"></span>
	<style>
		.fa-star {color: #ddd;}
	
		.checked {
			color: orange;
		}
	</style>
	
<h1>User Rating</h1>
	<span class="heading">User Rating</span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star"></span>
	<p>4.1 average based on 254 reviews.</p>
	<hr class="border-3">
	<div class="row">
		<div class="side">
			<div>5 star</div>
		</div>
		
		<div class="middle">
			<div class="bar-container">
				<div class="bar-5">
				</div>
			</div>
		</div>
		
		<div class="side right">
			<div>150</div>
		</div>
		
		<div class="side">
			<div>4 star</div>
		</div>
		
		<div class="middle">
			<div class="bar-container">
				<div class="bar-4">
				</div>
			</div>
		</div>
		
		<div class="side right">
			<div>63</div>
		</div>
		
		<div class="side">
			<div>3 star</div>
		</div>
		
		<div class="middle">
			<div class="bar-container">
				<div class="bar-3">
				</div>
			</div>
		</div>
		
		<div class="side right">
			<div>15</div>
		</div>
		
		<div class="side">
			<div>2 star</div>
		</div>
		
		<div class="middle">
			<div class="bar-container">
				<div class="bar-2">
				</div>
			</div>
		</div>
		
		<div class="side right">
			<div>6</div>
		</div>
		
		<div class="side">
			<div>1 star</div>
		</div>
		
		<div class="middle">
			<div class="bar-container">
				<div class="bar-1">
				</div>
			</div>
		</div>
		
		<div class="side right">
			<div>20</div>
		</div>
	</div>
	
	<style>
		.checked {color: orange;}
		body  {
			margin: 0 auto;
			max-width: 800px;
			padding: 20px;
		}
		
		.heading {
			font-size: 25px;
			margin-right: 25px;
		}
		
		.fa {
			font-size: 25px
		}
		
		.side {
			float: left;
			width: 15%;
			margin-top: 10px;
		}
		
		.middle {
			margin-top: 10px;
			float: left;
			width: 70%;
		}
		
		.right {
			text-align: right;
		}
		
		.row:after {
			content: "";
			display: table;
			clear: both;
		}
		
		.bar-container {
			width: 100%;
			background-color: #f1f1f1;
			text-align: center;
			color: white;
		}
		
		.border-3 {
			border: 3px solid #f1f1f1;
			border-radius: 10px;
		}
		
		.bar-5 {
			width: 60%;
			height: 18px;
			background: #04AA6D;
		}
		
		.bar-4 {
			width: 30%;
			height: 18px;
			background: #2196f3;
		}
		
		.bar-3 {
			width: 10%;
			height: 18px;
			background: #00bcd4;
		}
		
		.bar-2 {
			width: 4%;
			height: 18px;
			background: #ff9800;
		}
		
		.bar-1 {
			width: 15%;
			height: 18px;
			background: #f44336;
		}
		
		@media (max-width: 768px) {
			.side, .middle {width: 100%;}
			.right {display: none;}
		}
	</style>
</body>
</html>