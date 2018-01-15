package com.booking.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.booking.dto.ProductDto;
import com.booking.service.ProductService;

@RestController
@RequestMapping("/products")
public class ProductRestController {

	private ProductService productService;
	
	@Autowired
	public ProductRestController(ProductService productService) {
		this.productService = productService;
	}
	
	@GetMapping
	public List<ProductDto> getList(@RequestParam int categoryId) {
		return productService.getList(categoryId);
	}
}
