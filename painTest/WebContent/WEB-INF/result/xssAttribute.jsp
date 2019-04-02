
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
	<title>XSS</title>
</head>
<body>
	<%
		response.setHeader("X-XSS-Protection", "0");
	%>
	<%
		String patched = (String) request.getAttribute("patched");
		if ("true".equals(patched)) out
				.print("<h4>User input inserted into HTML attribute after output encoding</h4> Check the page source to see the encoding..<br><br>");
		else
			out.print("<h4>User input inserted into HTML attribute without any output encoding</h4>");
	%>
	
	<br>
	
	<input type="textbox" maxlength="255" value="${requestScope.userInput}">

</body>
</html>
