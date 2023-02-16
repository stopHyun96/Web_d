
let myInput = document.getElementById("psw");
let letter = document.getElementById("letter");
let capital = document.getElementById("capital");
let number = document.getElementById("number");
let length = document.getElementById("length");

//사용자가 암호 필드를 클릭하면 메세지 상자를 표시
myInput.onfocus = function() {
	document.getElementById("message").style.display = "block";
}
//사용자가 암호 필드를 클릭하면 메세지 상자를 숨긴다.
myInput.onblur = function() {
	document.getElementById("message").style.display = "none";
}
//사용자가 암호필드에 무언가를 입력하기 시작할 때
myInput.onkeyup = function() {
	//소문자 확인
	let lowerCaseLetters = /[a-z]/g;
	if(myInput.value.match(lowerCaseLetters)) {
		letter.classList.remove("invalid");
		letter.classList.add("valid");
	}else {
		letter.classList.remove("valid");
		letter.classList.add("invalid");
	}
	//대문자 확인
	let upperCaseLetters = /[A-Z]/g;
	if(myInput.value.match(upperCaseLetters)) {
		capital.classList.remove("invalid");
		capital.classList.add("valid");
	}else {
		capital.classList.remove("valid");
		capital.classList.add("invalid");
	}
	//숫자 확인
	let numbers = /[0-9]/g;
	if(myInput.value.match(numbers)) {
		number.classList.remove("invalid");
		number.classList.add("valid");
	}else {
		number.classList.remove("valid");
		number.classList.add("invalid");
	}
	//길이 확인
	if(!myInput.value.length >= 8) {
		length.classList.remove("invalid");
		length.classList.add("valid");
	}else {
		length.classList.remove("valid");
		length.classList.add("invalid");
	}
}