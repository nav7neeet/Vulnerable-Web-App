<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-7">
<title>Checking cache control</title>
</head>
<body>
	Cache control - Cached in browser..
	<br>
	<%
		//response.addHeader("Cache-Control", "max-age=60000");
		System.out.println("cached");
	%>
</body>
</html>