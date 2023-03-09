<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/column.css">
<title>Column Layout</title>
</head>
<body>
	<h1>1)2열 레이아웃</h1>
	<div class="row">
		<div class="column bg-a">
			<h2>Column 1</h2>
			<p>Some text...</p>
		</div>
		
		<div class="column bg-b">
			<h2>Column 2</h2>
			<p>Some text...</p>
		</div>
	</div>
	
	<h1>2)3열 레이아웃</h1>
	<div class="row-2">
		<div class="column-2 bg-a">
			<h2>Column 1</h2>
			<p>Some text...</p>
		</div>
		
		<div class="column-2 bg-b">
			<h2>Column 2</h2>
			<p>Some text...</p>
		</div>
		
		<div class="column-2 bg-c">
			<h2>Column 3</h2>
			<p>Some text...</p>
		</div>
	</div>
</body>
</html>