$(function () {
	$('.header').addClass('hide');
});



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
})

