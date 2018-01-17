$(function () {
	startTimer();
});

/* category & productList -> module*/
var page = 0;
var flag = false;
var currentCate = 0;
var cachedData = [];

$(window).scroll(function() {
	if($(window).scrollTop() == $(document).height() - $(window).height()) {
		page++;
		getProduct(currentCate, page);
	}
})

$(".event_tab_lst .item").on('click', function() {
	page = 0;
	flag = false;
	currentCate = $(this).data('category');
	
	$('.loading_bar').removeClass('hide');
	setCategory($(this));
	getProduct($(this).data('category'), page);
});

function setCategory($this) {
	// children(), siblings() 함수 안쓰고
	$this.children().addClass('active');
	$this.siblings().children().removeClass('active');
	
	let count = $('#cate'+$this.data('category')).val();
	$('#product_count').html(count+"개");
}

function getProduct(categoryId, page) {
	let url = "/products?categoryId=" + categoryId + "&page=" + page;
	
	if(flag)
		return;
	
	let data = cachedData[url];
	if(data) {
		setProductList(data);
		return;
	}
	
	$.get(url).then(
			// 성공
			function(data) {
				if(data.length > 0)
					setProductList(data);
				else
					$('.nodata_message').removeClass('hide');
				
				cachedData[url] = data;
			},
			// 실패
			function(request, status, error) {
				console.log("code:"+request.status+"\n"+"error:"+error);
			}
	);
}

function setProductList(result) {
	var source = $('#product-template').html();
	var template = Handlebars.compile(source);
	
	let left = [];
	let right = [];

	for(let i = 0 ; i < result.length ; i += 2) {
		left.push(result[i]);

		if(i == result.length - 1)
			break;
		
		right.push(result[i+1]);
	}

	$('.loading_bar').addClass('hide');
	
	let type;
	if(page == 0)
		type = "html";
	else
		type = "append";
	
	if(result.length < 10)
		flag = true;
	
	$('#left_event_box')[type](template({products:left}));
	$('#right_event_box')[type](template({products:right}))
}

/* --end-- */



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