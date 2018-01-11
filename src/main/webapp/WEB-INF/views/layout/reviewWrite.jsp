<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div class="ct">
	<div class="ct_wrap">
		<div class="top_title review_header">
			<a href="#" class="btn_back" title="이전 화면으로 이동"> <i class="fn fn-backward1"></i> </a>
			<h2><span class="title">클림트 인사이드</span></h2>
		</div>
		<!-- 리뷰 별점 -->
	<div class="write_act">
		<p class="title_star">별점과 이용경험을 남겨주세요.</p>
		<div class="review_rating rating_point">
			<div class="rating">
				<input type="checkbox" name="rating1" value="0" class="rating_rdo first_star" title="0점">
				<span class="span hide"></span>
				<!-- [D] 해당 별점이 선택될 때 그 점수 이하의 input radio는 checked 클래스 추기 -->
				<input type="checkbox" name="rating2" value="1" class="rating_rdo" title="1점">
				<span class="span"></span>
				<input type="checkbox" name="rating3" value="2" class="rating_rdo" title="2점">
				<span class="span"></span>
				<input type="checkbox" name="rating4" value="3" class="rating_rdo" title="3점" >
				<span class="span"></span>
				<input type="checkbox" name="rating5" value="4" class="rating_rdo" title="4점">
				<span class="span"></span>
				<input type="checkbox" name="rating6" value="5" class="rating_rdo" title="5점">
				<span class="span"></span>
				<!-- [D] 0점일 때 gray_star 추기 -->
				<span class="star_rank gray_star">0</span>
			</div>
		</div>
	</div>
	<!-- //리뷰 별점 -->

	<!-- 리뷰 입력 -->
	<div class="review_contents write">
		<!-- [D] review_write_info 클릭 시 자신을 숨기고 review_textarea 에 focus를 보낸다. -->
		<a href="#" class="review_write_info">
			<span class="middot">
				실 사용자의 리뷰는 상품명의 더 나은 서비스 제공과 다른 사용자들의 선택에 큰 도움이 됩니다.
			</span><br>
			<span class="middot">
				소중한 리뷰에 대한 감사로 네이버페이 포인트 500원을 적립해드립니다.
			</span>
			<span class="left_space">(단, 리뷰 포인트는 ID 당 1일 최대 5건까지 지급됩니다.)</span>
		</a>
		<textarea cols="30" rows="10" class="review_textarea"></textarea>
	</div>
	<!-- //리뷰 입력 -->

	<!-- 리뷰 작성 푸터 -->
	<div class="review_write_footer_wrap">
		<div class="review_write_footer">
			<label class="btn_upload" for="reviewImageFileOpenInput">
				<i class="fn fn-image1" aria-hidden="true"></i>
				<span class="text_add_photo">사진 추가</span>
			</label>
			<input type="file" class="hidden_input" id="reviewImageFileOpenInput" accept="image/*" multiple>
			<div class="guide_review">
				<span>0</span>/400
				<span>(최소5자이상)</span>
			</div>
		</div>

		<!-- 리뷰 포토 -->
		<div class="review_photos review_photos_write">
			<div class="item_preview_thumbs">
				<ul class="lst_thumb">
					<li class="item">
						<a href="#" class="anchor">
							<span class="spr_book ico_del">삭제</span>
						</a>
						<img src="http://naverbooking.phinf.naver.net/20170306_3/1488772023601A4195_JPEG/image.jpg?type=f300_300" width="130" alt="" class="item_thumb">
						<span class="img_border"></span>
					</li>
					<li class="item">
						<a href="#" class="anchor">
							<span class="spr_book ico_del">삭제</span>
						</a>
						<img src="http://naverbooking.phinf.naver.net/20170306_3/1488772023601A4195_JPEG/image.jpg?type=f300_300" width="130" alt="" class="item_thumb">
						<span class="img_border"></span>
					</li>
					<li class="item">
						<a href="#" class="anchor">
							<span class="spr_book ico_del">삭제</span>
						</a>
						<img src="http://naverbooking.phinf.naver.net/20170306_3/1488772023601A4195_JPEG/image.jpg?type=f300_300" width="130" alt="" class="item_thumb">
						<span class="img_border"></span>
					</li>
					<li class="item">
						<a href="#" class="anchor">
							<span class="spr_book ico_del">삭제</span>
						</a>
						<img src="http://naverbooking.phinf.naver.net/20170306_3/1488772023601A4195_JPEG/image.jpg?type=f300_300" width="130" alt="" class="item_thumb">
						<span class="img_border"></span>
					</li>
					<li class="item">
						<a href="#" class="anchor">
							<span class="spr_book ico_del">삭제</span>
						</a>
						<img src="http://naverbooking.phinf.naver.net/20170306_3/1488772023601A4195_JPEG/image.jpg?type=f300_300" width="130" alt="" class="item_thumb">
						<span class="img_border"></span>
					</li>
				</ul>
			</div>
		</div>
		<!-- //리뷰 포토 -->

	</div>
	<!-- //리뷰 작성 푸터 -->

	<!-- 리뷰 등록 -->
	<div class="box_bk_btn">
		<button class="bk_btn"><span class="btn_txt">리뷰 등록</span></button>
	</div>
	<!-- //리뷰 등록 -->
	</div>
</div>