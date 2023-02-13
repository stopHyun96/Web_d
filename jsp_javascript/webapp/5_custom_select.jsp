<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/input.css">
<title>Custom Select</title>
</head>
<body>
<h1>Custom Select</h1>
<div class="custom-select w-200">
	<select>
		<option value="0">Select car:</option>
		<option value="1">Audi</option>
		<option value="2">BMW</option>
		<option value="3">Citroen</option>
		<option value="4">Ford</option>
		<option value="5">Honda</option>
		   <option value="6">Jaguar</option>
    <option value="7">Land Rover</option>
    <option value="8">Mercedes</option>
    <option value="9">Mini</option>
    <option value="10">Nissan</option>
    <option value="11">Toyota</option>
    <option value="12">Volvo</option>
	</select>
</div>
<script>
let x, i, j, l, ll, selElmnt, a, b, c;
//custom-select클래스가 있는 요소를 찾는다
x = document.getElementsByClassName("custom-select");
l = x.length;
for(i=0; i<l; i++){
	selElmnt = x[i].getElementsByTagName("select")[0];
	ll = selElmnt.length;
	//selElmnt는 x의 인덱싱 첫번째 태그명 select를 찾는다
	//각 요소에 대해 선택한 항목으로 작동할 새DIV를 만든다
	a = document.createElement("DIV")
	a.setAttribute("Class", "select-selected");
	//a 클래스속성 select-selected를 추가한다
	a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
	x[i].appendChild(a);
	//a에 자식형태로 select옵션을 넣어준다
	
	//각 요소에 대해 옵션 목록을 포함할 새 DIV를 만든다
	b = document.createElement("DIV");
	b.setAttribute("Class", "select-items select-hide");
	for (j=1; j < ll; j++){
		//원래 선택요소의 각 옵션에 대해 옵션항목으로 작동할 새 div를 만든다
		c = document.createElement("DIV");
		c.innerHTML = selElmnt.options[j].innerHTML;
		c.addEventListener("click", function(e){
			let y, i, k, s, h, sl, yl;
			s = this.parentNode.parentNode.getElementsByTagName("select")[0];
			sl = s.length;
			h = this.parentNode.previousSibling;
			for(i =0; i < sl; i++){
				if(s.options[i].innerHTML == this.innerHTML){
					s.selectedIndex = i;
					h.innerHTML = this.innerHTML;
					y = this.parentNode.getElementsByClassName("same-as-selected");
					yl= y.length;
					for(k=0; k < yl; k++){
						y[k].removeAttribute("class");
					}
					this.setAttribute("class", "same-as-selected");
					break;
				}
			}
			h.click();
		})
		b.appendChild(c);
	}
	x[i].appendChild(b);
	a.addEventListener("click", function(e){
		/*선택상자를 클릭하면 다른 모든 선택상자를 닫고, 현재 선택상자 열기/닫기*/
		e.stopPropagation();
		/*e.preventDefault는 고유동작을 중지 시키고 e.stopPropagation()는 이벤트가 상위 엘리먼트에 전달되지 않게 막아준다*/
		closeAllSelect(this),
		this.nextSibling.classList.toggle("select-hide");
		this.classList.toggle("select-arrow-active");
	});
}
function closeAllSelect(elmnt){
	/*문서의 모든 선택 상자를 닫는 함수, 현재 선택상자 제외*/
	let x, y, i, xl, yl, arrNo = [];
	x= document.getElementsByClassName("select-items");
	y= document.getElementsByClassName("select-selected");
	xl = x.length;
	yl = y.length;
	for (i=0; i < yl; i++){
		if(elmnt == y[i]){
			arrNo.push(i)
		}else{
			y[i].classList.remove("select-arrow-active");
		}
	}
	for(i=0; i < xl; i++){
	if (arrNo.indexOf(i)){
		x[i].classList.add("select-hide");
	}
	}
}
document.addEventListener("click", closeAllSelect);
</script>
</body>
</html>