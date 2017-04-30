<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

	<title>Session time out..</title>
</head>
<body>
<br><br>
<h3>Session timed out due to inactivity.</h3>
<br><br>
<a href="<%= application.getContextPath() %>/public/home">click here to login again</a>
</body>
</html>
