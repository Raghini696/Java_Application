<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbConn.DbConnect" %>
<%@page import="db.AppointmentDetails" %>
<%@page import="entity.BookAppointment" %>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Appointment</title>
<%@include file = "../component/cssjs.jsp" %>
</head>
<body>
<%@include file = "navbar.jsp" %>
<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Appointments</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Id</th>
									<th scope="col">Full Name</th>
									<th scope="col">Email</th>
									<th scope="col">Phone Number</th>
									<th scope="col">Stylist ID</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Status</th>
								</tr>
							</thead>
							<tbody>
							<%
							AppointmentDetails d = new AppointmentDetails(DbConnect.getConn());
								List<BookAppointment> list2 = d.getAllAppointment();
								for (BookAppointment s : list2) {
								%>
								<tr>
									<td><%=s.getId()%></td>
									<td><%=s.getFullName()%></td>
									<td><%=s.getEmail()%></td>
									<td><%=s.getPhNo()%></td>
									<td><%=s.getStylistId()%></td>
									<td><%=s.getAppoinDate()%></td>
									<td><%=s.getStatus()%></td>
									
								</tr>
								<%
								}
								%>



							</tbody>
						</table>

					</div>
				</div>
			</div>
</body>
</html>