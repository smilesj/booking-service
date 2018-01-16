package com.booking.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booking.dao.ProductDao;
import com.booking.dto.ProductDto;
import com.booking.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	
	final static int PRODUCT_UNIT = 10;
	private ProductDao productDao;
	
	@Autowired
	public ProductServiceImpl(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public List<ProductDto> getList(int categoryId, int page) {
		List<ProductDto> list = (categoryId == 0 ? selectAll(page) : selectByCategory(categoryId, page * PRODUCT_UNIT));
		return list;
	}
	
	@Override
	public List<ProductDto> selectAll(int page) {
		return productDao.selectAll(page * PRODUCT_UNIT);
	}

	@Override
	public List<ProductDto> selectByCategory(int categoryId, int page) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("categoryId", categoryId);
		map.put("page", page * PRODUCT_UNIT);
		return productDao.selectByCategory(map);
	}

}
