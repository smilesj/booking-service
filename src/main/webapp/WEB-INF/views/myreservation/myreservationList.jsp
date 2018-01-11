<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 내 예약 리스트 -->
<div class="wrap_mylist">
    <ul class="list_cards" ng-if="bookedLists.length > 0">
        <!--[D] 예약확정: .confirmed, 취소된 예약&이용완료: .used 추가 card -->
            <li class="card">
				<div class=link_booking_details>
                 <div class="card_header">
                     <div class="left"></div>
                     <div class="middle">
                         <!--[D] 예약 신청중: .ico_clock, 예약확정&이용완료: .ico_check2, 취소된 예약: .ico_cancel 추가 spr_book2 -->
                         <i class="spr_book2 ico_clock"></i>
                         <span class="tit">예약 신청중</span>
                     </div>
                     <div class="right"></div>
                 </div>
				</div>
				<article class="card_item">
                 <a href="#" class="link_booking_details">
                     <div class="card_body">
                         <div class="left"></div>
                         <div class="middle">
                             <div class="card_detail">
                                 <em class="booking_number">No.0000000</em>
                                 <h4 class="tit">서비스명/상품명</h4>
                                 <ul class="detail">
                                     <li class="item">
                                         <span class="item_tit">일정</span>
                                         <em class="item_dsc">
			2000.0.00.(월)2000.0.00.(일)
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">내역</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">상품</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">업체</span>
                                         <em class="item_dsc">
			업체명이 없습니다.
		</em>
                                     </li>
                                 </ul>
                                 <div class="price_summary">
                                     <span class="price_tit">결제 예정금액</span>
                                     <em class="price_amount">
		<span>000,000,000</span>
		<span class="unit">원</span>
	</em>
                                 </div>
                                 <!-- [D] 예약 신청중, 예약 확정 만 취소가능, 취소 버튼 클릭 시 취소 팝업 활성화 -->
                                 <div class="booking_cancel">
                                     <button class="btn"><span>취소</span></button>
                                 </div>
                             </div>
                         </div>
                         <div class="right"></div>
                     </div>
                     <div class="card_footer">
                         <div class="left"></div>
                         <div class="middle"></div>
                         <div class="right"></div>
                     </div>
                 </a>
				<a href="#" class="fn fn-share1 naver-splugin btn_goto_share" title="공유하기"></a>
				</article>
				<article class="card_item">
                 <a href="#" class="link_booking_details">
                     <div class="card_body">
                         <div class="left"></div>
                         <div class="middle">
                             <div class="card_detail">
                                 <em class="booking_number">No.0000000</em>
                                 <h4 class="tit">서비스명/상품명</h4>
                                 <ul class="detail">
                                     <li class="item">
                                         <span class="item_tit">일정</span>
                                         <em class="item_dsc">
			2000.0.00.(월)2000.0.00.(일)
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">내역</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">상품</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">업체</span>
                                         <em class="item_dsc">
			업체명이 없습니다.
		</em>
                                     </li>
                                 </ul>
                                 <div class="price_summary">
                                     <span class="price_tit">결제 예정금액</span>
                                     <em class="price_amount">
									<span>000,000,000</span>
									<span class="unit">원</span>
								</em>
                                 </div>
                                 <!-- [D] 예약 신청중, 예약 확정 만 취소가능, 취소 버튼 클릭 시 취소 팝업 활성화 -->
                                  <div class="booking_cancel">
                                      <button class="btn"><span>취소</span></button>
                                  </div>
                              </div>
                          </div>
                          <div class="right"></div>
                      </div>
                      <div class="card_footer">
                          <div class="left"></div>
                          <div class="middle"></div>
                          <div class="right"></div>
                      </div>
                  </a>
					<a href="#" class="fn fn-share1 naver-splugin btn_goto_share" title="공유하기"></a>
				</article>
             </li>
             <li class="card confirmed">
                 <div class="link_booking_details">
                     <div class="card_header">
                         <div class="left"></div>
                         <div class="middle">
                             <!--[D] 예약 신청중: .ico_clock, 예약확정&이용완료: .ico_check2, 취소된 예약: .ico_cancel 추가 spr_book -->
                            <i class="spr_book2 ico_check2"></i>
                            <span class="tit">예약 확정</span>
                        </div>
                        <div class="right"></div>
                    </div>
					</div>
					<article class="card_item">
						<a href="#" class="link_booking_details">
                     <div class="card_body">
                         <div class="left"></div>
                         <div class="middle">
                             <div class="card_detail">
                                 <em class="booking_number">No.0000000</em>
                                 <h4 class="tit">서비스명/상품명</h4>
                                 <ul class="detail">
                                     <li class="item">
                                         <span class="item_tit">일정</span>
                                         <em class="item_dsc">
			2000.0.00.(월)2000.0.00.(일)
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">내역</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">상품</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">업체</span>
                                         <em class="item_dsc">
			업체명이 없습니다.
		</em>
                                     </li>
                                 </ul>
                                 <div class="price_summary">
                                     <span class="price_tit">결제 예정금액</span>
                                     <em class="price_amount">
									<span>000,000,000</span>
									<span class="unit">원</span>
								</em>
                                 </div>
                                 <!-- [D] 예약 신청중, 예약 확정 만 취소가능, 취소 버튼 클릭 시 취소 팝업 활성화 -->
                                 <div class="booking_cancel">
                                     <button class="btn"><span>취소</span></button>
                                 </div>
                             </div>
                         </div>
                         <div class="right"></div>
                     </div>
                     <div class="card_footer">
                         <div class="left"></div>
                         <div class="middle"></div>
                         <div class="right"></div>
                     </div>
                 </a>
				<a href="#" class="fn fn-share1 naver-splugin btn_goto_share" title="공유하기"></a>
				</article>
				<article class="card_item">
					<a href="#" class="link_booking_details">
                     <div class="card_body">
                         <div class="left"></div>
                         <div class="middle">
                             <div class="card_detail">
                                 <em class="booking_number">No.0000000</em>
                                 <h4 class="tit">서비스명/상품명</h4>
                                 <ul class="detail">
                                     <li class="item">
                                         <span class="item_tit">일정</span>
                                         <em class="item_dsc">
			2000.0.00.(월)2000.0.00.(일)
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">내역</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">상품</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">업체</span>
                                         <em class="item_dsc">
			업체명이 없습니다.
		</em>
                                     </li>
                                 </ul>
                                 <div class="price_summary">
                                     <span class="price_tit">결제 예정금액</span>
                                     <em class="price_amount">
		<span>000,000,000</span>
		<span class="unit">원</span>
	</em>
                                 </div>
                                 <!-- [D] 예약 신청중, 예약 확정 만 취소가능, 취소 버튼 클릭 시 취소 팝업 활성화 -->
                                  <div class="booking_cancel">
                                      <button class="btn"><span>취소</span></button>
                                  </div>
                                  
                              </div>
                          </div>
                          <div class="right"></div>
                      </div>
                      <div class="card_footer">
                          <div class="left"></div>
                          <div class="middle"></div>
                          <div class="right"></div>
                      </div>
                  </a>
					<a href="#" class="fn fn-share1 naver-splugin btn_goto_share" title="공유하기"></a>
				</article>
             </li>
             <li class="card used">
                 <div class="link_booking_details">
                     <div class="card_header">
                         <div class="left"></div>
                         <div class="middle">
                             <!--[D] 예약 신청중: .ico_clock, 예약확정&이용완료: .ico_check2, 취소된 예약: .ico_cancel 추가 spr_book -->
                            <i class="spr_book2 ico_check2"></i>
                            <span class="tit">이용 완료</span>
                        </div>
                        <div class="right"></div>
                    </div>
				</div>
				<article class="card_item">
					<a href="#" class="link_booking_details">
                     <div class="card_body">
                         <div class="left"></div>
                         <div class="middle">
                             <div class="card_detail">
                                 <em class="booking_number">No.0000000</em>
                                 <h4 class="tit">서비스명/상품명</h4>
                                 <ul class="detail">
                                     <li class="item">
                                         <span class="item_tit">일정</span>
                                         <em class="item_dsc">
			2000.0.00.(월)2000.0.00.(일)
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">내역</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">상품</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">업체</span>
                                         <em class="item_dsc">
			업체명이 없습니다.
		</em>
                                     </li>
                                 </ul>
                                 <div class="price_summary">
                                     <span class="price_tit">결제 예정금액</span>
                                     <em class="price_amount">
									<span>000,000,000</span>
									<span class="unit">원</span>
								</em>
                                 </div>
                                 <div class="booking_cancel">
                                     <button class="btn"><span>예매자 리뷰 남기기</span></button>
                                 </div>
                             </div>
                         </div>
                         <div class="right"></div>
                     </div>
                     <div class="card_footer">
                         <div class="left"></div>
                         <div class="middle"></div>
                         <div class="right"></div>
                     </div>
                	</a>
				</article>
				<article class="card_item">
					<a href="#" class="link_booking_details">
						<div class="card_body">
							<div class="left"></div>
							<div class="middle">
								<div class="card_detail">
									<em class="booking_number">No.0000000</em>
									<h4 class="tit">서비스명/상품명</h4>
									<ul class="detail">
										<li class="item">
											<span class="item_tit">일정</span>
											<em class="item_dsc">
												2000.0.00.(월)2000.0.00.(일)
											</em>
										</li>
										<li class="item">
											<span class="item_tit">내역</span>
											<em class="item_dsc">
												내역이 없습니다.
											</em>
										</li>
										<li class="item">
											<span class="item_tit">상품</span>
											<em class="item_dsc">
												내역이 없습니다.
											</em>
										</li>
										<li class="item">
											<span class="item_tit">업체</span>
											<em class="item_dsc">
												업체명이 없습니다.
											</em>
										</li>
									</ul>
									<div class="price_summary">
										<span class="price_tit">결제 예정금액</span>
										<em class="price_amount">
											<span>000,000,000</span>
											<span class="unit">원</span>
										</em>
									</div>
								</div>
							</div>
							<div class="right"></div>
						</div>
						<div class="card_footer">
							<div class="left"></div>
							<div class="middle"></div>
							<div class="right"></div>
						</div>
					</a>
				</article>
				            </li>
				            <li class="card used">
				                <div class="link_booking_details">
				                    <div class="card_header">
				                        <div class="left"></div>
				                        <div class="middle">
				                            <!--[D] 예약 신청중: .ico_clock, 예약확정&이용완료: .ico_check2, 취소된 예약: .ico_cancel 추가 spr_book -->
				                            <i class="spr_book2 ico_cancel"></i>
				                            <span class="tit">취소된 예약</span>
				                        </div>
				                        <div class="right"></div>
				                    </div>
								</div>
							<article class="card_item">
								<a href="#" class="link_booking_details">
                     <div class="card_body">
                         <div class="left"></div>
                         <div class="middle">
                             <div class="card_detail">
                                 <em class="booking_number">No.0000000</em>
                                 <h4 class="tit">서비스명/상품명</h4>
                                 <ul class="detail">
                                     <li class="item">
                                         <span class="item_tit">일정</span>
                                         <em class="item_dsc">
			2000.0.00.(월)2000.0.00.(일)
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">내역</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">상품</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">업체</span>
                                         <em class="item_dsc">
			업체명이 없습니다.
		</em>
                                     </li>
                                 </ul>
                                 <div class="price_summary">
                                     <span class="price_tit">결제 예정금액</span>
                                     <em class="price_amount">
		<span>000,000,000</span>
		<span class="unit">원</span>
	</em>
                                 </div>
                             </div>
                         </div>
                         <div class="right"></div>
                     </div>
                     <div class="card_footer">
                         <div class="left"></div>
                         <div class="middle"></div>
                         <div class="right"></div>
                     </div>
                 </a>
				</article>
				<article class="card_item">
					<a href="#" class="link_booking_details">
                     <div class="card_body">
                         <div class="left"></div>
                         <div class="middle">
                             <div class="card_detail">
                                 <em class="booking_number">No.0000000</em>
                                 <h4 class="tit">서비스명/상품명</h4>
                                 <ul class="detail">
                                     <li class="item">
                                         <span class="item_tit">일정</span>
                                         <em class="item_dsc">
			2000.0.00.(월)2000.0.00.(일)
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">내역</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">상품</span>
                                         <em class="item_dsc">
			내역이 없습니다.
		</em>
                                     </li>
                                     <li class="item">
                                         <span class="item_tit">업체</span>
                                         <em class="item_dsc">
			업체명이 없습니다.
		</em>
                                     </li>
                                 </ul>
                                 <div class="price_summary">
                                     <span class="price_tit">결제 예정금액</span>
                                     <em class="price_amount">
									<span>000,000,000</span>
									<span class="unit">원</span>
								</em>
                                 </div>
                             </div>
                         </div>
                         <div class="right"></div>
                     </div>
                     <div class="card_footer">
                         <div class="left"></div>
                         <div class="middle"></div>
                         <div class="right"></div>
                     </div>
                 </a>
				</article>
            </li>
        </ul>
    </div>
    <!--// 내 예약 리스트 -->