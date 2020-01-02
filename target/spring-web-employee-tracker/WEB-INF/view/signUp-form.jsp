<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<title>SIGN UP FORM</title>
<style type="text/css">
.error{ color: red}
</style>
</head>
<body>

		<h3>SIGN UP A NEW HR ACCOUNT</h3>
	
		<form:form action="saveUser" modelAttribute="user" method="GET">

			
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
						<td><input type="submit" value="Save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>









</body>
</html>