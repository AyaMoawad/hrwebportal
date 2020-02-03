<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>EMPLOYEE HOME</title>

</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark sticky-top">
		<a class="navbar-brand" href="#"> 
		<img src="${pageContext.request.contextPath}/resources/images/logo.png"
			alt="Logo" style="width: 90px;">
		</a>
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link text-light"
				href="${pageContext.request.contextPath}/employee/home">
				Home</a>
			</li>
			<li class="nav-item">
				<a class="nav-link text-light"
				href="${pageContext.request.contextPath}/employee/addEmployeeForm">
				Add employee</a>
			</li>
			
		</ul>
		
	</nav>
	<br>
	<br>
	<div class="container-sm p-4 rounded-sm shadow-lg p-4 mb-4 bg-white">
		<h3 class="text-info">Your Table Of Employees:</h3>
		<br>
			<!-- ADD THE TABLE -->
			<div class="table-responsive">
			<table class="table table-dark">
				<tr>
					<th width="18%" class="text-center">First Name      </th>
					<th width="18%" class="text-left">Last Name  </th>
					<th width="34%" class="text-center">Email      </th>
					<th width="15%" class="text-center">Update Employee   </th>
					<th width="15%" class="text-center">Delete Employee   </th>
				</tr>
			</table>
			</div>
			<div class="table-responsive pre-scrollable">
			    <table class="table table-striped table-hover table-light">
				<!-- LOOP OVER THE EMPLOYEES -->
				<c:forEach var="tempEmployee" items="${employees}">
				
					<c:url var="profileLink" value="/employee/showEmployeeProfile">
							<c:param name="employeeId" value="${tempEmployee.id}"></c:param>
					</c:url>
					<tr class='clickable-row allEmployees' data-href="${profileLink}" data-id="${tempEmployee.id}" data-salary="${tempEmployee.employeeSalary}">
					    
						<td class="text-center">${tempEmployee.firstName}</td>
						<td class="text-center">${tempEmployee.lastName}</td>
						<td class="text-center">${tempEmployee.email}</td>
				
						<c:url var="updateLink" value="/employee/showFormForUpdate">
							<c:param name="employeeId" value="${tempEmployee.id}"></c:param>
						</c:url>
						<td class="text-center"><a href="${updateLink}"> Update </a></td>
						
						<c:url var="deleteLink" value="/employee/deleteEmployee">
							<c:param name="employeeId" value="${tempEmployee.id}"></c:param>
						</c:url>
						
						<td class="text-center"><a href="${deleteLink}"
							onclick="if(!(confirm('Are you sure you want to delete you account?'))) return false">
								Delete </a></td>
						
					</tr>				
					
					
				</c:forEach>
			</table>
			</div>
		</div>

	<br>
	<br>
	<br>
	<a href="${pageContext.request.contextPath}/employee/deleteHr">
		DELETE MY ACCOUNT </a>
	<br>
	<br>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/homeScript.js">
	</script>
</body>



</html>