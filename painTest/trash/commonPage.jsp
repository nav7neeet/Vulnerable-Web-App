
<%@ page session="true"%>
<html>
<head>
<meta http-equiv="refresh"
	content="<%=session.getMaxInactiveInterval()%>; url=<%= application.getContextPath() %>/sessionTimeOut">

</head>
<body>
	<h3>
		<p>
			 <a	href="<%= application.getContextPath() %>/restricted/home">Home</a>
		</p>
		Hi, Welcome to the world of fantasies and fairy-tales!!<br>
		
	</h3>
</body>
</html>
