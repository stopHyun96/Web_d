function validateForm() {
	let x = document.forms["myForm"]["fname"].val();
	
	if(x == "" || x == nulls) {
		alert("이름을 적지 않음.");
		return false;
	}
}