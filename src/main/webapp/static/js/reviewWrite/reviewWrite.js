$(function () {
	$('.header').addClass('hide');
});

var reviewLen;

$('.rating_rdo').on('click', function() {
	let starpoint = this.value;
	let len = $('.rating_rdo').length;
	
	for(let i = 0 ; i <= len ; i++) {
		if(i <= starpoint){
			$('input[name=rating'+(i+1)+']').prop('checked', true);
		}else{
			$('input[name=rating'+(i+1)+']').prop('checked', false);
		}
	}
	
	$('.star_rank').removeClass('gray_star');
	$('.star_rank').text(starpoint);
});

$('.review_write_info').on('click', function() {
	$(this).addClass('hide');
	$('.review_textarea').focus();
});

$('.review_textarea').on('blur', function() {
	reviewLen = $(this).val().trim().length;
	if(reviewLen == 0)
		$('.review_write_info').removeClass('hide');
});


$('.box_bk_btn').on('click', function() {
	if(reviewLen < 5 || reviewLen > 400) {
		alert("리뷰는 최소 5자에서 최대 400자까지 등록할 수 있습니다.");
		return;
	}
});