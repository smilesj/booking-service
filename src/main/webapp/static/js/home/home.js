$(function () {
	startTimer();
	ProductList.init();
});


/* Flicking -> component*/
var timer;
var flick;
var flickingList = $('.visual_img').find('li');
var size = flickingList.outerWidth();
var len = flickingList.length - 1;
var cnt = 0;

function startTimer() {
	timer = window.setInterval('getAutoIndex()', 2000);
}

function resetTimer() {
	flick = setTimeout(startTimer, 2000);
}

function getAutoIndex() {
	cnt++;
	cnt = cnt % len;
	flicking();
}

function flicking() {
	flickingList.animate({'left' : -(cnt * size)+'px'}, 'normal');
}

$('.prev_inn').on('click', function() {
	stopTimer();
	if(cnt == 0)
		return;
	cnt--;
	flicking();
	resetTimer();
});

$('.nxt_inn').on('click', function() {
	stopTimer();
	if(cnt == (len - 1))
		return;
	cnt++;
	flicking();
	resetTimer();
});

function stopTimer() {
	window.clearInterval(timer);
	window.clearInterval(flick);
}
/* --end-- */