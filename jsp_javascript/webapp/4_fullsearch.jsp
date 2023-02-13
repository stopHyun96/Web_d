<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/fullsearch.css">
<script src="js/full.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>fullsearch</title>
</head>
<body>
<h1>fullsearch</h1>
<div id="myOverlay" class="overlay">
	<span class="closeBtn" onclick="closeSearch()" title="close overlay">
		&times;
	</span>
	<div class="overlay-content">
		<form action="" class="searchLine">
			<input type="text" placeholder="search" name="search">
			<button type="submit"><i class="fa fa-search"></i></button>
		</form>
	</div>
</div>

<button class="openBtn" onclick="openSearch()">Open</button>
</body>
</html>