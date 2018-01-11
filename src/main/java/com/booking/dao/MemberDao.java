package com.booking.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.booking.dto.MemberDto;

@Repository
public interface MemberDao {
	public List<MemberDto> selectAll();
}
