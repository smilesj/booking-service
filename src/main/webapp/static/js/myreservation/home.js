$(function () {
    console.log('hello');
});

var summaryIndex = 0;
$(".my_summary li").on("click", function(){
	$(this).parent().find("li").eq(summaryIndex).find("a").removeClass("on");
	summaryIndex = $(this).index();
	$(this).find("a").addClass("on");
});


var reservationId;
var title = '';
var time = '';
$(".booking_cancel").on("click", function(){
	reservationId = $(this).attr("data-reservation-id");
	title = $(this).parent().find(".tit").html();
	time = $(this).parent().find(".item_reservation_date").text();
	$(".popup_booking_wrapper").find(".pop_tit span").text(title);
	$(".popup_booking_wrapper").find(".pop_tit .sm").text(time);
	$(".popup_booking_wrapper").css("display", "block");
	$(".popup_booking_wrapper").data("reservation-id", reservationId);
});


$(".popup_booking_wrapper .btn_green").on("click", function(){
	$.ajax({
		url : "/api/reservation/"+reservationId,
		method : "delete",
	});
});


$(".popup_btn_close").on("click", closePopup);
$(".btn_gray").on("click", closePopup);

function closePopup(){
	$(".popup_booking_wrapper").css("display", "none");
}