<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test XSS DOM</title>
</head>
<script type="text/javascript">
	//finds the position of userinput
	var pos = document.URL.indexOf("userinput=");
	var userInput = document.URL.substring(pos, document.URL.length); 
	var path = "${param.param}";
	document.write("<h3>Demystify XSS DOM</h3>");
	if (path === "patched")
	{	
		document.write("<h4>User input inserted into JS DOM after output encoding</h4>");
		document.write(escape(userInput));
	}
	else
	{
		document.write("<h4>User input inserted into JS DOM without any output encoding</h4>")
		document.write(unescape(userInput));
	}
</script>

<body>
	<%
		response.setHeader("X-XSS-Protection", "0");
	%>
</body>
</html>
