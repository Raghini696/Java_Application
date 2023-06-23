<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		
		<c:if test="${empty userObj }">
		<a class="navbar-brand" href="index.jsp">Hair & Styling ltd.</a>
		</c:if>

		<c:if test="${not empty userObj }">
		<a class="navbar-brand" href="userdashboard.jsp">Hair & Styling ltd.</a>
		</c:if>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="adminlogin.jsp">Admin</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="userlogin.jsp">User</a></li>

				</c:if>

				<c:if test="${not empty userObj }">
					<div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user"></i> ${userObj.fullName }
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="userLogout">Logout</a></li>				
						</ul>
					</div>

				</c:if>

			</ul>
		</div>
	</div>
</nav>