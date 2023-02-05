$(function() {
	$(':button').css('font-style', 'italic');
	$('.ab:button').css('color', 'red');
	
	//선택하면 배경색 바꾸기
	$('input').change(function() {
		let backgroundColor = $('input:checked').val();
		//변수 backgroundColor에 input:checked.val() 값을 대입
		$('div.box').css('background-color', backgroundColor);
	});
	
	//셀렉트 선택하면 배경색 바꾸기
	$('select').change(function() {
		let bgC = $('option:selected').val();
		$('div.box_2').css('background-color', bgC);
	});
	
	//contain
	$('p:contains("정")').css('color', 'coral');
	
	//empty
	$('td:empty').append('N/A');
	
	//even, odd
	$('.even li:even').css('color', 'red'); //짝수 인덱스 요소의 글씨를 red로
	
	//has()
	$('.has li:has(a)').css('border', '1px solid red');
	
	//nth-child()
	$('.nc li:nth-child(2)').addClass('h-red');
	
	//odd
	$('.odd li:odd').css('color', 'lightblue'); //홀수 인덱스 요소의 글씨를 lightblue로
	
	//add
	$('ul.add li').add('p.addAfter').css('color', 'violet');
	
	$('ul.hover li:nth-child(1)').hover(function() {
		$(this).add('p.change').css('color', 'green');
	}, function() {
		$(this).add('p.change').css('color', 'black');
	});
	
	//addBack
	$('div.addBack').find('p.ip').addBack().addClass('abc');
	
	//addClass
	$('h1.add').addClass('bg');
	$('h2.add').addClass('bg bd'); //클래스 두개 적용
	
	//removeClass
	$('h1.con').removeClass('bg');
	$('h2.con').removeClass('bg bd'); //클래스 두개 적용
	
	//after
	$('h1.gr').after('<p> world! </p>');
	
	$('h2.move').after($('p.bye'))
	
	//animate_1
	$('button.btn').click(function() {
		$('#rectblue').animate({
			width: '100%'
		});
	});
	
	//animate_vs
	$('button.vs').click(function() {
		$('#lightblue').animate({
			width: '100%'
		}, 2000, 'swing');
		$('#pink').animate({
			width: '100%'
		}, 2000, 'linear');
	});
	
	//appendTo
	$('span.insert').appendTo('h1.head');
	
	let hClass = $('#find').attr('class');
	$('span.inin').text(hClass);
	
	$('input.it').attr('placeholder', 'Input your address');
	
	//beofre
	$('p#pup').before('<h1>lorem ipsum</h1>');
	
	$('h1.down').before($('p#before'))
	
	//children
	$('ul.pr').children('.ip').css('color', 'red');
	
	//click
	$('.sec').click(function() {
		$(this).toggleClass('tbox');
	});
	
	//clone
	$('span.clone').clone().appendTo('h1.null');
	
	//delay
	$('button.click').click(function() {
		$('p.updown').slideUp(200).delay(2000).slideDown(200);
	});
	
	//detach
	let hDetach;
	$('button#cut').click(function() {
		hDetach = $('h2.be').detach();
	});
	$('button#paste').click(function() {
		$('h2.ce').before(hDetach);
	});
	
	//each
	let z = 1;
	$('p.color').each(function(){
		$(this).addClass('s' + z);
		z = z + 1;
	});
	
	let i = 1;
	$('p.two').each(function(){
		$(this).addClass('s' + i);
		i = i + 1;
		if (i === 3) {
			return false;
		}
	});
	
	//empty
	$('button.empty').click(function() {
		$('header.conremove').empty();
	});
	
	//fadeIn
	/*$('h1.fi').fadeIn(2000, function() {
		$(this).css('color', 'red');
	});*/
	
	
	//fadeToggle
	$('button.tg').click(function (){
		$('h1.tgh1').fadeToggle(2000);
	});
	
	//find
	$('p.child').find('span.ip').css('font-size', '2em');
	
	//get
	let Get = $('ul.get li').get();
	for (let a = 0; a < Get.length; a++) {
		$('div.append').append('<p>' + Get[a].innerHTML + '</p>');
	}
	
	//has
	$('aside').has('span').css('color', 'red');
	
	//hide
	$('button.hide1').click(function() {
		$('div.box1').hide(1000, 'linear', function() {
			$(this).show(1000);
		});
	});
	
	//hover
	$('span.border').hover(function() {
		$(this).animate({
			fontSize: '50px'
		}, 500);
	},function() {
		$(this).animate({
			fontSize: '1em'
		}, 500);
	});
	
	//html
	/*let html = $('div.text').html();
	alert(html);*/
	
	//load
	$('#xy').load('load-02.html #ab');
	
	//not
	let a;
	$('button.not').click(function() {
		a = $('dl.not dd').not('dd.ip');
		$(a).css('color', 'red');
	});
	
/*	//offset
	let hy1 = $('h5').offset();
	let hy2 = $('h6').offset();
	$('h5').after('<p>' + 'h5-left : ' + hy1.left + ', top : ' + hy1.top + '</p>');
	$('h6').after('<p>' + 'h6-left : ' + hy2.left + ', top : ' + hy2.top + '</p>');*/
	
	//parent
	$('p.ef').parent('div.cd').css('color', 'red');
	
	//prepend
	$('ul.add').prepend('<li>one</li>')
	
	//prop
	$('.check-all').click(function() {
		$('.ch').prop('checked', this.checked);
	});
	
	//remove
	$('button.tag').click(function() {
		$('h1').remove('.rm');
	});
	
	//removeAttr
	$('input.ra').removeAttr('placeholder');
	
	//removeClass
	$('h1.bg').removeClass('bd');
	$('h2.bg').removeClass('bg bd');
	
	//replaceWidth
	$('button.replace').click(function() {
		$('h3').replaceWith('<p>ipsum</p>');
	});
	
	//resize
	let screenW = $('div.size').width();
	$('div.size').append(screenW);
	$(window).resize(function() {
		screenW = $('div.size').width();
		$('div.size').empty().append(screenW);
	});
	
	//scrollTop
	/*let scT;
	$('button.scrollup').click(function() {
		scT = $('div.jbbox').scrollTop();
		alert(scT);
	});*/
	$('button.scrollup').click(function() {
		scT = $('div.jbbox').scrollTop(0);
	});
	
	//slice
	$('ol.a li').slice(2,4).css('color', 'red');
	
	//slideDown
	$('button.sd').click(function() {
		$('div.sb').slideDown();
	});
});