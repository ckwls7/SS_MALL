<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" href="/ssmall/images/icons/productlogo.png"/>

<title>상승몰 관리자 페이지</title>

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">


<link rel="stylesheet" href="/ssmall/css/OverlayScrollbars.min.css">

<link rel="stylesheet" href="/ssmall/css/sidemenu.css">

<link rel="stylesheet" href="/ssmall/css/adll.min.css">

<link rel="stylesheet" href="/ssmall/css/bootstrap.css">

<link rel="stylesheet" href="/ssmall/css/icheck-bootstrap.min.css">

<link rel="stylesheet" href="/ssmall/css/fontawesome.min.css">

<link rel="stylesheet" href="/ssmall/css/adminpage.css">
<!-- Theme style -->
<link rel="stylesheet" href="/ssmall/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />




<style>
.dropdown button {
	display: block;
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

span {
	display: table-cell;
	padding-left: 10px;
	text-align: left;
	vertical-align: middle;
}
</style>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="adminpage" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>
			
			
		</nav>
		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<img src="/ssmall/images/logo.png" alt="logo" class="brand-image img-circle elevation-3">
			
			<a href="/ssmall/admin/adminpage"><h3 class="brand-text font-weight-light" style="color:white; display: inline;">상승몰 관리자</h3></a>

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
								<button class="dropbtn" style="font-weight: bold;">상품</button>
								<div class="dropdown-content" >
								    <a href="/ssmall/admin/productList">상품 목록</a>
								    <a href="/ssmall/admin/addProduct">상품 등록</a>
								 </div>															
							</div>
						</li>
						<li class="nav-item has-treeview">
							<div class="dropdown">
								<button class="dropbtn" style="font-weight: bold;">공지사항</button>
								<div class="dropdown-content">
									<a href="/ssmall/admin/noticeList">공지사항 목록</a>
									<a href="/ssmall/admin/noticeWrite">공지사항 작성</a>							
								</div>
							</div>
						</li>
						<li class="nav-item has-treeview">
							<div class="dropdown">
								<button class="dropbtn" style="font-weight: bold;">1:1문의</button>
								<div class="dropdown-content">
									<a href="/ssmall/admin/requestList">답변완료된 1:1문의 목록</a>
									<a href="/ssmall/admin/unAnsweredrequestList">답변미완료된 1:1문의 목록</a>							
								</div>
							</div>
						</li>
						<li class="nav-item has-treeview">
							<div class="dropdown">
								<button class="dropbtn" style="font-weight: bold;">A/S요청</button>
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
							<h1>공지사항</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#"></a></li>
								<li class="breadcrumb-item"></li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content style=">
				<div class="row">
					<!-- /.col -->
					<div class="col-md-12">
						<div class="card card-primary card-outline">
							<div class="card-header">
								<h3 class="card-title">공지사항 리스트</h3>

								<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="modify" method="post">
			<input type="hidden" name="bId" value="${content_view.bId}">
			<tr>
				<td> 번호 </td>
				<td> ${content_view.bId} </td>
			</tr>
			<tr>
				<td> 히트 </td>
				<td> ${content_view.bHit} </td>
			</tr>
			<tr>
				<td> 이름 </td>
				<td> <input type="text" name="bName" value="${content_view.bName}"></td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="bTitle" value="${content_view.bTitle}"></td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" name="bContent" >${content_view.bContent}</textarea></td>
			</tr>
			<tr >
				<td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; <a href="noticeList">목록보기</a> &nbsp;&nbsp;</td>
			</tr>
		</form>
	</table>							
							</div>	
								</tbody>
									</table>								
								</div>								
							</div>														
						</div>					
					</div>
				</div>
			</section>
		</div>



		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- Main Footer -->
		<footer class="main-footer">
			<strong>Copyright &copy; 2014-2019 <a
				href="http://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.0.2
			</div>
		</footer>
	</div>
</body>
</html>