$(function () {
	console.log("reserve!");
    var tickets = [];
    $(".qty").each(function (i, e) {
    	tickets.push(new Ticket('#' + $(e).attr('id')));
    });
    BookingForm.init();
});

var BookingForm = (function(){
	function init(){
		bindEvents();
	}
	
	function bindEvents(){
		$(".agreement").on("click", ".btn_agreement", clickAgreement);
	}
	
	function clickAgreement(){
		$(this).parent().toggleClass("open");
		$(this).find(".fn").toggleClass("fn-up2");
		$(this).find(".fn").toggleClass("fn-down2");
	
// 		".btn_text" > 보기, 닫기 --> 첫번째 func일 경우 display:none으로 보이지 않음		
//		$(this).find(".btn_text").toggle(function(e) {
//			e.preventDefault();
//		    $(this).text('Before');
//		}, function() {
//		    $(this).text('After');
//		});

	}
	
	return {
		init : init
	}
})();

class Ticket {
	constructor(id){
		this.root = id;
		this._count = 0;
		this._price = parseInt($(this.root).find(".price").html().replace(",", ""));
		this.$btnPlus = $(this.root).find(".ico_plus3");
		this.$btnMinus = $(this.root).find(".ico_minus3");
		this.$inputCount = $(this.root).find(".count_control_input");
		this.$totalPrice = $(this.root).find(".total_price");
		this.bindEvents();
	}
	
	bindEvents(){
		this.$btnPlus.on("click", this.plusCount.bind(this));
		this.$btnMinus.on("click", this.minusCount.bind(this));
	}
	
	plusCount(){
		this._count++;
		this.$inputCount.val(this._count);
		this.$totalPrice.html(this._count*this._price);
		this.$totalPrice.parent().addClass("on_color");
		this.$btnMinus.removeClass("disabled");
	}
	
	minusCount(){
		if(this._count < 1){
			return;
		}
		this._count--;
		this.$inputCount.val(this._count);
		this.$totalPrice.html(this._count*this._price);
		if(this._count < 1){
			this.$btnMinus.addClass("disabled");
			this.$totalPrice.parent().removeClass("on_color");
		}
	}
	
	
}
