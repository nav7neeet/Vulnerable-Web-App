<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

	<title>Login</title>
</head>
<body>
<h3>
				<font color="red">
						<%
							String message=(String)request.getAttribute("errorMessage");
							if(message!=null)
							{
								out.print(message);
							}
							
						%>
				</font>
		</h3>
		
<h3>
	Pain Testing App...:)  
</h3>
		
	<form action="j_security_check" method="post" autocomplete="on">
		User name - <input type="text" name="j_username"><br>
		Password - <input type="password" name="j_password">
		<input type="submit">
	</form>
</body>
</html>
