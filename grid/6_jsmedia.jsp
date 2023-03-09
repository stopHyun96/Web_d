<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/column.css">
<title>Js Media</title>
</head>
<body>	
<p>표시 영역이 700픽셀보다 작거나 같으면 배경색이 노란색이 됨</p>
<p>표시 영역이 700픽셀보다 크면 배경색이 분홍색이 됨</p>

<script type="text/javascript">
	function myFunction(x) {
		if(x.matches) {
			document.body.style.background="yellow";
		}else {
			document.body.style.background="pink";
		}
	}
	
	let x = window.matchMedia("(max-width:700px)");
	myFunction(x);//런타임에 리스너 함수 호출
	//상태 변경 시 리스너 함수 연결
	x.addListener(myFunction);
</script>
</body>
</html>