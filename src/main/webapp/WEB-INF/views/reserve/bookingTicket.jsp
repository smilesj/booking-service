<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="section_booking_ticket">
    <div class="ticket_body">
        <div class="qty">
            <div class="count_control">
                <!-- [D] 수량이 최소 값이 일때 ico_minus3, count_control_input에 disabled 각각 추가, 수량이 최대 값일 때는 ico_plus3에 disabled 추가 -->
                <div class="clearfix">
                    <a href="#" class="btn_plus_minus spr_book2 ico_minus3 disabled" title="빼기"> </a> <input type="tel" class="count_control_input disabled" value="0" readonly title="수량">
                    <a href="#" class="btn_plus_minus spr_book2 ico_plus3" title="더하기">
                    </a>
                </div>
                <!-- [D] 금액이 0 이상이면 individual_price에 on_color 추가 -->
                <div class="individual_price"><span class="total_price">123,000</span><span class="price_type">원</span></div>
            </div>
            <div class="qty_info_icon"> <strong class="product_amount"> <span>성인</span> </strong> <strong class="product_price"> <span class="price">10,200</span> <span class="price_type">원</span> </strong> <em class="product_dsc">10,200원 (15% 할인가)</em> </div>
        </div>
        <div class="qty">
            <div class="count_control">
                <div class="clearfix">
                    <a href="#" class="btn_plus_minus spr_book2 ico_minus3" title="빼기"> </a> <input type="tel" class="count_control_input" value="10" readonly title="수량">
                    <a href="#" class="btn_plus_minus spr_book2 ico_plus3" title="더하기">
                    </a>
                </div>
                <div class="individual_price on_color"><span class="total_price">123,000</span><span class="price_type">원</span></div>
            </div>
            <div class="qty_info_icon"> <strong class="product_amount"> <span>유아</span> </strong> <strong class="product_price"> <span class="price">6,800</span> <span class="price_type">원</span> </strong> <em class="product_dsc">6,800원 (15% 할인가)</em> </div>
        </div>
        <div class="qty">
            <div class="count_control">
                <div class="clearfix">
                    <a href="#" class="btn_plus_minus spr_book2 ico_minus3" title="빼기"> </a> <input type="tel" class="count_control_input" value="3" readonly title="수량">
                    <a href="#" class="btn_plus_minus spr_book2 ico_plus3" title="더하기">
                    </a>
                </div>
                <div class="individual_price on_color"><span class="total_price">123,000</span><span class="price_type">원</span></div>
            </div>
            <div class="qty_info_icon"> <strong class="product_amount"> <span>세트1</span> </strong> <strong class="product_price"> <span class="price">20,000</span> <span class="price_type">원</span> </strong> <em class="product_dsc">2인 관람권 (17% 할인가)</em> </div>
        </div>
        <div class="qty">
            <div class="count_control">
                <div class="clearfix">
                    <a href="#" class="btn_plus_minus spr_book2 ico_minus3" title="빼기"> </a> <input type="tel" class="count_control_input" value="3" readonly title="수량">
                    <a href="#" class="btn_plus_minus spr_book2 ico_plus3" title="더하기">
                    </a>
                </div>
                <div class="individual_price on_color"><span class="total_price">123,000</span><span class="price_type">원</span></div>
            </div>
            <div class="qty_info_icon"> <strong class="product_amount"> <span>청소년</span> </strong> <strong class="product_price"> <span class="price">8,500</span> <span class="price_type">원</span> </strong> <em class="product_dsc">8,500원 (15% 할인가)</em> </div>
        </div>
    </div>
</div>