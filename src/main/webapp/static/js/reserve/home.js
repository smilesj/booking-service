$(function () {
	console.log("reserve!")
    var tickets = []
    $(".qty").each(function (i, e) {
        tickets.push(new Ticket('#' + $(e).attr('id')));
    });
});

class Ticket {

	constructor(id){
		this.root = id;
		this.count = 0;
		this.bindEvents();
		console.log(id+ " ticket create!");
	}
	
	function bindEvents(){
		this.on("click", ".ico_minus3", this.minus.bind(this));
		this.on("click", ".ico_plus3", this.plus.bind(this));
	}
	
	function plus(){
		this.count++;
		$(this).find(".total_price").html(this.count);
		console.log(this.count);
	}
	
	function minus(){
		this.count--;
		$(this).find(".total_price").html(this.count);
		console.log(this.count);
	}
}