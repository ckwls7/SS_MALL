<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>상승몰</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="login/css/util.css">
<link rel="stylesheet" type="text/css" href="login/css/main.css">
<!--===============================================================================================-->
<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/bootstrap/js/popper.js"></script>
<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/daterangepicker/moment.min.js"></script>
<script src="login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="login/js/main.js"></script>



</head>
<body>

	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('login/images/bg-02.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				
				<form:form role="form" action="findPwEmail" method="POST">
					
					<div class="wrap-input100 validate-input m-b-23">
						<span class="label-input100">아이디</span>
						<input class="input100" type="text" placeholder="아이디 입력해주세요" name="m_id" >					
						<span class="focus-input100" data-symbol="&#xf206;"></span>					
					</div>

					<div class="wrap-input100 validate-input m-b-23">
						<span class="label-input100">이름</span> 
						<input class="input100" type="text" placeholder="이름 입력해주세요" name="m_name">
						<span class="focus-input100" data-symbol="&#xf206;"></span>				
					</div>
					
					<div class="wrap-input100 validate-input m-b-23">
						<span class="label-input100">이메일</span> 
						<input class="input100" type="email" placeholder="이메일 입력해주세요" name="m_email">
						<span class="focus-input100" data-symbol="&#xf206;"></span>				
					</div>
					<div style= "float: right;">	
						<button type="submit" name="submit" class="btn btn-link">비밀번호찾기</button>
					</div>
				</form:form>
				
			</div>
		</div>

		<div id="dropDownSelect1"></div>
	</div>

</body>
</html>