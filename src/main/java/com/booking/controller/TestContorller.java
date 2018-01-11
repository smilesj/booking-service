package com.booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class TestContorller {
	
	@GetMapping("/")
	public String testMain(){
		return "main";
	}
	
	@GetMapping("/myreservation")
	public String testList(){
		return "myreservation";
	}
	
	@GetMapping("/detail")
	public String detail(){
		return "detail";
	}
	
	@GetMapping("/reserve")
	public String reserve(){
		return "reserve";
	}
	
	@GetMapping("/review")
	public String review(){
		return "review";
	}
	
	@GetMapping("/reviewWrite")
	public String reviewWrite(){
		return "reviewWrite";
	}
}
