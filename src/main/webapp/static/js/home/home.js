$(function () {

});

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
				$('#product_count').html(data.length+"개");
				setProductList(data);
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

	$('#left_event_box').html(template({products:left}));
	$('#right_event_box').html(template({products:right}))
}