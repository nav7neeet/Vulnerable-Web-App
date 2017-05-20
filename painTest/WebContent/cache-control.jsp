<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-7">
<title>Checking cache control</title>
</head>
<body>
	Cache control test. Click on Google and then come back to check cache control. 
	<br>
	<%
		System.out.println("no-cache");
		/* response.addHeader("Cache-Control","no-cache"); */
		/* response.addHeader("Cache-Control", "no-store"); */
		/* response.addHeader("Cache-Control", "max-age=10"); */
		response.addHeader("Cache-Control", "max-age=10");
	%>
	<a href="https://www.google.com">Google</a>
</body>
</html>