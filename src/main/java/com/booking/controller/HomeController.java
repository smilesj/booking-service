package com.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.booking.service.CategoryService;
import com.booking.service.ProductService;

@Controller
@RequestMapping("/")
public class HomeController {

	private CategoryService categoryService;
	private ProductService productService;
	
	@Autowired
	public HomeController(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	@GetMapping("/")
	public String mvHome(Model model) {
		model.addAttribute("categoryList", categoryService.selectAll());
		model.addAttribute("productList", productService.selectAll());
		
		return "main";
	}
}