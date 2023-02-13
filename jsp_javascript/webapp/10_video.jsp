<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/video.css">
<title>비디오가 메인이 되는 사이트</title>
</head>
<body>
<video autoplay muted loop id="myVideo">
<source src="video/video.mp4" type="video/mp4">
Your browser does not support HTML5 video.
</video>

<div class="content">
	<h1>Heading</h1>
	<p>내용</p>
	<button id="myBtn" onclick="myPlay()">Pause</button>
	<h1>주의사항</h1>
	<pre>
	- website에서 영상을 콘트롤하려면 두가지 방법이 있는데 유튜브를 활용하던가
	- 스트리밍 서버로 만들게 되는데 제작비용이 많이 발생한다.
	- 그래서 대부분 유튜브를 사용한다.
	</pre>
</div>
<script src="js/video.js"></script>


</body>
</html>