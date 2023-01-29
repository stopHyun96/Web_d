//nav 함수
function myFunction() {
	let x = document.getElementById("myTopnav");
	// 변수 x는 아이디 topnav를 찾고
	// 2가지 요건 pc의 해상도일 때와, 모바일 태블릿 해상도일 때
	if (x.className === "topnav") { //모바일 부분
		x.className += " responsive";
		//기존에 있던 클래스에 responsive 클래스를 추가
	} else {//해상도가 600px이상이면
		x.className = "topnav"; //클래스명을 다시 topnav로 초기화
	}
}

function openCity(evt, cityName) {
	let i, tabcontent, tablinks;	//3개의 변수 선언
	
	tabcontent = document.getElementsByClassName("tabcontent");
	//탭 콘텐츠는 도큐먼트에서 탭콘텐츠라 되어있는 클래스명을 찾음
	
	for(i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.opacity = "0";
		// 탭 콘텐츠의 하위요소들은 화면에서 보이지 않음
	}
	
	tablinks = document.getElementsByClassName("tablinks");
	//탭 링크는 도큐먼트에서 탭링크라 되어있는 클래스명을 찾음
	
	for(i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
		// 탭링크 개별요소의 클래스명을 active로 바꿈(활성화 되어있음을 표시하기 위해)
	}
	
	document.getElementById(cityName).style.opacity = "1";
	// 버튼에 맞는 cityName를 찾아서 displya = none 되어있는 컨텐츠를 보여지게 함
	
	evt.currentTarget.className += " active";
	// 현재 선택한 타겟에 클래스명 active를 더하라.
}