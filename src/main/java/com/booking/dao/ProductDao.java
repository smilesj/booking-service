package com.booking.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.booking.dto.ProductDto;

@Repository
public interface ProductDao {
	public List<ProductDto> selectAll();
	public List<ProductDto> selectByCategory(int categoryId);
}
