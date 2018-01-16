package com.booking.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.booking.dto.ProductDto;

@Repository
public interface ProductDao {
	public List<ProductDto> selectAll(int page);
	public List<ProductDto> selectByCategory(HashMap<String, Integer> map);
}
