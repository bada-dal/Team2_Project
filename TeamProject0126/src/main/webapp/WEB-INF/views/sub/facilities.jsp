<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>λΆλμμ€</title>
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
					<h1>facilities</h1>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //sub_banner -->

<!-- body -->
<section class="site-section bg-light">
	<div class="container">		
		<div class="row mb-5">
			<!-- λΆλμμ€(λ―Έν) 1κ° μμ -->
			<div class="col-md-4">
				<div class="post-entry">
					<a href="${pageContext.request.contextPath}/sub/meeting"><img src="${pageContext.request.contextPath}/resources/images/facilities_meeting.jpg" alt="Image placeholder" class="img-fluid"></a>
					<div class="body-text">
						<div class="category">Facilities</div>
						<h3 class="mb-3"><a href="${pageContext.request.contextPath}/sub/meeting">Meeting</a></h3>
						<p class="mb-4 f_txt">
							λΉμ¦λμ€ λ―Ένμ μ ν©ν ννλ‘, μκ·λͺ¨ μΈλ―Έλ λ° μ°ν, κ°μ‘±λͺ¨μ λ± μμν νμ¬ μ§νμ΄ κ°λ₯ν©λλ€.
						</p>
						<p><a href="${pageContext.request.contextPath}/sub/meeting" class="btn btn-primary btn-outline-primary btn-sm">VIEW MORE</a></p>
					</div>
				</div>
			</div>
			<!-- //λΆλμμ€ 1κ° μ’λ£ -->
			<!-- λΆλμμ€(μ¨λ©) 1κ° μμ -->
			<div class="col-md-4">
				<div class="post-entry">
					<a href="${pageContext.request.contextPath}/sub/wedding"><img src="${pageContext.request.contextPath}/resources/images/facilities_wedding.jpg" alt="Image placeholder" class="img-fluid"></a>
					<div class="body-text">
						<div class="category">Facilities</div>
						<h3 class="mb-3"><a href="${pageContext.request.contextPath}/sub/wedding">Wedding</a></h3>
						<p class="mb-4 f_txt">
							μΌμμ ν λ² λΏμΈ μ¨λ©μ μμ€ν μ¬λλ€κ³Ό ν¨κ» νΉλ³ν μκ°,
							μ€λ«λμ κΈ°μ΅μ λ¨λ κ²°νΌμμΌλ‘ μ μ¬ν΄λλ¦½λλ€.
						</p>
						<p><a href="${pageContext.request.contextPath}/sub/wedding" class="btn btn-primary btn-outline-primary btn-sm">VIEW MORE</a></p>
					</div>
				</div>
			</div>
			<!-- //λΆλμμ€ 1κ° μ’λ£ -->
			<!-- λΆλμμ€(νλΌμμ΅) 1κ° μμ -->
			<div class="col-md-4">
				<div class="post-entry">
					<a href="${pageContext.request.contextPath}/sub/flowerShop"><img src="${pageContext.request.contextPath}/resources/images/facilities_flowershop.jpg" alt="Image placeholder" class="img-fluid"></a>
					<div class="body-text">
						<div class="category">Facilities</div>
						<h3 class="mb-3"><a href="${pageContext.request.contextPath}/sub/flowerShop">Flower Shop</a></h3>
						<p class="mb-4 f_txt">
							λ€μν νλΌμ λμμΈμΌλ‘ κ³ κΈμ€λ¬μ΄ νκ²©μ μ ν΄λλ¦½λλ€.
							μ μ±μΌλ‘ κ³¨λΌ λ΄μ κ½μΌλ‘ μ΄μ λ§μμ μ λ¬Όν΄ λ³΄μΈμ.
						</p>
						<p><a href="${pageContext.request.contextPath}/sub/flowerShop" class="btn btn-primary btn-outline-primary btn-sm">VIEW MORE</a></p>
					</div>
				</div>
			</div>
			<!-- //λΆλμμ€ 1κ° μ’λ£ -->
			<!-- λΆλμμ€(λΉμ¦λμ€) 1κ° μμ -->
			<div class="col-md-4">
				<div class="post-entry">
					<a href="${pageContext.request.contextPath}/sub/business"><img src="${pageContext.request.contextPath}/resources/images/facilities_business.jpg" alt="Image placeholder" class="img-fluid"></a>
					<div class="body-text">
						<div class="category">Facilities</div>
						<h3 class="mb-3"><a href="${pageContext.request.contextPath}/sub/business">Business</a></h3>
						<p class="mb-4 f_txt">
							μ»΄ν¨ν°, νλ¦°ν° λ± 24μκ° μ κ³΅νκ³  μμ΅λλ€.
							νμν μλ¬΄ μ μ μνκ³  νΈλ¦¬νκ² μ΄μ©νμ€ μ μμ΅λλ€.
						</p>
						<p><a href="${pageContext.request.contextPath}/sub/business" class="btn btn-primary btn-outline-primary btn-sm">VIEW MORE</a></p>
					</div>
				</div>
			</div>
			<!-- //λΆλμμ€ 1κ° μ’λ£ -->
			<!-- λΆλμμ€(λ°) 1κ° μμ -->
			<div class="col-md-4">
				<div class="post-entry">
					<a href="${pageContext.request.contextPath}/sub/bar"><img src="${pageContext.request.contextPath}/resources/images/facilities_bar.jpg" alt="Image placeholder" class="img-fluid"></a>
					<div class="body-text">
						<div class="category">Facilities</div>
						<h3 class="mb-3"><a href="${pageContext.request.contextPath}/sub/bar">Bar</a></h3>
						<p class="mb-4 f_txt">
							μ΅κ³ μ μΌκ²½μ μλνλ©° λ€μν μ£Όλ₯μ μλ£λ₯Ό λ§λ³Ό μ μλ μμΈ &amp; μμ€ν€ λ°
						</p>
						<p><a href="${pageContext.request.contextPath}/sub/bar" class="btn btn-primary btn-outline-primary btn-sm">VIEW MORE</a></p>
					</div>
				</div>
			</div>
			<!-- //λΆλμμ€ 1κ° μ’λ£ -->
			<!-- λΆλμμ€(λΈλ°μΉμΉ΄ν) 1κ° μμ -->
			<div class="col-md-4">
				<div class="post-entry">
					<a href="${pageContext.request.contextPath}/sub/brunchCafe"><img src="${pageContext.request.contextPath}/resources/images/facilities_brunchCafe.jpg" alt="Image placeholder" class="img-fluid"></a>
					<div class="body-text">
						<div class="category">Facilities</div>
						<h3 class="mb-3"><a href="${pageContext.request.contextPath}/sub/brunchCafe">Brunch Cafe</a></h3>
						<p class="mb-4 f_txt">
							μλ¦λ€μ΄ ν΄μ΄λ ν΄λ³μ΄ ν λμ λ³΄μ΄λ λΈλ°μΉ μΉ΄ν &amp; λ² μ΄μ»€λ¦¬
						</p>
						<p><a href="${pageContext.request.contextPath}/sub/brunchCafe" class="btn btn-primary btn-outline-primary btn-sm">VIEW MORE</a></p>
					</div>
				</div>
			</div>
			<!-- //λΆλμμ€ 1κ° μ’λ£ -->
			
		</div>
		
		<div class="row">
			<div class="col-md-12 text-center">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</section>
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