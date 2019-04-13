<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
</head>
<script type="text/javascript">
	//finds the position of userinput
	var pos = document.URL.indexOf("userinput=");
	var userInput = document.URL.substring(pos, document.URL.length); 
	var x = "${param.path}";
	if (x === "patched")
	{	
		document.write(escape(userInput));
	}
	else
	{
		document.write(unescape(userInput));
	}
	
</script>

<body>
	<%
		response.setHeader("X-XSS-Protection", "0");
	%>
	<%
		String patched = (String) request.getParameter("path");
		if ("patched".equals(patched))
			out.print(
					"<h4>User input inserted into JS DOM after output encoding</h4> Check the page source to see the encoding..<br><br>");
		else
			out.print("<h4>User input inserted into JS DOM without any output encoding</h4>");
	%>
</body>
</html>
