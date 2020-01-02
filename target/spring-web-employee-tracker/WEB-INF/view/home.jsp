<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>EMPLOYEE HOME</title>

</head>
<body>

	<h1>WELCOME</h1>
	<div id="container">
		<div id="content">
			<input type="button" value="Add Employee"
				onclick="window.location.href='addEmployeeForm';return false;" />

			<br> <br>
			<!-- ADD THE TABLE -->
			<table>
				<tr>
					<th>First Name ||</th>
					<th>Last Name ||</th>
					<th>Email ||</th>
					<th>Update Employee ||</th>
					<th>Delete Employee ||</th>
				</tr>
				<!-- LOOP OVER THE EMPLOYEES -->
				<c:forEach var="tempEmployee" items="${employees}">
					<tr>
						<td>${tempEmployee.firstName}</td>
						<td>${tempEmployee.lastName}</td>
						<td>${tempEmployee.email}</td>
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
	
</body>



</html>