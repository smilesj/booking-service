<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="ko">
        <div class="ct main">
            <div>
                <tiles:insertAttribute name="title" />
                <tiles:insertAttribute name="product-information" />
                <tiles:insertAttribute name="event" />   
                <div class="section_btn"> <button type="button" class="bk_btn"> <i class="fn fn-nbooking-calender2"></i> <span>예매하기</span> </button> </div>
				<tiles:insertAttribute name="review" /> 
                <tiles:insertAttribute name="detail-information" /> 
            </div>
        </div>
    <div id="photoviwer"></div>