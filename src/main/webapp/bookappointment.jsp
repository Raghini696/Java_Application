<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@page import="dbConn.DbConnect" %>
<%@page import="db.StylistDetails" %>
<%@page import="entity.Stylist" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Appointment</title>
<%@include file="component/cssjs.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.stylist-images {
    width: 100%;
    background-size: cover;
}
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">

			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">Book An Appointment</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg}">
							<p class=" fs-4 text-center text-success">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<form class="row g-3" action="addAppointment" method="post">

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="fullname">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Appointment
									Date</label> <input id="appoint_date" type="date" class="form-control" required
									name="appoint_date">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label> <input
									required type="email" class="form-control" name="email">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone No</label> <input
									maxlength="10" required type="number" class="form-control"
									name="phno">
							</div>

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Stylist</label> <select
									required class="form-control" name="stylist">
									<option value="">--choose--</option>
									<%
									StylistDetails d = new StylistDetails(DbConnect.getConn());
									List<Stylist> list = d.getAllStylist();
									for (Stylist s : list) {
									%>
									<option value="<%=s.getId()%>"><%=s.getStylistName()%> 
									</option>
									<%
									}
									%>

								</select>
							</div>

							<c:if test="${empty userObj }">
								<a class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							</c:if>

							<c:if test="${not empty userObj }">
								<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script>  
		  $(function(){
			    var dtToday = new Date();
			    
			    var month = dtToday.getMonth() + 1;
			    var day = dtToday.getDate();
			    var year = dtToday.getFullYear();
			    if(month < 10)
			        month = '0' + month.toString();
			    if(day < 10)
			        day = '0' + day.toString();
			    
			    var maxDate = year + '-' + month + '-' + day;
			    $('#appoint_date').attr('min', maxDate);
			});
	</script>
	
</body>
</html>