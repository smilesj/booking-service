package com.booking.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.booking.dto.CategoryDto;

@Repository("CategoryDao")
public interface CategoryDao {
	public List<CategoryDto> selectAll();
}
