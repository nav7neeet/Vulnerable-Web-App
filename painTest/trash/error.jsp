<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Home</title>
</head>
<body>
		<h3>
				<font color="red">
						<%
							String message=(String)request.getAttribute("errorMessage");
							out.print(message);
						%>
				</font>
		</h3>
		<form action="home" method="post">
				User name - <input type="text" name="name"><br>
				Password - <input type="password" name="password"> <input
						type="submit"
				>
		</form>
</body>
</html>
