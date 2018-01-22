var ProductList = (function() {
	let page = 0;
	let flag = false;
	let currentCate = 0;
	let cachedData = [];
	let source;
	let template;
	
	let $cateUl = $('.event_tab_lst');
	let $loadingbar = $('.loading_bar');
	let $leftbox = $('#left_event_box');
	let $rightbox = $('#right_event_box');
	
	function init() {
		source = $('#product-template').html();
		template = Handlebars.compile(source);		
		bindEvents();
	}
	
	function bindEvents() {
		$cateUl.on('click', 'li.item', changeCategory);
		$(window).scroll(scrollUpdate);
	}
	
	function changeCategory() {
		page = 0;
		flag = false;
		currentCate = $(this).data('category');
		
		setCategory($(this));
		getProduct(currentCate, page);		
	}
	
	function setCategory($this) {
		// children(), siblings() 함수 안쓰고
		$this.children().addClass('active');
		$this.siblings().children().removeClass('active');
		
		let count = $('#cate'+$this.data('category')).val();
		$('#product_count').html(count+"개");		
	}
	
	function getProduct(categoryId, page) {
		$loadingbar.removeClass('hide');
		
		if(flag)
			return;
	
		let url = "/categories/" + categoryId + "/products?page=" + page;
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
		if(result.length < 11)
			flag = true;
		
		let left = [];
		let right = [];
		let length = (result.length == 11 ? result.length - 1 : result.length);
		
		for(let i = 0 ; i < length ; i += 2) {
			left.push(result[i]);

			if(i == length - 1)
				break;
			
			right.push(result[i+1]);
		}

		$loadingbar.addClass('hide');
		
		let type;
		if(page == 0)
			type = "html";
		else
			type = "append";
		
		$leftbox[type](template({products:left}));
		$rightbox[type](template({products:right}));		
	}
	
	function scrollUpdate() {
		if($(window).scrollTop() == $(document).height() - $(window).height()) {
			page++;
			getProduct(currentCate, page);
		}		
	}
	
	return {
		init : init
	}
})();



