<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test XSS DOM</title>
</head>

<script>
	//finds the position of input
	var pos = document.URL.indexOf("input=");
	var input = document.URL.substring(pos, document.URL.length); 
	var vulnerable = "${param.vulnerable}";

	if (vulnerable === "false")
	{	
		document.write("<h4>User input inserted into JS DOM after output encoding</h4>.");
		document.write(escape(input));
	}
	else
	{
		document.write("<h4>User input inserted into JS DOM without any output encoding</h4>.")
		document.write(unescape(input));
	}
</script>

<body>
	<%
		response.setHeader("X-XSS-Protection", "0");
	%>
</body>
</html>
