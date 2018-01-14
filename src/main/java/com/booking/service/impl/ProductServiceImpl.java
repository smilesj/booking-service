package com.booking.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booking.dao.ProductDao;
import com.booking.dto.ProductDto;
import com.booking.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	
	private ProductDao productDao;
	
	@Autowired
	public ProductServiceImpl(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public List<ProductDto> selectAll() {
		return productDao.selectAll();
	}

}
