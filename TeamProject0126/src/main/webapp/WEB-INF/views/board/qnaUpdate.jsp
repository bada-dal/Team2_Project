<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LuxuryHotel a Hotel Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Rubik:300,400,700" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<!-- Style css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

<!-- script -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.0.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

<!-- ???????????? -->
<script src="https://kit.fontawesome.com/b0f29e9bfe.js" crossorigin="anonymous"></script>

<script type="text/javascript">
function recheckBtn(){
		var pass = $('#qna_pass').val();
		var pass2 = "${boardQnaDTO.qna_pass}";
	if(pass == "") {
		alert("??????????????? ???????????????.");
	} else if(pass != "") {
		if(confirm("?????????????????????????") && pass == pass2) {
			alert("???????????????????????????.");
			return true
		}  else  if (pass != pass2){
			alert("??????????????? ???????????? ????????????.");
			return false
		}  else {
			return false
		}
	}

}

function recheckBtn2(){
	if(confirm("????????? ????????? ????????? ???????????????. ?????????????????????????")){
		alert("Q&A ???????????? ???????????????.");
		location.href='${pageContext.request.contextPath}/board/qna'
	} 
}
</script>
</head>
<body>
<!-- header -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- //header -->

<!-- sub_banner -->
<section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(${pageContext.request.contextPath}/resources/images/sub_banner.jpg);">
	<div class="container">
		<div class="row align-items-center site-hero-inner justify-content-center">
			<div class="col-md-12 text-center">
				<div class="mb-5 element-animate">
					<h1>Q&A</h1>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //sub_banner -->

<!-- body -->
<div class="content">
	<div class="board_wrapper">
		<form action="${pageContext.request.contextPath}/board/qnaUpdatePro" name="qnaUpdateForm" onsubmit="return recheckBtn()" class="boardQnaUpdateForm" method="post">
			<table class="boardQnaUpdateTable">
				<tr>
					<th>
						?????????
					</th>
					<td>
						<input type="text" name="qna_idx" value="${boardQnaDTO.qna_idx }" readonly="readonly">
					</td>
				</tr>
				<tr>
					<th>
						????????????
					</th>
					<td>
						<select name="qna_category" required>
							<option value="">??????????????????</option>
							<option value="??????"
								<c:if test="${boardQnaDTO.qna_category == '??????' }">selected</c:if>
							>??????</option>
							<option value="??????"
								<c:if test="${boardQnaDTO.qna_category == '??????' }">selected</c:if>
							>??????</option>
							<option value="????????????"
								<c:if test="${boardQnaDTO.qna_category == '????????????' }">selected</c:if>
							>????????????</option>
							<option value="??????"
								<c:if test="${boardQnaDTO.qna_category == '??????' }">selected</c:if>
							>??????</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>
						????????????
					</th>
					<td>
						<input type="password" id="qna_pass" name="qna_pass" placeholder="??????????????? ??????????????????." required>
					</td>
				</tr>
				<tr>
					<th>
						??????
					</th>
					<td>
						<input type="text" name="qna_subject" value="${boardQnaDTO.qna_subject }" placeholder="????????? ??????????????????." required>
					</td>
				</tr>
				<tr>
					<th>
						??????
					</th>
					<td>
						<textarea name="qna_content" placeholder="????????? ??????????????????." required>${boardQnaDTO.qna_content }</textarea>
					</td>
				</tr>
			</table>
			<div class="boardBtnBox">
				<input type="submit" class="boardbtn" value="????????????" >
				<input type="button" class="boardbtn" value="??????" onclick="recheckBtn2(); ">
			</div>
		</form>
	</div>
</div>
<!-- //body -->

<!-- footer -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- //footer -->

<!-- loader -->
<div id="loader" class="show fullscreen">
	<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
		<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/>
	</svg>
</div>
<!-- //loader -->

</body>
</html>