/* \u00D7 유니코드 X */
//닫기 버튼을 만들고 가목록 항목에 추가한다.
let myNodelist = document.getElementsByTagName("li");
let i;

for (i = 0; i < myNodelist.length; i ++) {
	let span = document.createElement("span");
	let txt = document.createTextNode("\u00D7");
	span.className = "close";
	span.appendChild(txt);
	myNodelist[i].appendChild(span);
}

//현재 목록 항목을 숨기려면 닫기버튼을 클릭
let close = document.getElementsByClassName("close");
let j;
for(j = 0; j < close.length; j ++) {
	close[j].onclick = function() {
		let div = this.parentElement;
		div.style.display="none";
	}
}

//목록 항목을 선택할 때 "선택됨" 기호를 추가한다.
let list = document.querySelector("ul");
list.addEventListener("click", function(ev) {
	if(ev.target.tagName === "LI") {
		ev.target.classList.toggle("checked");
	}
});

//ADD 버튼 클릭 시 새 목록 항목 생성
function newElement() {
	let li = document.createElement("li");
	let inputValue = document.getElementById("myInput").value;
	let t = document.createTextNode(inputValue);
	li.appendChild(t);
	
	if (inputValue === "") {
		alert("내용 없음");
	}else {
		document.getElementById("myUl").appendChild(li);
	}
	
	document.getElementById("myInput").value = "";
	
	let span = document.createElement("SPAN");
	let txt = document.createTextNode("\u00D7");
	span.className = "close";
	span.appendChild(txt);
	li.appendChild(span);
	
	for(i = 0; i < close.length; i++) {
		close[i].onclick = function() {
			let div = this.parentElement;
			div.style.display="none";
		}
	}
}