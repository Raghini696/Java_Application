<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbConn.DbConnect"%>
<%@page import="db.UserDetails" %>
<%@page import="db.AppointmentDetails" %>
<%@page import="db.StylistDetails" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@include file = "../component/cssjs.jsp" %>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
</head>
<body>
<%@include file = "navbar.jsp" %>


	<div class="container p-5">
		<p class="text-center fs-3">Admin Dashboard</p>
		<%
		UserDetails d = new UserDetails(DbConnect.getConn());
		%>
		<%
		AppointmentDetails a = new AppointmentDetails(DbConnect.getConn());
		%>
		<%
		StylistDetails s = new StylistDetails(DbConnect.getConn());
		%>
		
		<div class="row">
			
			<div class="col-md-4">
			<a style="text-decoration:none;" href="stylist.jsp">
				<div class="card paint-card " >
					<div class="card-body text-center text-success">
						<i class="fas fa-hand-scissors-o fa-3x" aria-hidden="true"></i>
						<p class="fs-4 text-center">
							Stylist <br>
							<%=s.countStylist()%>
						</p>
					</div>
				</div>
			</a>
				

			</div>
			
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							User <br>
							<%=d.countUser()%>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment  <br>
							<%=a.countAppointment()%>
						</p>
					</div>
				</div>
			</div>
			
			

		</div>
	</div>

</body>
</html>