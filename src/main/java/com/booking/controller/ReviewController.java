package com.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.booking.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	private ReviewService reviewService;
	
	@Autowired
	public ReviewController(ReviewService reviewService) {
		this.reviewService = reviewService;
	}

	@GetMapping
	public String mvReviewWrite(Model model, @RequestParam int reservationId) {
		model.addAttribute("reservationName", reviewService.selectName(reservationId));
		
		return "reviewWrite";
	}
}
