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
	
	@GetMapping("/list2")
	public String testList2(){
		return "list2";
	}
}
