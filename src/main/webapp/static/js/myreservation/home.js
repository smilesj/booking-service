$(function () {
    console.log('hello my reservation');
    MyReservation.init();
    Popup.init();
});

var Popup = (function(){
	var popup_wrapper = $('.popup_booking_wrapper');
	var reservationId;
	var title;
	var time;
	
	function init(){
		title = '';
		time = '';
		bindEvents();
	}
	
	function bindEvents(){
		$('.card').on('click', '.booking_cancel', cancelReservation);///card item
		popup_wrapper.on('click', '.popup_btn_close', closePopup);
		popup_wrapper.on('click', '.btn_gray', closePopup);
		popup_wrapper.on('click', '.btn_green', ajaxCancel);
	}
	
	function cancelReservation(){
		reservationId = $(this).attr('data-reservation-id');
		title = $(this).parent().find('.tit').html();
		time = $(this).parent().find('.item_reservation_date').text();
		popup_wrapper.find('.pop_tit span').text(title);
		popup_wrapper.find('.pop_tit .sm').text(time);
		popup_wrapper.css('display', 'block');
		popup_wrapper.data('reservation-id', reservationId);
	}
	
	function ajaxCancel(){
		console.log('cancel!!!!' + reservationId);
//		$.ajax({
//			url : '/api/reservation/'+reservationId,
//			method : 'delete',
//		});
	}
	
	function closePopup(){
		popup_wrapper.css('display', 'none');
	}
	
	return {
		init: init
	}
})();

var MyReservation = (function(){
	var summaryItem = $('.my_summary');
	var summaryIndex;
	var reservationType;
	var listCard = $('.list_cards li');
	
	function init(){
		summaryIndex = 0;
		reservationType = 'all';
		bindEvents();
	}
	
	function bindEvents(){
		summaryItem.on('click', 'li', summary);
	}
	
	function summary(){
		summaryItem.find('li').eq(summaryIndex).find('a').removeClass('on');
		summaryIndex = $(this).index();
		$(this).find('a').addClass('on');
		switch(summaryIndex){
		case 0 : 
			reservationType = 'all';
			break;
		case 1 : 
			reservationType = ['requesting', 'due'];
			break;
		case 2 : 
			reservationType = ['used'];
			break;
		case 3 : 
			reservationType = ['refund_cancel'];
			break;
		}
		showListCard(reservationType);
	}
	
	function showListCard(reservationType){
		
		if(reservationType == 'all')
			listCard.removeClass('hide');
		else{
			listCard.addClass('hide');
			$.each(reservationType, function(index, type){
				$('.list_cards li[data-reservation-type="'+type+'"]').removeClass('hide');
			});
		}
	}
	
	return {
		init: init
	}
})();

