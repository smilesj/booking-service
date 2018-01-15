package com.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.booking.service.MyReservationService;

@Controller
@RequestMapping("/reservation")
public class MyReservationController {
	
	private MyReservationService myReservationService;
	
	@Autowired
	public MyReservationController(MyReservationService myReservationService) {
		this.myReservationService = myReservationService;
	}
	
	@GetMapping
	public String home(){
		return "myreservation";
	}
}
