package com.booking.service;

import java.util.List;

import com.booking.dto.MyReservationDto;
import com.booking.dto.ReservationTypeDto;

public interface MyReservationService {
	public List<MyReservationDto> selectAll(int userId);
	public List<ReservationTypeDto> selectReservationTypeCount(int userId);
}
