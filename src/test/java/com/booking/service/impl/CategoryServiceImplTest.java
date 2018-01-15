package com.booking.service.impl;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.booking.config.RootApplicationContextConfig;
import com.booking.dao.CategoryDao;
import com.booking.dto.CategoryDto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = RootApplicationContextConfig.class)
@Transactional
public class CategoryServiceImplTest {
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Test
	public void testSelectAll() {
		List<CategoryDto> list = categoryDao.selectAll();
		Assert.assertNotNull(list);
		Assert.assertTrue("전시".equals(list.get(0).getName()));
	}

}
