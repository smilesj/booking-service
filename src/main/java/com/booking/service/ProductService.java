package com.booking.service;

import java.util.List;

import com.booking.dto.ProductDto;

public interface ProductService {
	public List<ProductDto> getList(int categoryId);
	public List<ProductDto> selectAll();
	public List<ProductDto> selectByCategory(int categoryId);
}
