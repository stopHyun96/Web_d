function openNav() {
	document.getElementById("myNav").style.display = "block";
}

function closeNav() {
	document.getElementById("myNav").style.display = "none";
}

/* canvasNav */
function openNav_1() { //가로폭을 강제적으로 늘려주는게 목적
	document.getElementById("mySidenav").style.width = "250px";
	document.getElementById("main").style.marginLeft = "250px";
	document.body.style.backgroundColor = "rgba(0,0,0,.4)";
}

function closeNav_1() { //가로폭을 다시 0으로 원상복구
	document.getElementById("mySidenav").style.width = "0px";
	document.getElementById("main").style.marginLeft = "0px";
	document.body.style.backgroundColor = "white";
}

/* 슬라이딩 나브 
자바스크립트 논리 연산자
||(or), &&(and), !(not)
*/
window.onscroll = function() {
	scrollFunction(); //함수 호출
}

function scrollFunction() {
	if(document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		//만악에 바디의 스크롤높이가 20보다 크거나 바디의 차일드노드 스크롤높이가 20보다 크다면
		document.getElementById('navbar').style.top = "0";//나브바를 보이게 만들고
	}else {//20보다 작다면
		document.getElementById('navbar').style.top = "-53px";//나브바를 보이게 만들고
	}
}

/* 채팅 */
function openFrom() {
		document.getElementById('myForm').style.display = "block";//나브바를 보이게 만들고
}

function closeForm() {
		document.getElementById('myForm').style.display = "none";//나브바를 보이게 만들고
}