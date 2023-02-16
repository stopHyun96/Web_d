function autocomplete(inp, arr){
	//자동완성함수는 두개의 인수를 취합한다.
	//텍스트 필드 요소 / 가능한 자동 완성값의 배열
	var currentFocus;
	//누군가가 텍스트 필드에 쓸대 함수실행
	inp.addEventListener("input", function(e){
	let a,b,i, val = this.value;
	closeAllLists()
	//이미 열려있는 자동완성값목록을 모두 닫는다.
	if (!val){return false;}
	currentFocus = -1;
	a = document.createElement("DIV")
	//항목(값)을 포함할 DIV요소를 만든다
	a.setAttribute("id", this.id + "autocomplete-list");
	a.setAttribute("class", "autocomplete-items");
	this.parentNode.appendChild(a);//DIV요소를 자동완성 컨테이너의 자식으로 추가
	//아래 배열의 각 항목에 대해...
	 for (i=0; i < arr.length; i++){
		 //항목이 텍스트필드 값과 동일한 문자로 시작하는지 확인
		 if(arr[i].substr(0, val.length).toUpperCase()==val.toUpperCase()){
		b=document.createElement("DIV");//각 일치하는 요소에 대한 DIV요소 생성
		b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
		//일치하는 문자를 굵게표시
		b.innerHTML += arr[i].substr(val.length);
		b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
		/*현재 배열 항목의 값을 보유할 입력필드 삽입:*/
		b.addEventListener("click", function(e){//항목값(div요소)를 클릭하면 함수실행
			inp.value = this.getElementsByTagName("input")[0].value;
			//자동완성 텍스트 필드에 대한 값 삽입
			closeAllList();//자동 완성 값 목록을 닫음
			//또는 자동 완성 값의 다른 열린 목록
		});
		a.appendChild(b);
		 }
	 }
	});
	//키보드의 키를 눌러 기능을 실행함
	inp.addEventListener("keydown", function(e){
	var x = document.getElementById(this.id + "autocomplete-list");
	if(x) x = x.getElementsByTagName("div");
	if(e.keyCode == 40){//화살표 다운키를 누르면 currentFocus변수를 늘린다.
	currentFocus++;//현재 항목을 더잘보이게 한다
	addActive(x);
	} else if(e.keyCode == 38){//화살표 up키를 누르면 currentFocus변수를 줄인다
	currentFocus--;//현재 항목을 더잘보이게 한다
	addActive(x);
	}else if(e.keyCode == 13){//ENTER키를 누르면 폼이 제출되지 않도록 방지
	e.preventDefault();	
	if(currentFocus > -1){
		if(x) x[currentFocus].click();//활성 항목에 대한 클릭 시뮬레이션
	}
	}
	});
	function addActive(x){//항목을 활성으로 분류하는 함수
	if (!x)	return false;//모든 항목에서 활성 클래스를 제거하여 시작함
	removeActive(x);
	if(currentFocus >= x.length) currentFocus = 0;
	if(currentFocus < 0) currentFocus = (x.length - 1);
	//autocomplete-active클래스 추가
	x[currentFocus].classList.add("autocomplete-active");
	}
	function removeActive(x){//모든 자동완성 항목에서 활성클래스를 제거하는 함수
		for (var i=0; i < x.length; i++){
			x[i].classList.remove("autocomplete-active")
		}		
	}
	function closeAllLists(elmnt){//문서의 모든 자동완성 목록을 닫는다 인수로 전달된 것을 제외하고
	let x = document.getElementsByClassName("autocomplete-items");
		for (var i=0; i < x.length; i++){
			if(elmnt !=x[i] && elmnt !=inp){
				x[i].parentNode.removeChild(x[i]);
			}
		}		
	}
	//문서를 클릭하면 함수를 실행
	document.addEventListener("click", function(e){
		closeAllLists(e.target);
	});
		
}
/*세계의 모든 국가이름을  포함하는 배열*/
var countries = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua & Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia & Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Cayman Islands","Central Arfrican Republic","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cuba","Curacao","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kiribati","Kosovo","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauro","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","North Korea","Norway","Oman","Pakistan","Palau","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre & Miquelon","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Korea","South Sudan","Spain","Sri Lanka","St Kitts & Nevis","St Lucia","St Vincent","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad & Tobago","Tunisia","Turkey","Turkmenistan","Turks & Caicos","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States of America","Uruguay","Uzbekistan","Vanuatu","Vatican City","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"];

autocomplete(document.getElementById("myInput"),countries);