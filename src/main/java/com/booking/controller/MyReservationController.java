package com.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String home(Model model){
		int userId = 10;
		model.addAttribute("reservationType", myReservationService.selectReservationTypeCount(userId));
		model.addAttribute("reservationList", myReservationService.selectAll(userId));
		return "myreservation";
	}
}
