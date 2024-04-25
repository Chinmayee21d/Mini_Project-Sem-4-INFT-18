<title>Reset Password</title>
<%@page import="java.sql.*"%>
<%@page import="infotech.dbconnect"%>
<jsp:useBean id="s" class="infotech.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 String un=request.getParameter("uname");
 String sa=request.getParameter("sa");
 ResultSet rs=s.stm.executeQuery("Select * from login where username='"+un+"' and s_answer='"+sa+"'");
 if(!rs.next())
 {
  out.println("<script>alert('Invalid or Wrong Answer');history.back();</script>");
 }
 else
 {
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Register Yourself</title>
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
<jsp:include page="val.jsp"></jsp:include>	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form id="WFS_Riz" method="post" action="reset.jsp" class="login100-form validate-form">
				<input type="hidden" name="uname" value="<%=un%>">
					<span class="login100-form-title p-b-43">
						Reset Password
					</span>
					
					
					<div class="wrap-input100 validate-input" >
						<input class="input100" class="validate[required,custom[onlyLetter]]"  type="password" name="np">
						<span class="focus-input100"></span>
						<span class="label-input100">New Password</span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<input class="input100" class="validate[required,custom[onlyLetter]]"  type="password" name="cp">
						<span class="focus-input100"></span>
						<span class="label-input100">Old Password</span>
					</div>
					
					
                     			
<br><br>
					

					<div class="container-login100-form-btnnn">
						<button type="submit" name="Submit" class="login100-form-btnnn">
							Reset
						</button>
					</div>
					<br>
					<div class="flex-sb-m w-full p-t-3 p-b-32">
					<div>
							<a style="font-size:16px " href="index.jsp" class="txt1">
								Back to login-
							</a>
						</div>
					</div>
        
					
				</form>

				<div class="login100-more" style="background-image: url(lgn_tmp/images/bg2.jpg)">
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
<%
}
%>