<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<title>UPDATE EMPLOYEE</title>

</head>
<body>


		<h3>UPDATE EMPLOYEE</h3>
	
		<form:form action="updateEmployee" modelAttribute="employee" method="GET">

			<table>
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><form:input path="firstName" />
							<form:errors path="firstName" cssClass="error"/>
						</td>
					</tr>
				
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" />
						    <form:errors path="lastName" cssClass="error" />
						</td>
					</tr>
					
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" />
						    <form:errors path="email" cssClass="error" />
						</td>
					</tr>


					<tr>
						<td><label></label></td>
						<td><input type="submit" value="UPDATE" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>


</body>

</html>