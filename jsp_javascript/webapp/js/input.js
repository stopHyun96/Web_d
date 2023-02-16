function myCheck() {
	let checkBox = document.getElementById("myCheck");
	let text = document.getElementById("text");
	if (checkBox.checked == true) {
		text.style.display="block";
	}else {
		text.style.display="none";
	}
}