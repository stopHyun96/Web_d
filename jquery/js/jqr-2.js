$(function() {
	//toggle
	$('button.toggle').click(function(){
		$('.b-box').slideToggle();
	});
	
	$('button.tgg').click(function(){
		$('.b-x').slideToggle( 600, 'linear', function(){
			alert('toggled');
		});
	});
	
	//submit
	$('#h-fruit').change(function() {
		$('#h-form').submit();
	});
	
	//유효성 검사
	$('#hform').submit(function(event) {
		if($('#hfruit').val() == '') {
			alert('선택하세요');
			event.preventDefault();
		};
	});

	//.text()
	/*let Text = $('div.tt').text();
	alert(Text);*/
	
	//text insert
	$('nav.nav').text('<p>모두 글자로 인식</p>');
	
	//toggle
	$('p.a').click(function() {
		$('p.b').toggle('slow');
	});
	
	//toggleClass
	$('.in-out').click(function() {
		$('.bgg').toggleClass('show-bg')
	});
	
	//width
	$('.width-div-a').click(function() {
		$('.div-a').width('500px');
	});
	
	//unwrap
	$('.remo').unwrap('.black');
	
	
	//val
	$('#jbInputButton').click(function() {
		let hy = $('#jbInput').val();
		alert(hy);	
	});
	
	$('#hSelect').change(function() {
		let ch = $('#hSelect').val();
		alert(ch);
	});
	
	$('#InputButton').click(function() {
		$('#Input').val('asdf');
	});
	
	//wrap
	$('p.c').wrap('<blockquote></blockquote>');
	$('p.c').parent().addClass('wrap-div');
	
	//wrapAll
	$('.wp').wrap('<div></div>');
	$('.wp').parent().addClass('wrap-div');
	
	//스크롤바가 내려가면 top 나오기
	$(window).scroll(function() {
		if ($(this).scrollTop() > 200) {
			$('.top').fadeIn();
		}else {
			$('.top').fadeOut();
		}
	});
	
	//id가 아닌 클릭했을 때 jquery활용
	$('.top').click(function() {
		$('html, body').animate({scrollTop:0},400);
		return false;
	});
	
	//스크롤바 내리면 나브 고정
	let Offset = $('.nav').offset(); //nav의 위치 파악
	$(window).scroll(function() { //스크롤이 발생하면 함수 실행
		if($(document).scrollTop() > Offset.top) {
			//문서의 스크롤바 위치가 nav의 수직위치보다 아래라면
			$('.nav').addClass('Fixed');
			//nav에 Fixed 클래스 추가
		}else { //아니라면
			$('.nav').removeClass('Fixed');
			//nav에 Fixed 클래스 제거
		}
	});
	
	//메타태그 노출
	let Meta1 = $('meta[name="author"]').attr('content');
	let Meta2 = $('meta[property="og:image"]').attr('content');
	$('.meta-view').append(Meta1 + ', ' + Meta2);
	
	//요소가 순서대로 나타나기
	let Time = 600; //나타나는 시간을 600(0.6초)으로 설정
	$('.s-1').animate({
		opacity: '1'
	}, Time, function() {
		$('.s-2').animate({
			opacity: '1'
		}, Time, function() {
			$('.s-3').animate({
				opacity: '1'
			}, Time);
		});
	});
});

function optionChange() {
	//동적 셀렉트
	let a = ['스페이스그레이', '그린', '네이비'];
	let b = ['black', 'green', 'navy'];
	let v = $('#s1').val();
	let o;
	
	if (v == 'a') {
		o = a; /* 아이폰 색상 옵션 */
	} else if (v == 'b') {
		o = b; /* 갤럭시 색상 옵션 */
	} else {
		o = []; //기기를 선택하세요일 때
	}
	
	$('#s2').empty();
	$('#s2').append('<option></option>');
	
	for (let i = 0; i < o.length; i ++) {
		$('#s2').append('<option>' + o[i] + '</option>');
	}
}