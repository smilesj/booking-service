package com.booking.service;

import java.util.List;

import com.booking.dto.MyReservationDto;

public interface MyReservationService {
	public List<MyReservationDto> selectAll(int userId);
}
