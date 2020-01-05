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

			<form:form action="addEmployeeForm" modelAttribute="user"
				method="GET">
				<input type="submit" value="Add Employee" />
			</form:form>

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
						<c:url var="updateLink" value="/employee/showFormForUpdate">
							<c:param name="employeeId" value="${tempEmployee.id}"></c:param>
						</c:url>
						<td><a href="${updateLink}"> Update </a></td>
						
						<c:url var="deleteLink" value="/employee/deleteEmployee">
							<c:param name="employeeId" value="${tempEmployee.id}"></c:param>
						</c:url>
						
						<td><a href="${deleteLink}"
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

</body>



</html>