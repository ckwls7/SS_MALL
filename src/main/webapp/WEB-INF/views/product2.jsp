<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Product</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/productlogo.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
</head>
<body class="animsition">
	<script>
		console.log("product.jsp here");
	</script>
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">						
						SSMALL with luxury watches and wallets
					</div>

					<div class="right-top-bar flex-w h-full">
						<a href="homeView" class="flex-c-m trans-04 p-lr-25">
							Home
						</a>
						
						<a href="myPage" class="flex-c-m trans-04 p-lr-25">
							My
						</a>
						
						<a href="cartView" class="flex-c-m trans-04 p-lr-25">
							Cart
						</a>

						<a href="companyView" class="flex-c-m trans-04 p-lr-25">
							About Us
						</a>
					
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="homeview" class="logo">
						<img src="images/icons/productlogo.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="homeview">홈</a>
							</li>

							<li>
								<a href="productView">상품</a>
							</li>
						
							<li>
								<a href="boardnoticeView">공지사항</a>
							</li>
							<li>
								<a href="companyView">회사소개</a>
							</li>
							<li>
								<a href="asView">AS</a>
							</li>	
						</ul>
					</div>	

					<!-- Icon header -->
					<!-- <div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

						<a href="#" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
							<i class="zmdi zmdi-favorite-outline"></i>
						</a>
					</div> -->
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.html"><img src="images/icons/productlogo.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
					<i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						SSMALL with luxury watches and wallets
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="homeview" class="flex-c-m p-lr-10 trans-04">
							Home
						</a>

						<a href="myPage" class="flex-c-m p-lr-10 trans-04">
							My
						</a>

						<a href="cartView" class="flex-c-m p-lr-10 trans-04">
							cart
						</a>
						
						<a href="companyView" class="flex-c-m p-lr-10 trans-04">
							About Us
						</a>
					
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="homeview">홈</a>
					<!-- <ul class="sub-menu-m">
						<li><a href="index.html">Homepage 1</a></li>
						<li><a href="home-02.html">Homepage 2</a></li>
						<li><a href="home-03.html">Homepage 3</a></li>
					</ul> -->
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="productView">상품</a>
				</li>
				<li>
					<a href="boardnoticeView">공지사항</a>
				</li>
				<li>
					<a href="companyView">회사소개</a>
				</li>
				<li>
					<a href="asView">AS</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>
	
	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="homeview" class="stext-109 cl8 hov-cl1 trans-04">
				홈
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				상품
			</span>
		</div>
	</div>

	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
				<ul id="miniCart" class='header-cart-wrapitem w-full'>
				
				</ul>
				<div id="total" class="w-full">
					
				</div>
				
			</div>
		</div>
	</div>

	
	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
				
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
						All Products
					</button>
					
				
					<button id="wallet1"class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 "  data-filter=".지갑">
						Wallet
					</button> 
				
		 		
					<button id="watch1" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 " data-filter=".시계">
						Watch
					</button>
					
					<button id="watch1" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 " data-filter="#에르메스">
						BRAND
					</button>

<script>

/* $('#watch2').click(function(){
	
	$('#watch1').trigger("click");	
	
}); */

</script>


				
				
				</div>

				<div class="flex-w flex-c-m m-tb-10">
					<div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						 Filter 조건설정
					</div>

					<div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Search 검색
					</div>
				</div>
				
				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>
						<!-- <p>373번째줄 search 구분</p> -->
						<!-- <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" value="keyword" name="search_product" placeholder="Search">
						<input type="submit" value="검색" width = "300"/> -->
						<form action="productViewSearch" method="get">
							<!-- <input type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요" />
							<input type="submit" value="검색" /> -->
							
							<input class="mtext-107 cl2 size-114 plh2 p-r-15" id="keyword" type="text" value="" name="keyword" placeholder="Search">
							<input type="submit" value="검색" width = "300"/>
						</form>
						<!--<input class="form-control" type="text" id="keyword" name="keyword" 
								value="keyword" placeholder="검색어를 입력하세요"/>
						<button id="searchBtn" class="btn btn-primary">Search</button>-->
						
					</div>	
				</div>

				<!-- Filter -->
				<div class="dis-none panel-filter w-full p-t-10">
					<div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
						<div class="filter-col1 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								Sort By 기준
							</div>

							<ul>
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										Default 일반
									</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										Popularity 인기순
									</a>
								</li>

								<!-- <li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										Average rating 평균가격
									</a>
								</li> -->

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										Newness <!-- filter-link-active -->
									</a>
								</li>

								<!-- <li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										Price: Low to High 가격 오름차순
									</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										Price: High to Low 가격 내림차순
									</a>
								</li> -->
							</ul>
						</div>

						<div class="filter-col2 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								브랜드
							</div>

							<ul>
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										All
									</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										$0.00 - $50.00
									</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										$50.00 - $100.00
									</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										$100.00 - $150.00
									</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										$150.00 - $200.00
									</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">
										$200.00+
									</a>
								</li>
							</ul>
						</div>

						<div class="filter-col3 p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								Color
							</div>

							<ul>
								<li class="p-b-6">
									<span class="fs-15 lh-12 m-r-6" style="color: #222;">
										<i class="zmdi zmdi-circle"></i>
									</span>

									<a href="#" class="filter-link stext-106 trans-04">
										Black
									</a>
								</li>

								<li class="p-b-6">
									<span class="fs-15 lh-12 m-r-6" style="color: #4272d7;">
										<i class="zmdi zmdi-circle"></i>
									</span>

									<a href="#" class="filter-link stext-106 trans-04">
										Blue
									</a>
								</li>

								<li class="p-b-6">
									<span class="fs-15 lh-12 m-r-6" style="color: #b3b3b3;">
										<i class="zmdi zmdi-circle"></i>
									</span>

									<a href="#" class="filter-link stext-106 trans-04">
										Grey
									</a>
								</li>

								<li class="p-b-6">
									<span class="fs-15 lh-12 m-r-6" style="color: #00ad5f;">
										<i class="zmdi zmdi-circle"></i>
									</span>

									<a href="#" class="filter-link stext-106 trans-04">
										Green
									</a>
								</li>

								<li class="p-b-6">
									<span class="fs-15 lh-12 m-r-6" style="color: #fa4251;">
										<i class="zmdi zmdi-circle"></i>
									</span>

									<a href="#" class="filter-link stext-106 trans-04">
										Red
									</a>
								</li>

								<li class="p-b-6">
									<span class="fs-15 lh-12 m-r-6" style="color: #aaa;">
										<i class="zmdi zmdi-circle-o"></i>
									</span>

									<a href="#" class="filter-link stext-106 trans-04">
										White
									</a>
								</li>
							</ul>
						</div>

						<div class="filter-col4 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								Tags
							</div>

							<div class="flex-w p-t-4 m-r--5">
								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Fashion
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Lifestyle
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Denim
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Streetstyle
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Crafts
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- 상품 클릭시 나오는 첫목록 -->
			
				<div class="row isotope-grid">
				<div id="productAjax">
				<%-- ajax화를 위해 주석처리 <c:forEach items="${product}" var="product">
				<div  class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${product.p_category}" id="${product.p_brand }" >
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="productimage/${product.p_image}" alt="IMG-PRODUCT" width="300" height="300">
							<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								Quick View
							</a>
						</div>
						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="productDetail?p_number=${product.p_number}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">			
									${product.p_name}
								</a>
								<span class="stext-105 cl3">
									<fmt:formatNumber value="${product.p_price}" pattern="###,###,###"/>원
								</span>
							</div>
						</div>
					</div>					
				</div>
				</c:forEach> --%>
				</div>
			</div>
			<!-- 페이징 글번호 -->

<!-- 검색기능을 사용하여 keyword에 값이 들어가 있을때 url에 keyword를 전달하여 페이징버튼을 눌러도 검색이 남아있게함. -->
<!-- otherwise는 검색기능을 사용하지 않은 일반 상태일때의 페이징.url에 keyword가 붙지않는다. -->	
<c:choose>
	<c:when test="${keyword!=null}">
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="idx">
			<c:out value="${pageMaker.cri.page == idx?'':''}" />
			<a href="productViewSearch${pageMaker.makeQuery(idx)}&keyword=${keyword}">${idx}</a>
		</c:forEach>																		
		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<a href="productViewSearch${pageMaker.makeQuery(pageMaker.endPage +1)}&keyword=${keyword}"> » </a>
		</c:if> <br>
	</c:when>
	
	<c:otherwise>
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="idx">
			<c:out value="${pageMaker.cri.page == idx?'':''}" />
			<a href="productView${pageMaker.makeQuery(idx)}">${idx}</a>
		</c:forEach>																										
		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<a href="productView${pageMaker.makeQuery(pageMaker.endPage +1)}"> » </a>
		</c:if> <br>
	</c:otherwise>
</c:choose>
			<!-- 페이징 글번호 끝 -->
			<!-- Load more였지만, 검색 후 원래목록 돌아가기로 바꿀꺼임.-->
			<div class="flex-c-m flex-w w-full p-t-45">
				<a href="productView" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
					Return to List
				</a>
			</div>
		</div>
	</div>
		

	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-2 p-b-50">
					<h4 class="stext-500 cl0 p-b-30">
						Category
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="productViewWatch" class="stext-130 cl7 hov-cl1 trans-04">
								Watch
							</a>
						</li>

						<li class="p-b-10">
							<a href="productViewWallet" class="stext-130 cl7 hov-cl1 trans-04">
								Wallet
							</a>
						</li>

					
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-500 cl0 p-b-30">
						Help
					</h4>


						<p class="stext-130 cl7 size-201">
							● 대표 전화번호: 02-1234-5678
						</p>
						<p class="stext-130 cl7 size-201">
							● 고객센터 : 1234-5678
						</p>
						<p class="stext-130 cl7 size-201">● 이메일문의 :<a href="mailto:abcdefg@abcdefg.com" title="이메일 문의"class="stext-130 cl7 size-201">
						 	abcdefg@abcdefg.com
						</a></p>
						<p class="stext-130 cl7 size-201">
							● FAQ
						</p>
					
					
				</div> 

				<div class="col-sm-2 col-lg-50 p-b-40" >
					<h4 class="stext-500 cl0 p-b-30">
						Directions
				 </h4>
				 	<button id="map1" type="button"class="btn btn-link stext-130 cl7 hov-cl1 trans-04">오시는 길</button> 
						
					
			</div>
				
				<div class="col-sm-2 col-lg-40 p-b-40" >
					<h4 class="stext-500 cl0 p-b-30">
						SNS Page
				 	</h4>
				 		
					<div class="p-t-10">			
						<div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-width="" data-layout="standard" data-action="like" data-size="small" data-share="true">			
									<a href="https://www.facebook.com/ssmall1111111" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
										<i class="fa fa-facebook"></i>
									</a>
					
						
							<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
								<i class="fa fa-instagram"></i>
							</a>
					
					
							<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
								<i class="fa fa-twitter"></i>
							</a>
						</div>
					</div>
				</div>
				
				  <div class="col-sm-6 col-lg-3 p-b-50">
				  	<img src="images/icons/mainlogo.png" width="500">
				</div>  
			</div>
			

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
<!-- 
	<!--  Modal1  -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="images/icons/icon-close.png" alt="CLOSE">
				</button>
			<!-- 퀵뷰 눌럿을때 나오는 부분. 수정해야함 -->	
			<%-- <c:if test="${p_number eq product?p_number=${product.p_number}"> --%>
			<c:forEach items="${product}" var="product">
				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3" data-thumb="productimage/${product.p_image}">
										<div class="wrap-pic-w pos-relative">
											<img src="productimage/${product.p_image}" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="productimage/${product.p_image}">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="productimage/${product.p_image}">
										<div class="wrap-pic-w pos-relative">
											<img src="productimage/${product.p_image}" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="productimage/${product.p_image}">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="productimage/${product.p_image}">
										<div class="wrap-pic-w pos-relative">
											<img src="productimage/${product.p_image}" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="productimage/${product.p_image}">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">
								${product.p_name}
							</h4>

							<span class="mtext-106 cl2">
								<fmt:formatNumber value="${product.p_price}" pattern="###,###,###"/>원
							</span>

							<p class="stext-102 cl3 p-t-23">
								${product.p_description}
							</p>
							
							
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Size
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Size S</option>
												<option>Size M</option>
												<option>Size L</option>
												<option>Size XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Color
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Red</option>
												<option>Blue</option>
												<option>White</option>
												<option>Grey</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart
										</button>
									</div>
								</div>	
							</div>

							
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
										<i class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
									<i class="fa fa-facebook"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
									<i class="fa fa-twitter"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
									<i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
				<%-- </c:if> --%>
			</div>
		</div>
	 </div>  


<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
	<!--===============================================================================================-->
	
	<script src="js/main.js"></script>
	 	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5630cc013f43366cb57b2e70f3f6e69c"></script>
	<script>
		$('#map').click(function(){
			var container = document.getElementById('map');
			 var options = {
				center: new kakao.maps.LatLng(37.552475, 126.937825),
				level: 3
			}; 
			 window.open("https://map.kakao.com/link/to/비트캠프 신촌센터,37.552475, 126.937825");

		});
	</script> 
	<span class="bt-basic" id="map"></span>  
<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
<script>
 $(document).ready(function(){
	 
 
	 $('#watch2').click(function(){
			
			$('#watch1').trigger("click");	
			
		});  	
	/*  get('/productView/:id/:pw', function(req, res) {
		  location.href="http://localhost:8282/ssmall/productView?id=abc&pw=1234";
		  res.send(watch1[req.params.id]+','+watch1[req.params.id]);  */
	
}); 
 
</script>  
<!--==================================  --> 

<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
	
<!--===============================================================================================-->

<script>
		console.log("product.jsp here2");
</script>

<script type="text/javascript">

	function numberFormat(inputNumber) {
	   return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	
	$(function(){
		console.log("미니카트");
		$.ajax({
			url : '/ssmall/miniCart',
			dataType : 'json',
			success : function(data){
				console.log(data);
				var totalprice = 0;			
				var itemcount = 0;
				
				$.each(data, function(key, value){
					totalprice = totalprice + value.c_grandtotal;
					itemcount += 1;
					var tag = "";
					tag = tag + "<ul class='header-cart-wrapitem w-full'>";
					tag = tag + "<li class='header-cart-item flex-w flex-t m-b-12'>";
					tag = tag + "<div class='header-cart-item-img'>";
					tag = tag + "<img src='productimage/" + value.i_name +"' alt='IMG'>";
					tag = tag + "</div>";
					tag = tag + "<div class='header-cart-item-txt p-t-8'>";
					tag = tag + "<a href='productDetail?p_number=" + value.p_number + "' class='header-cart-item-name m-b-18 hov-cl1 trans-04'>";
					tag = tag + value.p_description + " x " + value.c_amount;
					tag = tag + "</a>";
					tag = tag + "<span class='header-cart-item-info'>";
					tag = tag + numberFormat(value.c_grandtotal)+"원";
					tag = tag + "</span></div></li>";
					
					
				
					$("#miniCart").append(tag);
					
				})
				
				var tag2 = "";
				tag2 = tag2 + "<div class='header-cart-total w-full p-tb-40'>"
				tag2 = tag2 + "Total: "+numberFormat(totalprice) + "원";
				tag2 = tag2 + "</div>"
				tag2 = tag2 + "<div class='header-cart-buttons flex-w w-full'>";
				tag2 = tag2 + "<a href='cartView' class='flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10'>";
				tag2 = tag2 + "View Cart </a></div>";
				
				$("#total").append(tag2);
				
				$(document).ready(function () {

					$('#count').attr('data-notify', itemcount);

			    });
				
				
				
			}
		})
	})
</script>
<script>

	function numberFormat(inputNumber) {
	   return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

$(function(){
	console.log("멈xka");
	$.ajax({
		url : '/ssmall/productViewAjax',
		type : 'get',
		dataType : 'json',
		error : function(request, status, error) {
            console.log(request.responseText);
            console.log(error);
            console.log(this.url);
        },           
		success : function(data){
			
			console.log(data);
			console.log("ajax성공");
		$.each(data, function(key, data){
			var tag="";
				tag = tag + "<div  class='col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item"+data.p_category+"' >";
					tag = tag + "<div class='block2'>";
					tag = tag + "<div class='block2-pic hov-img0'>";
					tag = tag + "<img src='productimage/"+data.p_image+"' alt='IMG-PRODUCT' width='300' height='300'>";
					tag = tag + "<a href='#' class='block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1'>Quick View</a>";

						tag = tag + "</div>";

						tag = tag + "<div class='block2-txt flex-w flex-t p-t-14'>";
						tag = tag + "<div class='block2-txt-child1 flex-col-l '>";
						tag = tag + "<a href='productDetail?p_number="+data.p_number+"' class='stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6'>";
						tag = tag + data.p_name;
						tag = tag + "</a>";
						tag = tag + "<span class='stext-105 cl3'>";
						tag = tag + numberFormat(data.p_price)+"원";
						tag = tag + "</span>";
						tag = tag + "</div>";
					tag = tag + "</div>";
					tag = tag + "</div>";
				tag = tag + "</div>";
			
			
			$("#productAjax").append(tag);
			
			});
		 
		}
       
	})
})	
				/* tag = tag + "<div class='row isotope-grid'>";
				tag = tag + "</div>"; */
	//검색 script
	
	
	
/* 	function setSearchTypeSelect(){
		var keyword = $('#keyword');

		$('#searchBtn').on('click',function(){
			var keywordVal = keyword.val();

			//검색어 입력 안했으면 검색창
			if(!keywordVal){
				alert("검색어를 입력하세요!");
				$('#keyword').focus();
				return;
			}
			var url = "productView?page=1"
				+ "&perPageNum=" + "${pageMaker.cri.perPageNum}"
				+ "&keyword=" + encodeURIComponent(keywordVal);
			window.location.href = url;
		})
	}*/
	
</script>

<%-- tag = tag+ "<fmt:formatNumber value='"+${data.p_price}+"' pattern='###,###,###'/>원"; --%>
</body>
</html>