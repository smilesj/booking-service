package com.booking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.booking.dao.MemberDao;
import com.booking.dto.MemberDto;

@Controller
@RequestMapping("/")
public class TestContorller {
	
	private MemberDao memberDao;
	
	@Autowired
	public TestContorller(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@GetMapping("/")
	public String testMain(){
		List<MemberDto> list = memberDao.selectAll();
		for(MemberDto member : list) {
			System.out.println(member.toString());
		}
		
		return "main";
	}
	
	@GetMapping("/myreservation")
	public String testList(){
		return "myreservation";
	}
	
	@GetMapping("/detail")
	public String detail(){
		return "detail";
	}
	
	@GetMapping("/reserve")
	public String reserve(){
		return "reserve";
	}
	
	@GetMapping("/review")
	public String review(){
		return "review";
	}
	
	@GetMapping("/reviewWrite")
	public String reviewWrite(){
		return "reviewWrite";
	}
}
