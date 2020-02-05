<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
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
	
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/homeScript.js">
	</script>	
<title>ADD EMPLOYEE</title>

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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/homeScript.js">
	</script>
	<br>
	<br>
	<div
		class="container-sm p-4 rounded-sm shadow-lg p-4 mb-4 bg-white" style="width:50%;">
		<h3 class="text-success">ADD EMPLOYEE</h3>

		<form:form  action="addEmployee" modelAttribute="employee" method="POST"
				enctype="multipart/form-data">

			<div class="form-group">
				
				<label for="email">First Name:</label>
				<form:input class="form-control" path="firstName" />
				<form:errors path="firstName" class="text-danger" />
				<br> 
				
				<label>Last name:</label>
				<form:input class="form-control" path="lastName" />
				<form:errors path="lastName" class="text-danger" />
				<br> 
				
				<label>Email:</label>
				<form:input class="form-control" path="email" />
				<form:errors path="email" class="text-danger" />
				<c:if test="${not empty msg_failed}">
                    <div class="errorblock text-danger">This mail is already added, try another! </div>
                </c:if> 
				<br> <br>
				
				<label>Salary:</label>
				<form:input class="form-control empSalary" path="employeeSalary" />
				<form:errors path="employeeSalary" class="text-danger" />
				<br>
				
				<label>Country:</label>
				<form:select class="form-control" path="country">
						<option>Egypt</option>
						<option>USA</option>
						<option>Germany</option>				
				</form:select>
				<br> <br> 
				
				<label>Photo:</label>
				<form:input  id="file" type ="file" class="form-control" path="photo" />
				<br> <br>
				
				<label>Job title:</label>
				<form:input class="form-control" path="jobTitle" />
				<form:errors path="jobTitle" class="text-danger" />
				<br> <br>
				
				<label>Job description:</label>
				<form:input class="form-control" path="jobDiscription" />
				<form:errors path="jobDiscription" class="text-danger" />
				<br> <br>
				
				<label>Date of birth:</label>
				
				<form:input  class="form-control" path="dateOfBirth" />
				<form:errors path="dateOfBirth" class="text-danger" />
				<br> <br>
				
				<label>Date of hiring:</label>
				<form:input  class="form-control" path="dateOfHiring" />
				<form:errors path="dateOfHiring" class="text-danger" />
				<br> <br>
				
				<label>Address:</label>
				<form:input class="form-control" path="address" />
				<form:errors path="address" class="text-danger" />
				<br> <br>
				
				<input type="submit"
					class="btn btn-success btn-block addEmployee"
					value="ADD EMPLOYEE" /> <br> <br>
			</div>
			
		</form:form>
	</div>

</body>

</html>