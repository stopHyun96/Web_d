<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/column.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Timer</title>
</head>
<body>
	<p id="demo"></p>
	
	<script type="text/javascript">
		let countDownDate = new Date("Jan 5, 2024 15:37:25").getTime();
		//카운트 다운할 날짜를 설정한다.
		let x = setInterval(function(){ //1초마다 카운트다운 업데이트
			let now = new Date().getTime(); //오늘 날짜와 시간 구하기
			let distance = countDownDate - now; //현재와 카운트다운 날짜 사이의 거리를 찾는다
			//일, 시, 분, 초에 대한 시간계산
			let days = Math.floor(distance / (1000 * 60 * 60 * 24));
			let hours = Math.floor(distance % (1000 * 60 * 60 * 24) / (1000 * 60 * 60));
			let minutes = Math.floor(distance % (1000 * 60 * 60) / (1000 * 60 * 60));
			let seconds = Math.floor(distance % (1000 * 60) / 1000);
			//id에 결과 출력
			document.getElementById("demo").innerHTML = days + "d" + hours + "h" + minutes + "m" + seconds + "s";
			
			//카운트 다운이 끝나면 텍스트를 쓴다
			if (distance < 0) {
				clearInterval(x);
				document.getElementById("demo").innerHTML = "EXPIRED";
			}
		}, 1000);
	</script>
</body>
</html>