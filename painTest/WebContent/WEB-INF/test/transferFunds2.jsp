<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta >
	<title>Bank portal</title>
</head>
<% response.addHeader("X-Frame-Options", "deny"); %>
<body>
<h3>Bank portal</h3>
<form action="${pageContext.request.contextPath}/restricted/bank">
Enter amount to transfer: <input type="text"  name="amount" >
<input type="submit">
</form>
</body>
</html>
