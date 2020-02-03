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
<title>EMPLOYEE PROFILE</title>

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
	<br><br>

	<div class="container-sm p-4 rounded-sm shadow-lg p-4 mb-4 bg-white pre-scrollable">
		<div class="card">
			<div class="card-header">
				<h3 class="text-info">This is the data of employee number ${employee.id}</h3>
			</div>
			<div class="card-body">
			<div class="row">
			<div class="col-sm-4 bg-light">
			
			
			</div>
		
			<div class="col-sm-8 bg-dark">
				<ul>
					<li class="text-light">First name:  ${employee.firstName}</li>
					<li class="text-light">Last name:   ${employee.lastName}</li>
					<li class="text-light">Email address:  ${employee.email}</li>
					<li class="text-light">Country:   ${employee.country}</li>
					<li class="text-light">Address:   ${employee.address}</li>
					<li class="text-light">Job Description:  ${employee.jobDiscription}</li>
					<li class="text-light">Job Title :   ${employee.jobTitle}</li>
				</ul>
			</div>
			</div></div>
			<div class="card-footer">
			<c:url var="updateLink" value="/employee/showFormForUpdate">
			<c:param name="employeeId" value="${employee.id}"></c:param>
			</c:url>
			<h3 class="text-light"><a href="${updateLink}"> Update Employee </a></h3>
						
			<c:url var="deleteLink" value="/employee/deleteEmployee">
			<c:param name="employeeId" value="${employee.id}"></c:param>
			</c:url>
						
			<h3 class="text-danger "><a href="${deleteLink}"
			onclick="if(!(confirm('Are you sure you want to delete that account?'))) return false">
			Delete Employee</a></h3>
			
			</div>
		</div>		
	
			</div>
			<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/homeScript.js">
			</script>
		<div class="container-sm p-4 rounded-sm shadow-lg p-4 mb-4 bg-white pre-scrollable">
			<div class="row">
				<div class="col-sm-4 text-center">
				<h4 class="text-center">Employee Salary:</h4>
				<h4 class="text-center empSalary">"${employee.employeeSalary} $"</h4>
				</div>
				<div class="col-sm-8 text-center">
				<h4 class="text-center">Total Salary Cost:</h4>
				<h4 class="text-center totalEmpSalary">"250000$"</h4>
				</div>
			</div>
		
		</div>

	
	</body>

</html>
	
	
	
	
	