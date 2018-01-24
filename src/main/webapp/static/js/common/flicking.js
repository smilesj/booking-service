class Flicking {
	constructor(root) {
		this.root = root;
		this.flickingList = root.find('li');
		this.size = this.flickingList.outerWidth();
		this.len = this.flickingList.length - 1;
		this.cnt = 0;
		this.bindEvents();
	}
	
	bindEvents() {
		$('.prev_inn').on('click', this.prev.bind(this));
		$('.nxt_inn').on('click', this.next.bind(this));
	}

	prev() {
		if(this.cnt == 0)
			return;
		this.cnt--;
		this.flicking();
	}
	
	next() {
		if(this.cnt == (this.len - 1))
			return;
		this.cnt++;		
		this.flicking();
	}
	
	flicking() {
		this.flickingList.animate({'left' : -(this.cnt * this.size)+'px'}, 'normal');
	}
}
