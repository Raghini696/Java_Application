<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dbConn.DbConnect" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hair & Styling</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<%@include file = "component/cssjs.jsp" %>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.stylist-images {
    background: url("images/salon.png");
	height: 100vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
<%@include file = "component/navbar.jsp" %>
<% Connection conn=DbConnect.getConn();%>
<div class="container-fulid stylist-images p-5">
		<p class="text-center fs-2 text-white"></p>
</div>

</body>
</html>