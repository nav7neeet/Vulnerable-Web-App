<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
</head>
<script type="text/javascript">

	var pos = document.URL.indexOf("default="); //finds the position of value 
	var userInput = document.URL.substring(pos, document.URL.length); //copy the value into userInput variable
	var x = "${requestScope.patched }";
	if (x === "true")
	{
		document.write(escape(userInput)); //writes content to the webpage
	}
	document.write(unescape(userInput)); //writes content to the webpage
	
</script>

<body>
	<%
		response.setHeader("X-XSS-Protection", "0");
	%>
	<%
		String patched = (String) request.getAttribute("patched");
		if ("true".equals(patched))
			out.print(
					"<h4>User input inserted into the JS DOM after output encoding Lolz..</h4> Check the page source to see the encoding..<br><br>");
		else
			out.print("<h4>User input inserted into the JS DOM without any output encoding Lolz..</h4>");
	%>
</body>
</html>
