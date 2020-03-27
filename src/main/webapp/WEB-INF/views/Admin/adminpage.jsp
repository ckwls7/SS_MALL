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
			<!-- SEARCH FORM -->
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" type="search"
						placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>
			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"><i
						class="fas fa-th-large"></i></a></li>
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
								<a href="/ssmall/admin/productList"><button class="dropbtn">상품</button></a>
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
							</div>
						</li>
						<li class="nav-item has-treeview">
							<div class="dropdown">
								<a href="/ssmall/admin/asList"><button class="dropbtn">AS</button></a>							
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
							<h1>게시판 관리</h1>
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
								<h3 class="card-title">게시판</h3>

								<div class="card-tools">
									<div class="input-group input-group-sm">
										<input type="text" class="form-control"
											placeholder="Search Mail">
										<div class="input-group-append">
											<div class="btn btn-primary">
												<i class="fas fa-search"></i>
											</div>
										</div>
									</div>
								</div>
								<!-- /.card-tools -->
							</div>
							<!-- /.card-header -->
							<div class="card-body p-0">
								<div class="mailbox-controls">
									<!-- Check all button -->
									<button type="button"
										class="btn btn-default btn-sm checkbox-toggle">
										<i class="far fa-square"></i>
									</button>
									<div class="btn-group">
										<button type="button" class="btn btn-default btn-sm">
											<i class="far fa-trash-alt"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-reply"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-share"></i>
										</button>
									</div>
									<!-- /.btn-group -->
									<button type="button" class="btn btn-default btn-sm">
										<i class="fas fa-sync-alt"></i>
									</button>
									<div class="float-right">
										1-50/200
										<div class="btn-group">
											<button type="button" class="btn btn-default btn-sm">
												<i class="fas fa-chevron-left"></i>
											</button>
											<button type="button" class="btn btn-default btn-sm">
												<i class="fas fa-chevron-right"></i>
											</button>
										</div>
										<!-- /.btn-group -->
									</div>
									<!-- /.float-right -->
								</div>
								<div class="table-responsive mailbox-messages">
									<table class="table table-hover table-striped">
										<tbody>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check1"> <label
															for="check1"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"></td>
												<td class="mailbox-date"><a href="#"><span
														style="float: right"><input type="button"
															value="수정"> </span><a /> <a href="#"><span
															style="float: right"><input type="button"
																value="삭제"> </span><a /> <a href="#"><span
																style="float: right"><input type="button"
																	value="바로가기"> </span><a /></td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check2"> <label
															for="check2"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star-o text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"><i
													class="fas fa-paperclip"></i></td>
												<td class="mailbox-date">28 mins ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check3"> <label
															for="check3"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star-o text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"><i
													class="fas fa-paperclip"></i></td>
												<td class="mailbox-date">11 hours ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check4"> <label
															for="check4"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"></td>
												<td class="mailbox-date">15 hours ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check5"> <label
															for="check5"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"><i
													class="fas fa-paperclip"></i></td>
												<td class="mailbox-date">Yesterday</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check6"> <label
															for="check6"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star-o text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"><i
													class="fas fa-paperclip"></i></td>
												<td class="mailbox-date">2 days ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check7"> <label
															for="check7"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star-o text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"><i
													class="fas fa-paperclip"></i></td>
												<td class="mailbox-date">2 days ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check8"> <label
															for="check8"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"></td>
												<td class="mailbox-date">2 days ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check9"> <label
															for="check9"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"></td>
												<td class="mailbox-date">2 days ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check10"> <label
															for="check10"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star-o text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"></td>
												<td class="mailbox-date">2 days ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check11"> <label
															for="check11"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star-o text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"><i
													class="fas fa-paperclip"></i></td>
												<td class="mailbox-date">4 days ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check12"> <label
															for="check12"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"></td>
												<td class="mailbox-date">12 days ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check13"> <label
															for="check13"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star-o text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"><i
													class="fas fa-paperclip"></i></td>
												<td class="mailbox-date">12 days ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check14"> <label
															for="check14"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"><i
													class="fas fa-paperclip"></i></td>
												<td class="mailbox-date">14 days ago</td>
											</tr>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check15"> <label
															for="check15"></label>
													</div>
												</td>
												<td class="mailbox-star"><a href="#"><i
														class="fas fa-star text-warning"></i></a></td>
												<td class="mailbox-name"><a href="read-mail.html">Alexander
														Pierce</a></td>
												<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> -
													Trying to find a solution to this problem...</td>
												<td class="mailbox-attachment"><i
													class="fas fa-paperclip"></i></td>
												<td class="mailbox-date">15 days ago</td>
											</tr>
										</tbody>
									</table>
									<!-- /.table -->
								</div>
								<!-- /.mail-box-messages -->
							</div>
							<!-- /.card-body -->
							<div class="card-footer p-0">
								<div class="mailbox-controls">
									<!-- Check all button -->
									<button type="button"
										class="btn btn-default btn-sm checkbox-toggle">
										<i class="far fa-square"></i>
									</button>
									<div class="btn-group">
										<button type="button" class="btn btn-default btn-sm">
											<i class="far fa-trash-alt"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-reply"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-share"></i>
										</button>
									</div>
									<!-- /.btn-group -->
									<button type="button" class="btn btn-default btn-sm">
										<i class="fas fa-sync-alt"></i>
									</button>
									<div class="float-right">
										1-50/200
										<div class="btn-group">
											<button type="button" class="btn btn-default btn-sm">
												<i class="fas fa-chevron-left"></i>
											</button>
											<button type="button" class="btn btn-default btn-sm">
												<i class="fas fa-chevron-right"></i>
											</button>
										</div>
										<!-- /.btn-group -->
									</div>
									<!-- /.float-right -->
								</div>
							</div>
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
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
