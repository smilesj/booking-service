package com.booking.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.booking.dto.MyReservationDto;
import com.booking.dto.ReservationTypeDto;

@Repository
public interface MyReservationDao {
	public List<MyReservationDto> selectAll(int userId);
	public List<ReservationTypeDto> selectReservationTypeCount(int userId);
}
