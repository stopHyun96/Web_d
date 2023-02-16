let currentTab = 0;
//현재탭을 첫번째 탭으로 설정(0)
showTab(currentTab); //현재탭표시

function showTab(n) {
	// 이함수는 형식의 지정된 탭을 표시한다.
	let x = document.getElementsByClassName("tab");
	x[n].style.display = "block";
	
	//이전 다음 버튼을 수정
	if (n == 0) {//첫번째 페이지일 때 얘가 통과하지 않는 한 prev 버튼이 보이지 않는다.
		document.getElementById("prevBtn").style.display = "none";
	} else {
		document.getElementById("prevBtn").style.display = "inline";
	}
	
	if (n == (x.length - 1)) { //단계적으로 실행되는 경우
		//다 작성 시 next버튼이 전소으로 바뀜 그렇지 않으면 그대로
		document.getElementById("nextBtn").innerHTML = "Submit";
	} else {
		document.getElementById("nextBtn").innerHTML = "Next";
	}
	
	//올바른 단계 표시기를 표시하는 함수를 실행
	fixStepIndicator(n);
}

function nextPrev(n) { //이 함수는 표시할 탭을 파악한다.
	let x = document.getElementsByClassName("tab");
	if(n == 1 && !validateForm()) {return false;}
	//현재탭의 필드가 유효하지 않는 경우 함수를 종료한다.
	x[currentTab].style.display = "none";
	//현재 탭 숨기기
	currentTab = currentTab + n;
	//현재 탭을 1씩 늘리거나 줄임
	//양식의 끝에 도달한 경우
	if(currentTab >= x.length) {
		//양식이 제출
		document.getElementById("regForm").submit();
		return false;
	}
	//그렇지 않으면 올바른 탭을 표시
	
	showTab(currentTab);
}

function validateForm() { // 이 함수는 양식 필드의 유효성 검사를 처리한다.
	let x, y, i, valid = true;
	x = document.getElementsByClassName("tab");
	y = x[currentTab].getElementsByTagName("input");
	//현재탭의 모든 입력필드를 확인하는 루프
	for (i = 0; i < y.length; i++) {
		//만약 필드가 비워져 있다면
		if(y[i].value == "") {
			y[i].className += " invalid";
			//invalid 클래스를 더함
			valid = false;
			//현재 유효 상태를 거짓으로 설정
		}//유효한 상태가 true이면 단계를 완료하고 유효한 것으로 표시
		if (valid) {
			document.getElementsByClassName("step")[currentTab].className += " finish";
		}
		return valid;//유효한 상태를 리턴
	}
}

function fixStepIndicator(n) { //이 함수는 모든 단계의 "활성"클래스를 제거한다.
	let i, x = document.getElementsByClassName("step");
	for (i = 0; i < x.length; i++) {
		x[i].className = x[i].className.replace(" active", "");
	}// 현재 단계에서 "활성" 클래스를 추가한다.
	
	x[n].className += " active";
}