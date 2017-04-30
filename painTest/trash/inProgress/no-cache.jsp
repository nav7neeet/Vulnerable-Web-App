<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-7">
<title>Checking cache control</title>
</head>
<body>
	Cache control - no cache
	<br>
	<%
		response.addHeader("Cache-Control","no-cache; max-age=1");
		System.out.println("no-cache");
	%>
	<a href="https://www.google.com">Google</a>
</body>
</html>