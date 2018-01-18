package com.booking.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.booking.service.MyReservationService;

@RestController
@RequestMapping("/api/reservation")
public class MyResevationRestController {
	
	private MyReservationService myReservationService;
	
	@Autowired
	public MyResevationRestController(MyReservationService myReservationService) {
		this.myReservationService = myReservationService;
	}
	
	@DeleteMapping("/{id}")
	public void reservationRefundCancel(@PathVariable("id") int reservationId) {
		myReservationService.reservationRefundCancel(reservationId);
	}
}
