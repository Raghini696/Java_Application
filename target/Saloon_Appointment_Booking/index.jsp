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
</head>
<body>
<%@include file = "component/navbar.jsp" %>
<% Connection conn=DbConnect.getConn();
out.print(conn);%>

</body>
</html>