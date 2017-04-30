<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-7">
<title>Checking cache control</title>
</head>
<body>
	Cache control - no store
	<br>
	<%
		response.addHeader("Cache-Control", "no-store");
		System.out.println("no-store");
	%>
</body>
<a href="https://www.google.com">Google</a>
</html>