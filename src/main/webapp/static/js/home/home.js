$(function () {

});

/*$(".event_tab_lst .item").on('click', function() {
	console.log($(this).data('category'));
})*/

$(".event_tab_lst .item").on('click', function() {
	setCategory($(this));
	getProduct($(this).data('category'));
});

function setCategory($this) {
	// children(), siblings() 함수 안쓰고
	$this.children().addClass('active');
	$this.siblings().children().removeClass('active');
}

function getProduct(categoryId) {
	let url = "/products?categoryId=" + categoryId;
	
	$.get(url).then(
			// 성공
			function(data) {
				console.log(data);
			},
			// 실패
			function(request, status, error) {
				console.log("code:"+request.status+"\n"+"error:"+error);
			}
	);
			
}