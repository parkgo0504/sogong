<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib/taglib.jspf" %>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/library.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script language="JavaScript">
		$(document).ready(
				function() {
					var $banner = $(".banner").find("ul");

					var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
					var $bannerHeight = $banner.children().outerHeight(); // 높이
					var $length = $banner.children().length;//이미지의 갯수
					var rollingId;

					//정해진 초마다 함수 실행
					rollingId = setInterval(function() {
						rollingStart();
					}, 0);//다음 이미지로 롤링 애니메이션 할 시간차

					function rollingStart() {
						$banner.css("width", $bannerWidth * $length + "px");
						$banner.css("height", $bannerHeight + "px");
						//alert(bannerHeight);
						//배너의 좌측 위치를 옮겨 준다.
						$banner.animate({
							left : -$bannerWidth + "px"
						}, 4000, function() { //숫자는 롤링 진행되는 시간이다.
							//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
							$(this).append(
									"<li>" + $(this).find("li:first").html()
											+ "</li>");
							//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
							$(this).find("li:first").remove();
							//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
							$(this).css("left", 0);
							//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
						});
					}
				});
	</script>
	   <script src="/assets/js/jquery.raty.js"></script>
   <script src="/assets/js/ui.js"></script>
   <script src="/assets/js/jquery.prettyPhoto.js"></script>
   <script src="/assets/js/jquery.selectbox-0.2.js"></script>
   <script src="/assets/js/theme-script.js"></script>
   <script src="/assets/js/faqmain.js"></script>
   <script src="/assets/js/faqutil.js"></script>