package com.booking.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booking.dao.CategoryDao;
import com.booking.dto.CategoryDto;
import com.booking.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	private CategoryDao categoryDao;
	
	@Autowired
	public CategoryServiceImpl(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	@Override
	public List<CategoryDto> selectAll() {
/*		List<CategoryDto> list = categoryDao.selectAll();
		for(CategoryDto cate : list) {
			System.out.println(cate.getId());
		}*/
		return categoryDao.selectAll();
	}

}
