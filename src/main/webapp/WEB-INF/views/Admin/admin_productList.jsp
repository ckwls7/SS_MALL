<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>상승몰 관리자 페이지</title>

<!-- Bootstrap core CSS -->
<!-- IonIcons -->
<link rel="icon" type="image/png" href="/ssmall/images/icons/productlogo.png"/>
<link rel="stylesheet" href="/ssmall/css/OverlayScrollbars.min.css">

<link rel="stylesheet" href="/ssmall/css/sidemenu.css">

<link rel="stylesheet" href="/ssmall/css/adminpage.css">

<!-- Theme style -->
<link rel="stylesheet" href="/ssmall/css/adminlte.min.css">

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700">

<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/ssmall/css/util.css">	
<!--===============================================================================================-->

<style>
.dropdown button {
	display: block; /* table */
	width: 230px;
	height: 50px;
	color: #fff;
	background-color: #585858;
	border: none;
}

.dropdown {
	position: relative;
	display: inline-block;
	padding: 12px 0px
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #585858;
	min-width: 160px;
	z-index: 1;
	width: 200%;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>



</head>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<nav class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->

			<!-- SEARCH FORM -->
			<form class="form-inline ml-3" action="/ssmall/admin/productSearch">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" name="search" type="search" placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>

		</nav>
		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4" style="position: fixed;">
			<!-- Brand Logo -->
			<img src="/ssmall/images/logo.png" alt="logo" class="brand-image img-circle elevation-3">
			
			<a href="/ssmall/admin/adminpage">
				<h3 class="brand-text font-weight-light" style="color:white; display: inline;">상승몰 관리자</h3>
			</a>
			
			

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">					
					<div class="info">
						
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">							
						<li class="nav-item has-treeview">
							<div class="dropdown">
								<a href="/ssmall/admin/memberList"><button class="dropbtn">회원관리</button></a>							
							</div>
						</li>
						<li class="nav-item has-treeview">
							<div class="dropdown">
								<a href="/ssmall/admin/productList"><button class="dropbtn" style="font-weight: bold;">상품</button></a>
								<div class="dropdown-content" >
								    <a href="/ssmall/admin/productList">상품 목록</a>
								    <a href="/ssmall/admin/addProduct">상품 등록</a>
								 </div>															
							</div>
						</li>
						<li class="nav-item has-treeview">
							<div class="dropdown">
								<a href="/ssmall/admin/noticeList"><button class="dropbtn">공지사항</button></a>
								<div class="dropdown-content">
									<a href="/ssmall/admin/noticeList">공지사항 목록</a>
									<a href="/ssmall/admin/noticeWrite">공지사항 작성</a>							
								</div>
							</div>
						</li>
						<li class="nav-item has-treeview">
							<div class="dropdown">
								<a href="/ssmall/admin/requestList"><button class="dropbtn">1:1문의</button></a>
								<div class="dropdown-content">							

									<a href="/ssmall/admin/requestList">답변완료된 1:1문의 목록</a>
									<a href="/ssmall/admin/unAnsweredrequestList">답변미완료된 1:1문의 목록</a>							

								</div>
							</div>
						</li>
						<li class="nav-item has-treeview">
							<div class="dropdown">
								<a href="/ssmall/admin/asList"><button class="dropbtn">A/S요청</button></a>
								<div class="dropdown-content">
									<a href="/ssmall/admin/asList">답변완료된 A/S요청 목록</a>
									<a href="/ssmall/admin/unAnsweredasList">답변미완료된 A/S요청 목록</a>							
								</div>
							</div>
						</li>		
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
		    <!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>상품 목록</h1>
						</div>
										
					</div>					
				</div>			
			</section>
	
			<!-- Main content -->
			<section class="content style=">
				<div class="row">
					<!-- /.col -->
					<div class="col-md-12">
						<div class="card card-primary card-outline">
							
							<div class="card-body p-0">
								<div class="mailbox-controls">		
									
									
									<div class="table-responsive mailbox-messages">
										<c:choose>
											<c:when test="${search[0] != NULL }">
												<table class="table table-list-search">
													<tr>
														<th></th>
														<th style="text-align: center;">상품 명</th>
														<th style="text-align: center;">상품 브랜드</th>
														<th style="text-align: center;">상품 가격</th>
														<th style="text-align: center;">상품 재고</th>
														<th style="text-align: center;">상품 판매량</th>
														<th style="text-align: center;">상품 종류</th>
													</tr>										
													<c:forEach items="${search}" var="search">
														<c:choose>
															<c:when test="${search.p_enabled == 0 }">
																<tr>
																	<td style="text-align: center; background-color:#d3d3d3;">
																		<a href="/ssmall/productDetail?p_number=${search.p_number}">
																			<img src="/ssmall/productimage/${search.p_image}" alt="No Image" width="100px" height="100px">
																		</a>
																	</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${search.p_name}</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${search.p_brand}</td>						
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;"><fmt:formatNumber value="${search.p_price}" pattern="###,###,###" />원</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${search.p_stock}</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${search.p_amount}</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${search.p_category}</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">
																		<a href="/ssmall/admin/productModify?p_number=${search.p_number}" style="color:black;"><i class="fas fa-pen-square"></i> 수정</a>
																	
																	</td>												
																</tr>
															</c:when>													
															<c:otherwise>
																<tr>
																	<td style="text-align: center;">
																		<a href="/ssmall/productDetail?p_number=${search.p_number}">
																			<img src="/ssmall/productimage/${search.p_image}" alt="No Image" width="100px" height="100px">
																		</a>
																	</td>
																	<td style="text-align: center; vertical-align: middle;">${search.p_name}</td>
																	<td style="text-align: center; vertical-align: middle;">${search.p_brand}</td>						
																	<td style="text-align: center; vertical-align: middle;"><fmt:formatNumber value="${search.p_price}" pattern="###,###,###" />원</td>
																	<td style="text-align: center; vertical-align: middle;">${search.p_stock}</td>
																	<td style="text-align: center; vertical-align: middle;">${search.p_amount}</td>
																	<td style="text-align: center; vertical-align: middle;">${search.p_category}</td>
																	<td style="text-align: center; vertical-align: middle;">
																		<a href="/ssmall/admin/productModify?p_number=${search.p_number}" style="color:black;"><i class="fas fa-pen-square"></i> 수정</a>																
																	</td>												
																</tr>
															</c:otherwise>
														</c:choose>												
													</c:forEach>													
												</table>
											</c:when>
										
											<c:when test="${list[0] == NULL}">
												<script>
														alert("상품이 없습니다. 상품을 추가해주세요");
												</script>
												<table class="table table-list-search">
													<h3>상품이 없습니다.</h3>
												</table>
	
											</c:when>
											<c:otherwise>
												<table class="table table-list-search">
													<tr>
														<th></th>
														<th style="text-align: center;">상품 명</th>
														<th style="text-align: center;">상품 브랜드</th>
														<th style="text-align: center;">상품 가격</th>
														<th style="text-align: center;">상품 재고</th>
														<th style="text-align: center;">상품 판매량</th>
														<th style="text-align: center;">상품 종류</th>
													</tr>										
													<c:forEach items="${list}" var="list">
														<c:choose>
															<c:when test="${list.p_enabled == 0}">
																<tr>
																	<td style="text-align: center; background-color:#d3d3d3;">
																		<a href="/ssmall/productDetail?p_number=${list.p_number}">
																			<img src="/ssmall/productimage/${list.p_image}" alt="No Image" width="100px" height="100px" style="">
																		</a>
																	</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${list.p_name}</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${list.p_brand}</td>						
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;"><fmt:formatNumber value="${list.p_price}" pattern="###,###,###" />원</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${list.p_stock}</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${list.p_amount}</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">${list.p_category}</td>
																	<td style="text-align: center; vertical-align: middle; background-color:#d3d3d3;">
																		<a href="/ssmall/admin/productModify?p_number=${list.p_number}" style="color:black;"><i class="fas fa-pen-square"></i> 수정</a>
																		
																	</td>												
																</tr>													
															</c:when>
															<c:otherwise>
																<tr>
																	<td style="text-align: center;">
																		<a href="/ssmall/productDetail?p_number=${list.p_number}">
																			<img src="/ssmall/productimage/${list.p_image}" alt="No Image" width="100px" height="100px">
																		</a>
																	</td>
																	<td style="text-align: center; vertical-align: middle;">${list.p_name}</td>
																	<td style="text-align: center; vertical-align: middle;">${list.p_brand}</td>						
																	<td style="text-align: center; vertical-align: middle;"><fmt:formatNumber value="${list.p_price}" pattern="###,###,###" />원</td>
																	<td style="text-align: center; vertical-align: middle;">${list.p_stock}</td>
																	<td style="text-align: center; vertical-align: middle;">${list.p_amount}</td>
																	<td style="text-align: center; vertical-align: middle;">${list.p_category}</td>
																	<td style="text-align: center; vertical-align: middle;">														
																		<a href="/ssmall/admin/productModify?p_number=${list.p_number}" style="color:black;"><i class="fas fa-pen-square"></i> 수정</a>
																		<br>																																						
																	</td>											
																</tr>
															</c:otherwise>
														</c:choose>								
													</c:forEach>													
												</table>
												
												<nav aria-label="Page navigation example">
													<ul class="pagination m-5 flex-c-m">				
														<c:if test="${pageMaker.prev}"><!--pageMaker.getprev출력, 트루이게되면 링크를걸음 -->
															<li class="page-item"><a class="page-link" aria-label="Previous" href="/ssmall/admin/productList${pageMaker.makeQuery(pageMaker.startPage - 1)}">«</a></li>
															<!--get방식의 key value를 넘김, 함수를 다이렉트로 추출하는 소스(직접호출) -->
														</c:if>
														<!-- var="idx"하게되면 1씩증가  -->								
														<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
															<c:out value="${pageMaker.cri.page == idx?'':''}" />
															<li class="page-item"><a class="page-link" href="/ssmall/admin/productList${pageMaker.makeQuery(idx)}">${idx}</a></li>
														</c:forEach>
								
														<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
																<li class="page-item"><a class="page-link" href="/ssmall/admin/productList${pageMaker.makeQuery(pageMaker.endPage +1) }">»</a></li>
														</c:if>
														
													</ul>
													
												</nav>		
																														
											</c:otherwise>
																				
										</c:choose>											
									</div>
								</div>								
							</div>						
						</div>						
					</div>				
				</div>				
			</section>	
		</div>
		<footer class="main-footer">
			<strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io.</a>
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.0.2
			</div>
		</footer>		
	</div>
</body>


</html>
