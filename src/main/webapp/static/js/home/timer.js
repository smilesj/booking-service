class Timer {
	constructor(_flicking) {
		this.flicking = _flicking;
		this.autoTimer;
		this.btnTimer;
		this.$prev = document.getElementById("btn_prev");
		this.$next = document.getElementById("btn_nxt");
		this.bindEvents();
	}
	
	bindEvents() {
		this.startTimer();
		this.$prev.addEventListener('click', this.setTimer.bind(this));
		this.$next.addEventListener('click', this.setTimer.bind(this));
	}
	
	startTimer() {
		this.autoTimer = window.setInterval(this.getAutoIndex.bind(this), 2000);
	}

	resetTimer() {
		this.btnTimer = setTimeout(this.startTimer.bind(this), 2000);
	}

	getAutoIndex() {
		this.flicking.cnt++;
		this.flicking.cnt = this.flicking.cnt % this.flicking.len;
		this.flicking.flicking();
	}

	clearTimer() {
		window.clearInterval(this.autoTimer);
		window.clearInterval(this.btnTimer);
	}
	
	setTimer() {
		this.clearTimer();
		this.resetTimer();
	}
}