package com.booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class TestContoller {
	
	@GetMapping("/")
	public String test(){
		System.out.println("hello");
		return "test";
	}
}
