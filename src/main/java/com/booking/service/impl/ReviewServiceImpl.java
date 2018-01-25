package com.booking.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booking.dao.ReviewDao;
import com.booking.service.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	private ReviewDao reviewDao;
	
	@Autowired
	public ReviewServiceImpl(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}

	@Override
	public String selectName(int reservationId) {
		return reviewDao.selectName(reservationId);
	}

}
