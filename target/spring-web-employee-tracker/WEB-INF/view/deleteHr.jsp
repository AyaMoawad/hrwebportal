<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<title>Delete account</title>

</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark sticky-top">
		<a class="navbar-brand" href="#">
   			 <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Logo" style="width:90px;">
 		</a>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link text-light" href="${pageContext.request.contextPath}/employee/home">Home</a></li>
			<li class="nav-item"><a class="nav-link text-light" href="${pageContext.request.contextPath}/employee/addEmployeeForm">Add
					employee</a></li>
	
		</ul>
		
	</nav>
	<br>
	<br>
	<div
		class="container-sm p-4 rounded-sm shadow-lg p-4 mb-4 bg-white" style="width:50%;">
	<h1 class="text-warning">DELETE YOUR HR ACCOUNT </h1>

	<form:form action="processDelete" modelAttribute="user" method="GET">
		<div class="form-group">
			<label>Email:</label>
			<form:input class="form-control" path="email" />
			<form:errors path="email" class="text-danger" />
			<br>
			
			<label>Password:</label>
			<form:input type="password" class="form-control"  path="password" />
			<form:errors path="password" class="text-danger" />
			<br>
			
			<input type="submit" 
				   value="Delete"
				   class="btn btn-success form-control"
				onclick="if(!(confirm('Are you sure you want to delete you account?'))) return false" />

		</div><br>
		
	</form:form></div>
</body>

</html>