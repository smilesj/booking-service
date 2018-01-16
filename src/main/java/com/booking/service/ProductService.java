package com.booking.service;

import java.util.List;

import com.booking.dto.ProductDto;

public interface ProductService {
	public List<ProductDto> getList(int categoryId, int page);
	public List<ProductDto> selectAll(int page);
	public List<ProductDto> selectByCategory(int categoryId, int page);
}
