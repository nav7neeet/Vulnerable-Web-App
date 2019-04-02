<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-7">
<title>CSRF</title>
</head>
<!--  -->
<body>
Hi, how r you...

<a href="http://127.0.0.1:8080/painTest/test2.jsp">test2</a>
</body>

<% response.setHeader("Accept-Ranges", "bytes"); %>
<input type="textbox" name="header" size="115" maxlength="255" value="h" onmouseover=alert('xss') ">

</html>