$(function () {
    console.log('hello');
});

$(".summary_board li").on("click", function(){
	$(this).find("a").addClass("on");
});
var reservationId;
$(".booking_cancel").on("click", function(){
	reservationId = $(this).attr("data-reservation-id");
	$(".popup_booking_wrapper").css("display", "block");
	$(".popup_booking_wrapper").attr("data-reservation-id", reservationId);
});


$(".popup_btn_close").on("click", closePopup);
$(".btn_gray").on("click", closePopup);
$(".popup_booking_wrapper").click(".btn_green", function(){
	//reservationId = $(this).attr("data-reservation-id");
	console.log(reservationId);
//	$.ajax({
//		url : "/api/reservation/",
//		method : "delete"
//	});
});


function closePopup(){
	$(".popup_booking_wrapper").css("display", "none");
}