<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<title>Delete account</title>

</head>
<body>
	<h1>DELETE YOUR HR ACCOUNT </h1>
	
		<form:form action="processDelete" modelAttribute="user" method="GET">

			
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
						<td><input type="submit" value="Delete" onclick="if(!(confirm('Are you sure you want to delete you account?'))) return false"/></td>
					</tr>

				
				</tbody>
			</table>

		</form:form>
</body>

</html>