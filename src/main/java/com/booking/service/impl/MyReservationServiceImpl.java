package com.booking.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booking.dao.MyReservationDao;
import com.booking.dto.MyReservationDto;
import com.booking.service.MyReservationService;

@Service
public class MyReservationServiceImpl implements MyReservationService {

	private MyReservationDao myReservationDao;
	
	@Autowired
	public MyReservationServiceImpl(MyReservationDao myReservationDao) {
		this.myReservationDao = myReservationDao;
	}
	
	@Override
	public List<MyReservationDto> selectAll(int userId) {
		return myReservationDao.selectAll(userId);
	}

}
