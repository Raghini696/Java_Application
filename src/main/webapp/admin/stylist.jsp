<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbConn.DbConnect" %>
<%@page import="db.StylistDetails" %>
<%@page import="entity.Stylist" %>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stylist</title>
<%@include file = "../component/cssjs.jsp" %>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
</head>
<body>
<%@include file = "navbar.jsp" %>
<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-5">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Stylist</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg}">
							<div class="fs-3 text-center text-success" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<form action="../addStylist" method="post">
							<div class="mb-3">
								<label>Stylist Name</label> <input type="text"
								name="stylistName" class="form-control" required>
							</div>							

							<div class="mb-3">
								<label>Phone Number</label> <input type="text"
								name="phoneNum" class="form-control" required>
							</div>

							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>	
			<div class="col-md-7">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Stylist Details</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Id</th>
									<th scope="col">Stylist Name</th>
									<th scope="col">Phone Number</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
							<%
							StylistDetails d = new StylistDetails(DbConnect.getConn());
								List<Stylist> list2 = d.getAllStylist();
								for (Stylist s : list2) {
								%>
								<tr>
									<td><%=s.getId()%></td>
									<td><%=s.getStylistName()%></td>
									<td><%=s.getPhoneNumber()%></td>
									<td>
										<a
										href="../deleteStylist?id=<%=s.getId()%>"
										class="btn btn-sm btn-danger">Delete</a></td>
								</tr>
								<%
								}
								%>



							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>