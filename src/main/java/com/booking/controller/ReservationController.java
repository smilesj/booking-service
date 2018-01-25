package com.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.booking.service.ProductService;

@Controller
@RequestMapping("/reservations")
public class ReservationController {
	
	private ProductService productService;
	
	@Autowired
	public ReservationController(ProductService productService) {
		this.productService = productService;
	}
	
	@GetMapping("/products/{productId}")
	public String view(Model model, @PathVariable int productId){
		model.addAttribute("product", productService.selectProductSummary(productId));
		model.addAttribute("price", productService.selectProductPrice(productId));
		return "reserve";
	}
	
	@PostMapping("/products/{productId}")
	public String write(){
		return "reserve";
	}
}
