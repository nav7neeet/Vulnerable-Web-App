<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-7">
<title>CORS</title>
<script >
	var httpRequest=new XMLHttpRequest();
	httpRequest.open("GET", "http://127.0.0.1:8080/painTest/test.jsp", false);
	httpRequest.send(null);
	alert(httpRequest.responseText);
</script>
</head>
<body>
	Cross origin resource sharing..
</body>
</html>