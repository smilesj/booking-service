package com.booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class TestContorller {
	
	@GetMapping("/main")
	public String testMain(){
		return "home";
	}
	
	@GetMapping("/list")
	public String testList(){
		return "list";
	}
	
	@GetMapping("/list2")
	public String testList2(){
		return "list2";
	}
}
