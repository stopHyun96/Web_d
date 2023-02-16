let video = document.getElementById("myVideo");
let btn = document.getElementById("myBtn");

function myPlay() { //play나 pause할때 텍스트 변경
	if(video.paused) {
		video.play();
		btn.innerHTML = "Pause";
	}else {
		video.pause();
		btn.innerHTML = "Play";
	}
}