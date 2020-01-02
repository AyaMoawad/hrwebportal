<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<title>WEB EMPLOYEE DEMO APP</title>
<style type="text/css">
.error{ color: red}
</style>
</head>
<body>


		<h3>LOG IN :</h3>
	
		<form:form action="processForm" modelAttribute="user" method="GET">
	
			<table>
				<tbody>
					<tr>
						<td><label>Email</label></td>
						<td><form:input path="email" />
							<form:errors path="email" cssClass="error"/>
						</td>
					</tr>
				
					<tr>
						<td><label>Password</label></td>
						<td><form:input path="password" />
						    <form:errors path="password" cssClass="error" />
						</td>
					</tr>


					<tr>
						<td><label></label></td>
						<td><input type="submit" value="logIn" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>

<a href="${pageContext.request.contextPath}/employee/signUpForNewUser">SIGN UP</a>


</body>







</html>