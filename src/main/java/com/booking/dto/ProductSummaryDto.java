package com.booking.dto;

import lombok.Data;

public @Data class ProductSummaryDto {
	private int id;
	private String name;
	private String observationTime;
	private String displayStart;
	private String displayEnd;
	private String placeName;
	private String placeLot;
	private String placeStreet;	
}
