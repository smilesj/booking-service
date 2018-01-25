$(function () {
	let flicking = new Flicking($('.visual_img'));
	let timer = new Timer(flicking);
	ProductList.init();
});

