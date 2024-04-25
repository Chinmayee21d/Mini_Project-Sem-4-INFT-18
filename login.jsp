<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Secured Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="lgn_tmp/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lgn_tmp/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lgn_tmp/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lgn_tmp/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lgn_tmp/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="lgn_tmp/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lgn_tmp/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lgn_tmp/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="lgn_tmp/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lgn_tmp/css/util.css">
	<link rel="stylesheet" type="text/css" href="lgn_tmp/css/main.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #FFFFFF;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form method="post" action="loginchk.jsp" class="login100-form validate-form">
					<span class="login100-form-title p-b-43">
						Secured Login
					</span>
					
					
				  <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input autocomplete="off" class="input100" type="text" name="uname">
					  <span class="focus-input100"></span>
					  <span class="label-input100">Email</span>
					</div>
					
					
				  <div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="pass">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						

						<div>
							<a href="fpass1.jsp" class="txt1">
								Forgot Password?
							</a>
						</div>
					</div>
			
					<div class="container-login100-form-btn">
						<button type="submit" name="Submit" class="login100-form-btn">
							Login
						</button>
					</div>
					<div class="text-center p-t-46 p-b-20">
						<span class="txt1">
							or 
						</span>
					</div>
					<div class="container-login100-form-btnn">
						<button onClick="window.location.href='user_regf.jsp'" class="login100-form-btnn">
							Register Yourself
						</button>
					</div>

					
				</form>

				<div class="login100-more" style="background-image: url(lgn_tmp/images/bg3.jpg)">
				</div>
			</div>
		</div>
	</div>
	
	

	
	
<!--===============================================================================================-->
	<script src="lgn_tmp/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="lgn_tmp/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="lgn_tmp/vendor/bootstrap/js/popper.js"></script>
	<script src="lgn_tmp/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="lgn_tmp/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="lgn_tmp/vendor/daterangepicker/moment.min.js"></script>
	<script src="lgn_tmp/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="lgn_tmp/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="lgn_tmp/js/main.js"></script>

</body>
</html>