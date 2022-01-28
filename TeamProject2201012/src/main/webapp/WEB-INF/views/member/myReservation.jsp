<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LuxuryHotel a Hotel Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Rubik:300,400,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<!-- Style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<!-- script -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.0.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</head>
<body>
	<!-- header -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<!-- //header -->

	<!-- sub_banner -->
	<section class="site-hero overlay" data-stellar-background-ratio="0.5"
		style="background-image: url(${pageContext.request.contextPath}/resources/images/sub_banner.jpg);">
		<div class="container">
			<div
				class="row align-items-center site-hero-inner justify-content-center">
				<div class="col-md-12 text-center">
					<div class="mb-5 element-animate">
						<h1>
							My<br>Reservation
						</h1>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //sub_banner -->

	<!-- left menu -->
	<div class="left_menu">
		<div class="left_menu_myName">${sessionScope.member_id } 님</div>
		<div class="left_menu_myGrade">
			<p>나의등급</p>
			<p>${memberDTO.member_grade }</p>
		</div>
		<ul class="left_menu_list">
			<li class="left_m_l_li"><a
				href="${pageContext.request.contextPath}/member/myInfo">myInfo</a></li>
			<li class="left_m_l_li"><a
				href="${pageContext.request.contextPath}/member/myReservation">나의예약
					현황</a></li>
			<li class="left_m_l_li"><a
				href="${pageContext.request.contextPath}/member/update">회원정보 수정</a></li>
			<li class="left_m_l_li"><a
				href="${pageContext.request.contextPath}/member/delete">회원탈퇴</a></li>
		</ul>
	</div>
	<!-- //left menu -->

	<!-- body -->
	<div class="content">
		<div class="member_wrapper">
			<h1 class="member_page_title">예약관리</h1>


			<div class="reservation_check">
				<div class="tab">
					<button class="tablinks" id="defaltTabOpen"
						onclick="openReservation(event, 'book')">투숙예정</button>
					<button class="tablinks" onclick="openReservation(event, 'old')">투숙완료</button>
					<!-- 		  <button class="tablinks" onclick="openReservation(event, 'cancle')">투숙취소</button> -->
				</div>



				<jsp:useBean id="toDay" class="java.util.Date" />
				<fmt:formatDate value='${toDay}' pattern='yyyy-MM-dd' var="nowDate" />
				<fmt:parseDate value="${nowDate}" var="day" pattern="yyyy-MM-dd" />
				<fmt:parseNumber value="${day.time/(1000*60*60*24)}"
					integerOnly="true" var="today"></fmt:parseNumber>


				<!-- 날짜로 변형된 데이터를 이용하여 숙박 기간을 나타내는 day 변수 선언 -->

				<!-- Tab content -->

				<div id="book" class="tabcontent"
					style="display: block; padding: 0;">
					<!-- 		<div style="height:auto;"> -->
					<c:forEach var="reservation" items="${myReservationList}">
						<fmt:parseDate value="${reservation.book_checkin}" var="checkin"
							pattern="yyyy-MM-dd" />
						<fmt:parseNumber value="${checkin.time/(1000*60*60*24)}"
							integerOnly="true" var="strDate"></fmt:parseNumber>
						<c:set var="day" value="${strDate - today}" />
						<c:if test="${reservation.book_user == sessionScope.member_id}">
							<c:if test="${day gt (-1)}">
								<div class="my_reserv_box"
									style="float: left; clear: none; margin: 5px;"
									onclick="location.href='${pageContext.request.contextPath}/member/myReservationDetail?code=${reservation.book_number}'">
									<dl class="m_reserv_top">
										<dt>예약번호</dt>
										<dd>${reservation.book_number}</dd>
									</dl>
									<div class="m_reserv_middle">
										<p class="m_r_m_hotelName">아이티윌호텔</p>
										<dl>
											<dt>체크인</dt>
											<dd>${reservation.book_checkin}</dd>
										</dl>
										<dl>
											<dt>체크아웃</dt>
											<dd>${reservation.book_checkout}</dd>
										</dl>
										<dl>
											<dt>객실</dt>
											<dd>${reservation.book_room_name}</dd>
										</dl>
										<div class="m_r_m_priceBox">
											<div class="m_r_m_p_txtbox">
												<p class="m_r_m_p_title">결제금액</p>
												<p class="m_r_m_p_price">${reservation.book_totalPrice}</p>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:if>
					</c:forEach>
					<!-- 		</div> -->
				</div>

				<div id="old" class="tabcontent" style="padding: 0;">
					<div style="height: auto;">
						<c:forEach var="reservation" items="${myReservationList}">
							<fmt:parseDate value="${reservation.book_checkin}" var="checkin"
								pattern="yyyy-MM-dd" />
							<fmt:parseNumber value="${checkin.time/(1000*60*60*24)}"
								integerOnly="true" var="strDate"></fmt:parseNumber>
							<c:set var="day" value="${strDate - today}" />
							<c:if test="${reservation.book_user == sessionScope.member_id}">
								<c:if test="${day le (-1)}">
									<div class="my_reserv_box"
										style="float: left; clear: none; margin: 5px;"
										onclick="location.href='${pageContext.request.contextPath}/member/myReservationDetail?code=${reservation.book_number}'">
										<dl class="m_reserv_top">
											<dt>예약번호</dt>
											<dd>${reservation.book_number}</dd>
										</dl>
										<div class="m_reserv_middle">
											<p class="m_r_m_hotelName">아이티윌호텔</p>
											<dl>
												<dt>체크인</dt>
												<dd>${reservation.book_checkin}</dd>
											</dl>
											<dl>
												<dt>체크아웃</dt>
												<dd>${reservation.book_checkout}</dd>
											</dl>
											<dl>
												<dt>객실</dt>
												<dd>${reservation.book_room_name}</dd>
											</dl>
											<div class="m_r_m_priceBox">
												<div class="m_r_m_p_txtbox">
													<p class="m_r_m_p_title">결제금액</p>
													<p class="m_r_m_p_price">${reservation.book_totalPrice}</p>
												</div>
											</div>
										</div>
									</div>
								</c:if>
							</c:if>
						</c:forEach>
					</div>
				</div>

				<%-- 		<c:if test="${pageDTO.startPage > pageDTO.pageBlock }"> --%>
				<%-- <a href="${pageContext.request.contextPath}/member/myReservation?pageNum=${pageDTO.startPage-pageDTO.pageBlock}">Prev</a> --%>
				<%-- </c:if> --%>

				<%-- <c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1"> --%>
				<%-- 	<a href="${pageContext.request.contextPath}/member/myReservation?pageNum=${i}">${i} </a> --%>
				<%-- </c:forEach> --%>

				<%-- <c:if test="${ pageDTO.endPage < pageDTO.pageCount }"> --%>
				<%-- <a href="${pageContext.request.contextPath}/member/myReservation?pageNum=${pageDTO.startPage+pageDTO.pageBlock}">Next</a> --%>
				<%-- </c:if> --%>
			</div>
			<!-- reservation_check 종료 -->
		</div>
		<!-- member_wrapper 종료 -->
	</div>
	<!-- content 종료 -->



	<!-- 		<div id="cancle" class="tabcontent" style=" padding:0;"> -->
	<!-- 			<div style="height:270px;"> -->
	<%-- 		<c:forEach var="reservation" items="${myreservationList}"> --%>

	<%-- 			<div class="my_reserv_box" style="float: left; clear:none; margin:5px;" onclick="location.href='${pageContext.request.contextPath}/member/myReservationDetail'"> --%>
	<!-- 				<dl class="m_reserv_top"> -->
	<!-- 					<dt>예약번호</dt> -->
	<%-- 					<dd>${reservation.book_number}</dd> --%>
	<!-- 				</dl> -->
	<!-- 				<div class="m_reserv_middle"> -->
	<!-- 					<p class="m_r_m_hotelName">아이티윌호텔</p> -->
	<!-- 					<dl> -->
	<!-- 						<dt>체크인</dt> -->
	<%-- 						<dd>${reservation.book_checkin}</dd> --%>
	<!-- 					</dl> -->
	<!-- 					<dl> -->
	<!-- 						<dt>체크아웃</dt> -->
	<%-- 						<dd>${reservation.book_checkout}</dd> --%>
	<!-- 					</dl> -->
	<!-- 					<dl> -->
	<!-- 						<dt>객실</dt> -->
	<%-- 						<dd>${reservation.book_room_name}</dd> --%>
	<!-- 					</dl> -->
	<!-- 					<div class="m_r_m_priceBox"> -->
	<!-- 						<div class="m_r_m_p_txtbox"> -->
	<!-- 							<p class="m_r_m_p_title">결제금액</p> -->
	<%-- 							<p class="m_r_m_p_price">${reservation.book_totalPrice}</p> --%>
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 			</div> -->

	<!-- 		</div> -->
	<!-- 		</div> -->


	<!-- //body -->

	<!-- footer -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- //footer -->

	<!-- loader -->
	<div id="loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
		<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#f4b214" />
	</svg>
	</div>
	<!-- //loader -->

	<!-- tab script -->
	<script>
		function openReservation(evt, reservationType) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(reservationType).style.display = "block";
			evt.currentTarget.className += " active";
		}

		document.getElementById("defaltTabOpen").click();
	</script>
</body>
</html>