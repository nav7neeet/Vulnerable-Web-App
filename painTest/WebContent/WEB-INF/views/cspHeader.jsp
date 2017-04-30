<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<meta http-equiv="refresh"
	content="<%=session.getMaxInactiveInterval()%>; url=<%= application.getContextPath() %>/sessionTimeOut">
</head>
<body>
		<%
			response.addHeader("Content-Security-Policy", "default-src 'self'; script-src 'self' 'nonce-12' 'sha256-4axlHpxgDbFzJObpXPFZgZhULrEGgJiud3OwxN9unHg='; style-src 'self'; img-src 'self'; media-src 'self' ;report-uri http://localhost:8080/painTest/restricted/patched/cspReport");
		%>

	</h3>
</body>
</html>
