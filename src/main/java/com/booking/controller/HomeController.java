package com.booking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.booking.dto.CategoryDto;
import com.booking.service.CategoryService;

@Controller
@RequestMapping("/")
public class HomeController {

	private CategoryService categoryService;
	
	@Autowired
	public HomeController(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	@GetMapping("/")
	public String mvHome(Model model) {
		model.addAttribute("categoryList", categoryService.selectAll());
		
		return "main";
	}
}