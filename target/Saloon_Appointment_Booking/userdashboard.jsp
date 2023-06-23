<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/cssjs.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("images/haircut.jpg");
	height: 100vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="container p-5">
		<p class="text-center fs-3">User Dashboard</p>
		
		<div class="row">
			
			<div class="col-md-6">
				<a style="text-decoration:none;" href="bookappointment.jsp">
					<div class="card paint-card " >
						<div class="card-body text-center text-success">
							<i class='fas fa-stopwatch fa-3x'></i><br>
							<p class="fs-4 text-center">
								Book An Appointment
							</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class='fa fa-eye fa-3x'></i><br>
						<p class="fs-4 text-center">
							View Appointment
						</p>
					</div>
				</div>
			</div>
			

		</div>
	</div>
</body>
</html>